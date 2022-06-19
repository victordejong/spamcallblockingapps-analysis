.class Lcom/hiya/stingray/manager/q1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/q1;->h(Ljava/lang/String;)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Li/c/b0/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/hiya/stingray/manager/q1;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/manager/q1;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/manager/q1$e;->g:Lcom/hiya/stingray/manager/q1;

    iput-object p2, p0, Lcom/hiya/stingray/manager/q1$e;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Li/c/b0/b/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/q1$e;->g:Lcom/hiya/stingray/manager/q1;

    invoke-static {v0}, Lcom/hiya/stingray/manager/q1;->a(Lcom/hiya/stingray/manager/q1;)Lcom/hiya/stingray/q/b/n;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/q1$e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/b/n;->b(Ljava/lang/String;)Lcom/google/common/base/j;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/common/base/j;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Realm CallScreener should not be null. updating allowed screener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Li/c/b0/b/e;->r(Ljava/lang/Throwable;)Li/c/b0/b/e;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/hiya/stingray/manager/q1$e;->g:Lcom/hiya/stingray/manager/q1;

    invoke-static {v1}, Lcom/hiya/stingray/manager/q1;->d(Lcom/hiya/stingray/manager/q1;)Lcom/hiya/stingray/t/i1/i;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/q/c/i/b;

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/t/i1/i;->b(Lcom/hiya/stingray/q/c/i/b;)Lcom/hiya/stingray/q/c/i/b;

    .line 5
    iget-object v1, p0, Lcom/hiya/stingray/manager/q1$e;->g:Lcom/hiya/stingray/manager/q1;

    invoke-static {v1}, Lcom/hiya/stingray/manager/q1;->a(Lcom/hiya/stingray/manager/q1;)Lcom/hiya/stingray/q/b/n;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/q/b/n;->e(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/manager/q1$e;->g:Lcom/hiya/stingray/manager/q1;

    iget-object v1, p0, Lcom/hiya/stingray/manager/q1$e;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hiya/stingray/manager/q1;->f(Lcom/hiya/stingray/manager/q1;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/q1$e;->a()Li/c/b0/b/e;

    move-result-object v0

    return-object v0
.end method
