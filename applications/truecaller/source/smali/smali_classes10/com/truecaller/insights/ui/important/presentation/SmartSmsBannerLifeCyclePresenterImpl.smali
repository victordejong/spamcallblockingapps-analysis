.class public final Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/a/c/h/k;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\u0006\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0018\u0010\r\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0019\u001a\u00020\u00168\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;",
        "Le/a/c/a/c/h/k;",
        "Ls1/s;",
        "onResume",
        "()V",
        "onPause",
        "Ls1/w/f;",
        "d",
        "Ls1/w/f;",
        "ioContext",
        "Lq3/a/p1;",
        "c",
        "Lq3/a/p1;",
        "subscriber",
        "Le/a/c/c0/o;",
        "e",
        "Le/a/c/c0/o;",
        "insightsConfig",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "b",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "alreadyCounted",
        "Lq3/a/i0;",
        "a",
        "Lq3/a/i0;",
        "coroutineScope",
        "<init>",
        "(Ls1/w/f;Le/a/c/c0/o;)V",
        "insights-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Lq3/a/i0;

.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public c:Lq3/a/p1;

.field public final d:Ls1/w/f;

.field public final e:Le/a/c/c0/o;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/c/c0/o;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsConfig"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;->d:Ls1/w/f;

    iput-object p2, p0, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;->e:Le/a/c/c0/o;

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 2
    invoke-static {p2, v0}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object p2

    invoke-interface {p1, p2}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;->a:Lq3/a/i0;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final onPause()V
    .locals 6
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_PAUSE:Ln3/v/u$a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;->a:Lq3/a/i0;

    new-instance v3, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl$a;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl$a;-><init>(Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final onResume()V
    .locals 6
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_RESUME:Ln3/v/u$a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;->a:Lq3/a/i0;

    new-instance v3, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl$b;

    const/4 v1, 0x0

    invoke-direct {v3, p0, v1}, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl$b;-><init>(Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/insights/ui/important/presentation/SmartSmsBannerLifeCyclePresenterImpl;->c:Lq3/a/p1;

    return-void
.end method
