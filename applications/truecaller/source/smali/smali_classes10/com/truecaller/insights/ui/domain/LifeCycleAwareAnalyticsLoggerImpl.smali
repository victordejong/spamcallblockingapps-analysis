.class public final Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/a/i/h;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0011\u0008\u0007\u0012\u0006\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\t\u0010\u0008R\u0016\u0010\r\u001a\u00020\n8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000e8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;",
        "Le/a/c/a/i/h;",
        "Le/a/c/r/d/b;",
        "event",
        "Ls1/s;",
        "Zd",
        "(Le/a/c/r/d/b;)V",
        "onPause",
        "()V",
        "onDestroy",
        "Le/a/c/e/c;",
        "b",
        "Le/a/c/e/c;",
        "insightsAnalyticsManager",
        "",
        "a",
        "Ljava/util/List;",
        "analyticsCache",
        "<init>",
        "(Le/a/c/e/c;)V",
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
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/c/r/d/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/c/e/c;


# direct methods
.method public constructor <init>(Le/a/c/e/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightsAnalyticsManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;->b:Le/a/c/e/c;

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public Zd(Le/a/c/r/d/b;)V
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onDestroy()V
    .locals 1
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_DESTROY:Ln3/v/u$a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final onPause()V
    .locals 2
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_PAUSE:Ln3/v/u$a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;->b:Le/a/c/e/c;

    iget-object v1, p0, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;->a:Ljava/util/List;

    invoke-static {v1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/c/e/c;->b(Ljava/util/List;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/insights/ui/domain/LifeCycleAwareAnalyticsLoggerImpl;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
