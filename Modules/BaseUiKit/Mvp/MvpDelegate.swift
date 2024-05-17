public class MvpDelegate<View : MvpView> {
    
    private var view: View?
    private let presenterProvider: () -> MvpPresenter<View>
    private var presenter: MvpPresenter<View>? = nil
    private var isAttached: Bool = false
    
    fileprivate init(
        view: View?,
        presenterProvider: @escaping () -> MvpPresenter<View>
    ) {
        self.view = view
        self.presenterProvider = presenterProvider
    }
    
    func onCreate() {
        if (presenter == nil) {
            presenter = presenterProvider()
        }
    }
    
    func onAttach() {
        if (!isAttached) {
            if let view {
                presenter?.attachView(view: view)
                isAttached = true
            }
        }
    }
    
    func onDetach() {
        if (isAttached) {
            view = nil
            presenter?.detachView()
            isAttached = false
        }
    }
    
    func onDestroy() {
        presenter = nil
    }
}

extension MvpView {
    
    func mvpDelegate<View : MvpView>(_ presenterProvider: @escaping () -> MvpPresenter<View>) -> MvpDelegate<View> {
        return MvpDelegate<View>(
            view: self as? View,
            presenterProvider: presenterProvider
        )
    }
}
