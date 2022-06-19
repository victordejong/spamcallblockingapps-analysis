.class final Li/c/b0/e/f/e/a3$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/a3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/c0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/e/f/e/a3$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/b0/e/f/e/a3$c<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Li/c/b0/e/f/e/a3$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/e/f/e/a3$c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/e/a3$d;->f:Li/c/b0/e/f/e/a3$c;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a3$d;->f:Li/c/b0/e/f/e/a3$c;

    invoke-virtual {v0}, Li/c/b0/e/f/e/a3$c;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a3$d;->f:Li/c/b0/e/f/e/a3$c;

    invoke-virtual {v0, p1}, Li/c/b0/e/f/e/a3$c;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Li/c/b0/e/f/e/a3$d;->f:Li/c/b0/e/f/e/a3$c;

    invoke-virtual {p1}, Li/c/b0/e/f/e/a3$c;->e()V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/e/a3$d;->f:Li/c/b0/e/f/e/a3$c;

    invoke-virtual {v0, p1}, Li/c/b0/e/f/e/a3$c;->f(Li/c/b0/c/c;)Z

    return-void
.end method
