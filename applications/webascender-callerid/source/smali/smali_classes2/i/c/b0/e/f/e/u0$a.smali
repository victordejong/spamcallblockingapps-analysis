.class final Li/c/b0/e/f/e/u0$a;
.super Li/c/b0/e/e/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/e/e/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final k:Li/c/b0/d/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/d/p<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/b0/b/c0;Li/c/b0/d/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/c0<",
            "-TT;>;",
            "Li/c/b0/d/p<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/b0/e/e/a;-><init>(Li/c/b0/b/c0;)V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/u0$a;->k:Li/c/b0/d/p;

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget v0, p0, Li/c/b0/e/e/a;->j:I

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/b0/e/f/e/u0$a;->k:Li/c/b0/d/p;

    invoke-interface {v0, p1}, Li/c/b0/d/p;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Li/c/b0/e/e/a;->f:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p0, p1}, Li/c/b0/e/e/a;->c(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Li/c/b0/e/e/a;->f:Li/c/b0/b/c0;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Li/c/b0/b/c0;->onNext(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Li/c/b0/e/e/a;->h:Li/c/b0/e/c/f;

    invoke-interface {v0}, Li/c/b0/e/c/k;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Li/c/b0/e/f/e/u0$a;->k:Li/c/b0/d/p;

    invoke-interface {v1, v0}, Li/c/b0/d/p;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v0
.end method

.method public requestFusion(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Li/c/b0/e/e/a;->d(I)I

    move-result p1

    return p1
.end method
