open class BaseMvpPresenter<View : MvpView> : MvpPresenter<View> {
    
    public func launch<T> (
        context: CoroutineContext = Dispatchers.IO,
        block: () -> T,
        onSuccess: (T) -> Unit = {},
        onError: (Error) -> Unit = {}
    ) -> Task {
        return Task {
            do {
                let result = block()
                DispatchQueue.main.async {
                    onSuccess(result)
                }
            } catch {
                DispatchQueue.main.async {
                    onError(error)
                }
            }
        }
    }
}
