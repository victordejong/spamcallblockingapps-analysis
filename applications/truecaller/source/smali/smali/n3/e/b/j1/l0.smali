.class public Ln3/e/b/j1/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/t1/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/e/b/j1/t1/c/d<",
        "Ljava/util/List<",
        "Landroid/view/Surface;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ln3/h/a/b;

.field public final synthetic c:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>(ZLn3/h/a/b;Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ln3/e/b/j1/l0;->a:Z

    iput-object p2, p0, Ln3/e/b/j1/l0;->b:Ln3/h/a/b;

    iput-object p3, p0, Ln3/e/b/j1/l0;->c:Ljava/util/concurrent/ScheduledFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/e/b/j1/l0;->b:Ln3/h/a/b;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Ln3/e/b/j1/l0;->c:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    iget-boolean p1, p0, Ln3/e/b/j1/l0;->a:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 5
    :cond_0
    iget-object p1, p0, Ln3/e/b/j1/l0;->b:Ln3/h/a/b;

    invoke-virtual {p1, v0}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Ln3/e/b/j1/l0;->c:Ljava/util/concurrent/ScheduledFuture;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void
.end method
