.class final Li/c/b0/e/f/a/t$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/a/t$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic f:Li/c/b0/e/f/a/t$a;


# direct methods
.method constructor <init>(Li/c/b0/e/f/a/t$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/c/b0/e/f/a/t$a$a;->f:Li/c/b0/e/f/a/t$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/t$a$a;->f:Li/c/b0/e/f/a/t$a;

    iget-object v0, v0, Li/c/b0/e/f/a/t$a;->g:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->dispose()V

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/a/t$a$a;->f:Li/c/b0/e/f/a/t$a;

    iget-object v0, v0, Li/c/b0/e/f/a/t$a;->h:Li/c/b0/b/g;

    invoke-interface {v0}, Li/c/b0/b/g;->onComplete()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/t$a$a;->f:Li/c/b0/e/f/a/t$a;

    iget-object v0, v0, Li/c/b0/e/f/a/t$a;->g:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->dispose()V

    .line 2
    iget-object v0, p0, Li/c/b0/e/f/a/t$a$a;->f:Li/c/b0/e/f/a/t$a;

    iget-object v0, v0, Li/c/b0/e/f/a/t$a;->h:Li/c/b0/b/g;

    invoke-interface {v0, p1}, Li/c/b0/b/g;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Li/c/b0/c/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Li/c/b0/e/f/a/t$a$a;->f:Li/c/b0/e/f/a/t$a;

    iget-object v0, v0, Li/c/b0/e/f/a/t$a;->g:Li/c/b0/c/a;

    invoke-virtual {v0, p1}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    return-void
.end method
