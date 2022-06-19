.class public Le/n/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/mopub/mraid/MraidController;


# direct methods
.method public constructor <init>(Lcom/mopub/mraid/MraidController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/c/d;->a:Lcom/mopub/mraid/MraidController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/n/c/d;->a:Lcom/mopub/mraid/MraidController;

    .line 2
    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    .line 3
    iget-object v0, v0, Lcom/mopub/mraid/MraidController;->x:Lcom/mopub/mraid/MraidNativeCommandHandler;

    .line 4
    invoke-virtual {v0}, Lcom/mopub/mraid/MraidNativeCommandHandler;->b()Z

    move-result v2

    iget-object v0, p0, Le/n/c/d;->a:Lcom/mopub/mraid/MraidController;

    .line 5
    iget-object v0, v0, Lcom/mopub/mraid/MraidController;->x:Lcom/mopub/mraid/MraidNativeCommandHandler;

    .line 6
    invoke-virtual {v0}, Lcom/mopub/mraid/MraidNativeCommandHandler;->c()Z

    move-result v3

    iget-object v0, p0, Le/n/c/d;->a:Lcom/mopub/mraid/MraidController;

    .line 7
    iget-object v4, v0, Lcom/mopub/mraid/MraidController;->x:Lcom/mopub/mraid/MraidNativeCommandHandler;

    .line 8
    iget-object v0, v0, Lcom/mopub/mobileads/MoPubWebViewController;->b:Landroid/content/Context;

    .line 9
    invoke-static {v0}, Lcom/mopub/mraid/MraidNativeCommandHandler;->isStorePictureSupported(Landroid/content/Context;)Z

    move-result v5

    iget-object v0, p0, Le/n/c/d;->a:Lcom/mopub/mraid/MraidController;

    .line 10
    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->l()Z

    move-result v6

    const/4 v4, 0x0

    .line 11
    invoke-virtual/range {v1 .. v6}, Lcom/mopub/mraid/MraidBridge;->h(ZZZZZ)V

    .line 12
    iget-object v0, p0, Le/n/c/d;->a:Lcom/mopub/mraid/MraidController;

    .line 13
    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    .line 14
    iget-object v0, v0, Lcom/mopub/mraid/MraidController;->n:Lcom/mopub/mraid/ViewState;

    .line 15
    invoke-virtual {v1, v0}, Lcom/mopub/mraid/MraidBridge;->i(Lcom/mopub/mraid/ViewState;)V

    .line 16
    iget-object v0, p0, Le/n/c/d;->a:Lcom/mopub/mraid/MraidController;

    .line 17
    iget-object v1, v0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    .line 18
    iget-object v0, v0, Lcom/mopub/mraid/MraidController;->i:Lcom/mopub/mraid/PlacementType;

    .line 19
    invoke-virtual {v1, v0}, Lcom/mopub/mraid/MraidBridge;->g(Lcom/mopub/mraid/PlacementType;)V

    .line 20
    iget-object v0, p0, Le/n/c/d;->a:Lcom/mopub/mraid/MraidController;

    .line 21
    iget-object v0, v0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    .line 22
    iget-object v1, v0, Lcom/mopub/mraid/MraidBridge;->c:Lcom/mopub/mraid/MraidBridge$MraidWebView;

    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {v1}, Lcom/mopub/mraid/MraidBridge$MraidWebView;->isMraidViewable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->j(Z)V

    .line 25
    iget-object v0, p0, Le/n/c/d;->a:Lcom/mopub/mraid/MraidController;

    .line 26
    iget-object v0, v0, Lcom/mopub/mraid/MraidController;->r:Lcom/mopub/mraid/MraidBridge;

    const-string v1, "mraidbridge.notifyReadyEvent();"

    .line 27
    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidBridge;->e(Ljava/lang/String;)V

    return-void
.end method
