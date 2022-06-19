.class Lcom/hiya/stingray/manager/q1$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/q1;->n(Ljava/lang/String;)Li/c/b0/b/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
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
    iput-object p1, p0, Lcom/hiya/stingray/manager/q1$f;->g:Lcom/hiya/stingray/manager/q1;

    iput-object p2, p0, Lcom/hiya/stingray/manager/q1$f;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/q1$f;->g:Lcom/hiya/stingray/manager/q1;

    invoke-static {v0}, Lcom/hiya/stingray/manager/q1;->a(Lcom/hiya/stingray/manager/q1;)Lcom/hiya/stingray/q/b/n;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/q1$f;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/b/n;->b(Ljava/lang/String;)Lcom/google/common/base/j;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/common/base/j;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/q/c/i/b;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/c/i/b;->O0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/q1$f;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
