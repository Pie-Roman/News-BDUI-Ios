import BaseUiKit

class DivkitPresenter : BaseMvpPresenter<DivkitMvpView> {
    
    private let viewArgs: DivkitViewArgs
    private let useCases: DivkitUseCases = instance()

    override func onFirstViewAttach() {
        super.onFirstViewAttach()

        view?.showLoading()
    }
}
