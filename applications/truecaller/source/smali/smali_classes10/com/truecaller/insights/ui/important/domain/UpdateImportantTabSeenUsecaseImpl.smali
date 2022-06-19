.class public final Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/a/c/f/y;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\u0011\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u000f\u0010\u0003\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00068\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0011\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl;",
        "Le/a/c/a/c/f/y;",
        "Ls1/s;",
        "onResume",
        "()V",
        "onPause",
        "Ljava/lang/Runnable;",
        "b",
        "Ljava/lang/Runnable;",
        "timerRunnable",
        "Landroid/os/Handler;",
        "a",
        "Landroid/os/Handler;",
        "timerHandler",
        "Le/a/c/c0/o;",
        "c",
        "Le/a/c/c0/o;",
        "insightConfig",
        "<init>",
        "(Le/a/c/c0/o;)V",
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
.field public final a:Landroid/os/Handler;

.field public final b:Ljava/lang/Runnable;

.field public final c:Le/a/c/c0/o;


# direct methods
.method public constructor <init>(Le/a/c/c0/o;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl;->c:Le/a/c/c0/o;

    .line 2
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl;->a:Landroid/os/Handler;

    .line 3
    new-instance p1, Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl$a;

    invoke-direct {p1, p0}, Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl$a;-><init>(Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl;)V

    iput-object p1, p0, Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onPause()V
    .locals 2
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_PAUSE:Ln3/v/u$a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl;->b:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onResume()V
    .locals 4
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_RESUME:Ln3/v/u$a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/truecaller/insights/ui/important/domain/UpdateImportantTabSeenUsecaseImpl;->b:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
