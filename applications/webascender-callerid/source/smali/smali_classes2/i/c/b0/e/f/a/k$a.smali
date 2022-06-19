.class final Li/c/b0/e/f/a/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/g0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/a/k;
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
        "Ljava/lang/Object;",
        "Li/c/b0/b/g0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final f:Li/c/b0/b/g;


# direct methods
.method constructor <init>(Li/c/b0/b/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/b0/e/f/a/k$a;->f:Li/c/b0/b/g;

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/k$a;->f:Li/c/b0/b/g;

    invoke-interface {v0, p1}, Li/c/b0/b/g;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/k$a;->f:Li/c/b0/b/g;

    invoke-interface {v0, p1}, Li/c/b0/b/g;->onSubscribe(Li/c/b0/c/c;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Li/c/b0/e/f/a/k$a;->f:Li/c/b0/b/g;

    invoke-interface {p1}, Li/c/b0/b/g;->onComplete()V

    return-void
.end method
