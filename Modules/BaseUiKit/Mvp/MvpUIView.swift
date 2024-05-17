import UIKit

open class MvpUIView<View: MvpView> : UIView {
    
    open func provideMvpDelegate() -> MvpDelegate<View> {
        fatalError("Mvp delegate not provided!")
    }
    
    private lazy var mvpDelegate: MvpDelegate<View> = {
        provideMvpDelegate()
    }()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        mvpDelegate.onCreate()
        mvpDelegate.onAttach()
    }
    
    deinit {
        mvpDelegate.onDetach()
        mvpDelegate.onDestroy()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
