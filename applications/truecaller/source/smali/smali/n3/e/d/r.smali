.class public Ln3/e/d/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/t1/c/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/e/b/j1/t1/c/d<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ln3/e/b/l0;

.field public final synthetic c:Ln3/e/d/t;


# direct methods
.method public constructor <init>(Ln3/e/d/t;Ljava/util/List;Ln3/e/b/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/d/r;->c:Ln3/e/d/t;

    iput-object p2, p0, Ln3/e/d/r;->a:Ljava/util/List;

    iput-object p3, p0, Ln3/e/d/r;->b:Ln3/e/b/l0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ln3/e/d/r;->c:Ln3/e/d/t;

    const/4 v0, 0x0

    iput-object v0, p1, Ln3/e/d/t;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 2
    iget-object p1, p0, Ln3/e/d/r;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Ln3/e/d/r;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/e/b/j1/q;

    .line 4
    iget-object v1, p0, Ln3/e/d/r;->b:Ln3/e/b/l0;

    check-cast v1, Ln3/e/b/j1/z;

    invoke-interface {v1, v0}, Ln3/e/b/j1/z;->d(Ln3/e/b/j1/q;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Ln3/e/d/r;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Ln3/e/d/r;->c:Ln3/e/d/t;

    const/4 v0, 0x0

    iput-object v0, p1, Ln3/e/d/t;->e:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
