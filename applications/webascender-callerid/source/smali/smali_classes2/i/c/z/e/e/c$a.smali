.class final Li/c/z/e/e/c$a;
.super Li/c/z/d/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/e/c;
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
        "Li/c/z/d/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field final k:Li/c/y/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/y/e<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/q;Li/c/y/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/q<",
            "-TT;>;",
            "Li/c/y/e<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Li/c/z/d/a;-><init>(Li/c/q;)V

    .line 2
    iput-object p2, p0, Li/c/z/e/e/c$a;->k:Li/c/y/e;

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
    iget v0, p0, Li/c/z/d/a;->j:I

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Li/c/z/e/e/c$a;->k:Li/c/y/e;

    invoke-interface {v0, p1}, Li/c/y/e;->test(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Li/c/z/d/a;->f:Li/c/q;

    invoke-interface {v0, p1}, Li/c/q;->onNext(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 4
    invoke-virtual {p0, p1}, Li/c/z/d/a;->d(Ljava/lang/Throwable;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Li/c/z/d/a;->f:Li/c/q;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Li/c/q;->onNext(Ljava/lang/Object;)V

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
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :cond_0
    iget-object v0, p0, Li/c/z/d/a;->h:Li/c/z/c/d;

    invoke-interface {v0}, Li/c/z/c/i;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Li/c/z/e/e/c$a;->k:Li/c/y/e;

    invoke-interface {v1, v0}, Li/c/y/e;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    return-object v0
.end method
