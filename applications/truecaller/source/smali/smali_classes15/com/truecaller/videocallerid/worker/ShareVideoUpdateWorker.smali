.class public final Lcom/truecaller/videocallerid/worker/ShareVideoUpdateWorker;
.super Lcom/truecaller/background_work/TrackedWorker;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0001\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0008\u0008\u0001\u0010)\u001a\u00020(\u0012\u0008\u0008\u0001\u0010+\u001a\u00020*\u00a2\u0006\u0004\u0008,\u0010-J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\"\u0010\u000f\u001a\u00020\u00088\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00108\u0016@\u0016X\u0097.\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\"\u0010\u001f\u001a\u00020\u00188\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\"\u0010\'\u001a\u00020 8\u0016@\u0016X\u0097.\u00a2\u0006\u0012\n\u0004\u0008!\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&\u00a8\u0006."
    }
    d2 = {
        "Lcom/truecaller/videocallerid/worker/ShareVideoUpdateWorker;",
        "Lcom/truecaller/background_work/TrackedWorker;",
        "",
        "q",
        "()Z",
        "Landroidx/work/ListenableWorker$a;",
        "r",
        "()Landroidx/work/ListenableWorker$a;",
        "Le/a/k/c/r0;",
        "a",
        "Le/a/k/c/r0;",
        "getVideoCallerIdAvailability$video_caller_id_release",
        "()Le/a/k/c/r0;",
        "setVideoCallerIdAvailability$video_caller_id_release",
        "(Le/a/k/c/r0;)V",
        "videoCallerIdAvailability",
        "Le/a/q2/a;",
        "c",
        "Le/a/q2/a;",
        "n",
        "()Le/a/q2/a;",
        "setAnalytics",
        "(Le/a/q2/a;)V",
        "analytics",
        "Le/a/k/c/k0;",
        "d",
        "Le/a/k/c/k0;",
        "getShareVideoUpdateManager",
        "()Le/a/k/c/k0;",
        "setShareVideoUpdateManager",
        "(Le/a/k/c/k0;)V",
        "shareVideoUpdateManager",
        "Le/a/u3/g;",
        "b",
        "Le/a/u3/g;",
        "o",
        "()Le/a/u3/g;",
        "setFeaturesRegistry",
        "(Le/a/u3/g;)V",
        "featuresRegistry",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "video-caller-id_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/k/c/r0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/u3/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/q2/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Le/a/k/c/k0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/background_work/TrackedWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public n()Le/a/q2/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/worker/ShareVideoUpdateWorker;->c:Le/a/q2/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "analytics"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public o()Le/a/u3/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/worker/ShareVideoUpdateWorker;->b:Le/a/u3/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "featuresRegistry"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public q()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/worker/ShareVideoUpdateWorker;->a:Le/a/k/c/r0;

    const/4 v1, 0x0

    const-string v2, "videoCallerIdAvailability"

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/k/c/r0;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/truecaller/videocallerid/worker/ShareVideoUpdateWorker;->a:Le/a/k/c/r0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/k/c/r0;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public r()Landroidx/work/ListenableWorker$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/truecaller/videocallerid/worker/ShareVideoUpdateWorker$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/videocallerid/worker/ShareVideoUpdateWorker$a;-><init>(Lcom/truecaller/videocallerid/worker/ShareVideoUpdateWorker;Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "runBlocking {\n          \u2026}\n            }\n        }"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/work/ListenableWorker$a;

    return-object v0
.end method
