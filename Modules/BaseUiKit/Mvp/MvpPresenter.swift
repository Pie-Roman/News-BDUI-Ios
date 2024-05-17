open class MvpPresenter<View : MvpView> {

    var view: View? {
        get { return _view }
    }

    private weak var _view: View? = nil
    private var isFirstLaunch = true

    open func onFirstViewAttach() {

    }

    open func attachView(view: View) {
        _view = view

        if (isFirstLaunch) {
            isFirstLaunch = false
            onFirstViewAttach()
        }
    }

    open func detachView() {
        _view = nil
    }
}
