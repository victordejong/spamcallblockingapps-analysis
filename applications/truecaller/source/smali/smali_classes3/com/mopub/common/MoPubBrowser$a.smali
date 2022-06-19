.class public Lcom/mopub/common/MoPubBrowser$a;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/MoPubBrowser;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/common/MoPubBrowser;


# direct methods
.method public constructor <init>(Lcom/mopub/common/MoPubBrowser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/MoPubBrowser$a;->a:Lcom/mopub/common/MoPubBrowser;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3

    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 1
    iget-object v1, p0, Lcom/mopub/common/MoPubBrowser$a;->a:Lcom/mopub/common/MoPubBrowser;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/mopub/common/MoPubBrowser$a;->a:Lcom/mopub/common/MoPubBrowser;

    const-string v1, "Loading..."

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/mopub/common/MoPubBrowser$a;->a:Lcom/mopub/common/MoPubBrowser;

    .line 4
    iget-boolean v1, p1, Lcom/mopub/common/MoPubBrowser;->f:Z

    if-eqz v1, :cond_1

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    mul-int/2addr p2, v0

    .line 6
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setProgress(I)V

    :cond_1
    return-void
.end method
