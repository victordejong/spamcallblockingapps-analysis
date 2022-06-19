.class final Li/c/z/e/c/h$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/c/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/l<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Li/c/z/e/c/h$a;


# direct methods
.method constructor <init>(Li/c/z/e/c/h$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/z/e/c/h$a$a;->f:Li/c/z/e/c/h$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li/c/w/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/c/h$a$a;->f:Li/c/z/e/c/h$a;

    invoke-static {v0, p1}, Li/c/z/a/b;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Li/c/w/b;)Z

    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/c/h$a$a;->f:Li/c/z/e/c/h$a;

    iget-object v0, v0, Li/c/z/e/c/h$a;->f:Li/c/l;

    invoke-interface {v0}, Li/c/l;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/z/e/c/h$a$a;->f:Li/c/z/e/c/h$a;

    iget-object v0, v0, Li/c/z/e/c/h$a;->f:Li/c/l;

    invoke-interface {v0, p1}, Li/c/l;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/c/z/e/c/h$a$a;->f:Li/c/z/e/c/h$a;

    iget-object v0, v0, Li/c/z/e/c/h$a;->f:Li/c/l;

    invoke-interface {v0, p1}, Li/c/l;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
