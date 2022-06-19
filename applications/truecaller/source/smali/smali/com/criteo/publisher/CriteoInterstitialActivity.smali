.class public Lcom/criteo/publisher/CriteoInterstitialActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/criteo/publisher/CriteoInterstitialActivity$b;
    }
.end annotation


# static fields
.field public static final synthetic f:I


# instance fields
.field public final a:Le/i/b/q2/h;

.field public b:Landroid/webkit/WebView;

.field public c:Landroid/os/ResultReceiver;

.field public d:Landroid/widget/FrameLayout;

.field public e:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->a:Le/i/b/q2/h;

    return-void
.end method

.method public static a(Lcom/criteo/publisher/CriteoInterstitialActivity;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "Action"

    const/16 v2, 0xc9

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object v1, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->c:Landroid/os/ResultReceiver;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 10

    .line 1
    sget v0, Lcom/criteo/publisher/R$layout;->activity_criteo_interstitial:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 2
    sget v0, Lcom/criteo/publisher/R$id;->AdLayout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->d:Landroid/widget/FrameLayout;

    .line 3
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->b:Landroid/webkit/WebView;

    .line 4
    iget-object v1, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->d:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 5
    sget v0, Lcom/criteo/publisher/R$id;->closeButton:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "webviewdata"

    .line 7
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "resultreceiver"

    .line 9
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/ResultReceiver;

    iput-object v2, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->c:Landroid/os/ResultReceiver;

    const-string v2, "callingactivity"

    .line 10
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->e:Landroid/content/ComponentName;

    .line 11
    iget-object v1, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 12
    new-instance v1, Lcom/criteo/publisher/CriteoInterstitialActivity$b;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/criteo/publisher/CriteoInterstitialActivity$b;-><init>(Ljava/lang/ref/WeakReference;Lcom/criteo/publisher/CriteoInterstitialActivity$a;)V

    .line 13
    new-instance v2, Le/i/b/q1/a;

    iget-object v3, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->e:Landroid/content/ComponentName;

    invoke-direct {v2, v1, v3}, Le/i/b/q1/a;-><init>(Le/i/b/q1/c;Landroid/content/ComponentName;)V

    .line 14
    iget-object v1, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 15
    iget-object v4, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->b:Landroid/webkit/WebView;

    const-string v5, "https://criteo.com"

    const-string v7, "text/html"

    const-string v8, "UTF-8"

    const-string v9, "about:blank"

    invoke-virtual/range {v4 .. v9}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_0
    new-instance v1, Lcom/criteo/publisher/CriteoInterstitialActivity$a;

    invoke-direct {v1, p0}, Lcom/criteo/publisher/CriteoInterstitialActivity$a;-><init>(Lcom/criteo/publisher/CriteoInterstitialActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    const-string v0, "Action"

    const/16 v1, 0xc9

    .line 1
    invoke-static {v0, v1}, Le/d/c/a/a;->M0(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->c:Landroid/os/ResultReceiver;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lcom/criteo/publisher/CriteoInterstitialActivity;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->a:Le/i/b/q2/h;

    invoke-static {p1}, Le/i/b/a3;->a(Ljava/lang/Throwable;)Le/i/b/q2/f;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 3
    iget-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/criteo/publisher/CriteoInterstitialActivity;->b:Landroid/webkit/WebView;

    return-void
.end method
