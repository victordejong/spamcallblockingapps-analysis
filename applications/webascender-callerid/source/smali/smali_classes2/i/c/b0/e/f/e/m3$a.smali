.class final Li/c/b0/e/f/e/m3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/m3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/b/c0<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/e/a/a;

.field final g:Li/c/b0/e/f/e/m3$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/m3$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final h:Li/c/b0/g/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/g/f<",
            "TT;>;"
        }
    .end annotation
.end field

.field i:Li/c/b0/c/c;


# direct methods
.method constructor <init>(Li/c/b0/e/f/e/m3;Li/c/b0/e/a/a;Li/c/b0/e/f/e/m3$b;Li/c/b0/g/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/a/a;",
            "Li/c/b0/e/f/e/m3$b<",
            "TT;>;",
            "Li/c/b0/g/f<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/m3$a;->f:Li/c/b0/e/a/a;

    .line 3
    iput-object p3, p0, Li/c/b0/e/f/e/m3$a;->g:Li/c/b0/e/f/e/m3$b;

    .line 4
    iput-object p4, p0, Li/c/b0/e/f/e/m3$a;->h:Li/c/b0/g/f;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m3$a;->g:Li/c/b0/e/f/e/m3$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Li/c/b0/e/f/e/m3$b;->i:Z

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m3$a;->f:Li/c/b0/e/a/a;

    invoke-virtual {v0}, Li/c/b0/e/a/a;->dispose()V

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/e/m3$a;->h:Li/c/b0/g/f;

    invoke-virtual {v0, p1}, Li/c/b0/g/f;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Li/c/b0/e/f/e/m3$a;->i:Li/c/b0/c/c;

    invoke-interface {p1}, Li/c/b0/c/c;->dispose()V

    .line 2
    iget-object p1, p0, Li/c/b0/e/f/e/m3$a;->g:Li/c/b0/e/f/e/m3$b;

    const/4 v0, 0x1

    iput-boolean v0, p1, Li/c/b0/e/f/e/m3$b;->i:Z

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 2

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/m3$a;->i:Li/c/b0/c/c;

    invoke-static {v0, p1}, Li/c/b0/e/a/c;->validate(Li/c/b0/c/c;Li/c/b0/c/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/m3$a;->i:Li/c/b0/c/c;

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/m3$a;->f:Li/c/b0/e/a/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Li/c/b0/e/a/a;->a(ILi/c/b0/c/c;)Z

    :cond_0
    return-void
.end method
