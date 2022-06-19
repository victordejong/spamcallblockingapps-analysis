.class final Li/c/b0/e/f/e/g0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/g0$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/c/b0/b/c0<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/e/a/f;

.field final g:Li/c/b0/b/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/b/c0<",
            "-TT;>;"
        }
    .end annotation
.end field

.field h:Z

.field final synthetic i:Li/c/b0/e/f/e/g0;


# direct methods
.method constructor <init>(Li/c/b0/e/f/e/g0;Li/c/b0/e/a/f;Li/c/b0/b/c0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/a/f;",
            "Li/c/b0/b/c0<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Li/c/b0/e/f/e/g0$a;->i:Li/c/b0/e/f/e/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Li/c/b0/e/f/e/g0$a;->f:Li/c/b0/e/a/f;

    .line 3
    iput-object p3, p0, Li/c/b0/e/f/e/g0$a;->g:Li/c/b0/b/c0;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/g0$a;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Li/c/b0/e/f/e/g0$a;->h:Z

    .line 3
    iget-object v0, p0, Li/c/b0/e/f/e/g0$a;->i:Li/c/b0/e/f/e/g0;

    iget-object v0, v0, Li/c/b0/e/f/e/g0;->f:Li/c/b0/b/a0;

    new-instance v1, Li/c/b0/e/f/e/g0$a$a;

    invoke-direct {v1, p0}, Li/c/b0/e/f/e/g0$a$a;-><init>(Li/c/b0/e/f/e/g0$a;)V

    invoke-interface {v0, v1}, Li/c/b0/b/a0;->subscribe(Li/c/b0/b/c0;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Li/c/b0/e/f/e/g0$a;->h:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Li/c/b0/h/a;->t(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Li/c/b0/e/f/e/g0$a;->h:Z

    .line 4
    iget-object v0, p0, Li/c/b0/e/f/e/g0$a;->g:Li/c/b0/b/c0;

    invoke-interface {v0, p1}, Li/c/b0/b/c0;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Li/c/b0/e/f/e/g0$a;->onComplete()V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/g0$a;->f:Li/c/b0/e/a/f;

    invoke-virtual {v0, p1}, Li/c/b0/e/a/f;->b(Li/c/b0/c/c;)Z

    return-void
.end method
