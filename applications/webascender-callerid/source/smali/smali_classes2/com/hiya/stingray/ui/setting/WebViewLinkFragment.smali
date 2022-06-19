.class public Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;
.super Lcom/hiya/stingray/ui/common/i;
.source "SourceFile"


# instance fields
.field settingsWebView:Landroid/webkit/WebView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903ca
    .end annotation
.end field

.field shadow:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0903cb
    .end annotation
.end field

.field toolBar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09044d
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/ui/common/i;-><init>()V

    return-void
.end method

.method public static f1(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;->g1(Ljava/lang/String;ZLjava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static g1(Ljava/lang/String;ZLjava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "urlKey"

    .line 2
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "showAppBar"

    .line 3
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "title"

    .line 4
    invoke-virtual {v0, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/hiya/stingray/ui/common/i;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c0130

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/hiya/stingray/ui/common/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;->settingsWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 4
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 5
    invoke-virtual {p1, p2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;->settingsWebView:Landroid/webkit/WebView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 7
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;->settingsWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment$a;-><init>(Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;->toolBar:Landroidx/appcompat/widget/Toolbar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;->shadow:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "urlKey"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;->settingsWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const-string v0, "showAppBar"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;->toolBar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;->shadow:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    const-string p2, "title"

    .line 16
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    iget-object p2, p0, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;->toolBar:Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/e;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-static {p2, v0, p1}, Lcom/hiya/stingray/util/e0;->t(Landroidx/appcompat/widget/Toolbar;Landroid/app/Activity;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 18
    :cond_1
    new-instance p1, Lcom/hiya/stingray/exception/HiyaGenericException;

    invoke-direct {p1}, Lcom/hiya/stingray/exception/HiyaGenericException;-><init>()V

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "There was no url to load"

    invoke-static {p1, v0, p2}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;->settingsWebView:Landroid/webkit/WebView;

    new-instance p2, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment$b;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/setting/WebViewLinkFragment$b;-><init>(Lcom/hiya/stingray/ui/setting/WebViewLinkFragment;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method
