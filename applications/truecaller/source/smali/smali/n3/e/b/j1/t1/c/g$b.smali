.class public Ln3/e/b/j1/t1/c/g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/t1/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/e/b/j1/t1/c/g;->f(ZLcom/google/common/util/concurrent/ListenableFuture;Ln3/c/a/c/a;Ln3/h/a/b;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ln3/e/b/j1/t1/c/d<",
        "TI;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/h/a/b;

.field public final synthetic b:Ln3/c/a/c/a;


# direct methods
.method public constructor <init>(Ln3/h/a/b;Ln3/c/a/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/e/b/j1/t1/c/g$b;->a:Ln3/h/a/b;

    iput-object p2, p0, Ln3/e/b/j1/t1/c/g$b;->b:Ln3/c/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e/b/j1/t1/c/g$b;->a:Ln3/h/a/b;

    invoke-virtual {v0, p1}, Ln3/h/a/b;->c(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/e/b/j1/t1/c/g$b;->a:Ln3/h/a/b;

    iget-object v1, p0, Ln3/e/b/j1/t1/c/g$b;->b:Ln3/c/a/c/a;

    invoke-interface {v1, p1}, Ln3/c/a/c/a;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln3/h/a/b;->a(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    iget-object v0, p0, Ln3/e/b/j1/t1/c/g$b;->a:Ln3/h/a/b;

    invoke-virtual {v0, p1}, Ln3/h/a/b;->c(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method
