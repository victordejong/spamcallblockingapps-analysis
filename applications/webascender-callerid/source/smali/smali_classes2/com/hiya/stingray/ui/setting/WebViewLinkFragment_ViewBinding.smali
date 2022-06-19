.class public Lcom/hiya/stingray/ui/setting/WebViewLinkFragment_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private a:Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment_ViewBinding;->a:Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;

    .line 3
    const-class v0, Landroid/webkit/WebView;

    const v1, 0x7f0903ca

    const-string v2, "field \'settingsWebView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p1, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;->settingsWebView:Landroid/webkit/WebView;

    .line 4
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f09044d

    const-string v2, "field \'toolBar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;->toolBar:Landroidx/appcompat/widget/Toolbar;

    const v0, 0x7f0903cb

    const-string v1, "field \'shadow\'"

    .line 5
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p1, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;->shadow:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment_ViewBinding;->a:Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment_ViewBinding;->a:Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;

    .line 3
    iput-object v1, v0, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;->settingsWebView:Landroid/webkit/WebView;

    .line 4
    iput-object v1, v0, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;->toolBar:Landroidx/appcompat/widget/Toolbar;

    .line 5
    iput-object v1, v0, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;->shadow:Landroid/view/View;

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
