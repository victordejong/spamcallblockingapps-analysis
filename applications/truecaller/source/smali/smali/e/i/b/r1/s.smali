.class public final Le/i/b/r1/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;


# instance fields
.field public final a:Le/i/b/q2/h;

.field public final b:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

.field public final c:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/advancednative/CriteoNativeLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;Ljava/lang/ref/Reference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;",
            "Ljava/lang/ref/Reference<",
            "Lcom/criteo/publisher/advancednative/CriteoNativeLoader;",
            ">;)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nativeLoaderRef"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/r1/s;->b:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    iput-object p2, p0, Le/i/b/r1/s;->c:Ljava/lang/ref/Reference;

    .line 2
    const-class p1, Le/i/b/r1/s;

    invoke-static {p1}, Le/i/b/q2/i;->a(Ljava/lang/Class;)Le/i/b/q2/h;

    move-result-object p1

    const-string p2, "LoggerFactory.getLogger(javaClass)"

    invoke-static {p1, p2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/i/b/r1/s;->a:Le/i/b/q2/h;

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/i/b/r1/s;->a:Le/i/b/q2/h;

    iget-object v1, p0, Le/i/b/r1/s;->c:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v1, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->adUnit:Lcom/criteo/publisher/model/NativeAdUnit;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    new-instance v8, Le/i/b/q2/f;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Native("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") clicked"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xd

    move-object v2, v8

    .line 5
    invoke-direct/range {v2 .. v7}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, v8}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 7
    iget-object v0, p0, Le/i/b/r1/s;->b:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-interface {v0}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;->onAdClicked()V

    return-void
.end method

.method public synthetic onAdClosed()V
    .locals 0

    invoke-static {p0}, Le/i/b/r1/c;->$default$onAdClosed(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    return-void
.end method

.method public onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V
    .locals 9

    const-string v0, "errorCode"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/i/b/r1/s;->a:Le/i/b/q2/h;

    iget-object v1, p0, Le/i/b/r1/s;->c:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    .line 2
    new-instance v8, Le/i/b/q2/f;

    const-string v2, "Native("

    .line 3
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->adUnit:Lcom/criteo/publisher/model/NativeAdUnit;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") failed to load"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xd

    const/4 v3, 0x0

    move-object v2, v8

    .line 4
    invoke-direct/range {v2 .. v7}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v0, v8}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 6
    iget-object v0, p0, Le/i/b/r1/s;->b:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-interface {v0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;->onAdFailedToReceive(Lcom/criteo/publisher/CriteoErrorCode;)V

    return-void
.end method

.method public onAdImpression()V
    .locals 9

    .line 1
    iget-object v0, p0, Le/i/b/r1/s;->a:Le/i/b/q2/h;

    iget-object v1, p0, Le/i/b/r1/s;->c:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v1, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->adUnit:Lcom/criteo/publisher/model/NativeAdUnit;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    new-instance v8, Le/i/b/q2/f;

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Native("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") impression registered"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xd

    move-object v2, v8

    .line 5
    invoke-direct/range {v2 .. v7}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, v8}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 7
    iget-object v0, p0, Le/i/b/r1/s;->b:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-interface {v0}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;->onAdImpression()V

    return-void
.end method

.method public synthetic onAdLeftApplication()V
    .locals 0

    invoke-static {p0}, Le/i/b/r1/c;->$default$onAdLeftApplication(Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;)V

    return-void
.end method

.method public onAdReceived(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V
    .locals 9

    const-string v0, "nativeAd"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/i/b/r1/s;->a:Le/i/b/q2/h;

    iget-object v1, p0, Le/i/b/r1/s;->c:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;

    .line 2
    new-instance v8, Le/i/b/q2/f;

    const-string v2, "Native("

    .line 3
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/criteo/publisher/advancednative/CriteoNativeLoader;->adUnit:Lcom/criteo/publisher/model/NativeAdUnit;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") is loaded"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xd

    const/4 v3, 0x0

    move-object v2, v8

    .line 4
    invoke-direct/range {v2 .. v7}, Le/i/b/q2/f;-><init>(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;I)V

    .line 5
    invoke-virtual {v0, v8}, Le/i/b/q2/h;->a(Le/i/b/q2/f;)V

    .line 6
    iget-object v0, p0, Le/i/b/r1/s;->b:Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;

    invoke-interface {v0, p1}, Lcom/criteo/publisher/advancednative/CriteoNativeAdListener;->onAdReceived(Lcom/criteo/publisher/advancednative/CriteoNativeAd;)V

    return-void
.end method
