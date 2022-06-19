.class Lcom/hiya/stingray/manager/q1$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/manager/q1;->g(Ljava/lang/String;)Li/c/b0/b/e;
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
    iput-object p1, p0, Lcom/hiya/stingray/manager/q1$d;->g:Lcom/hiya/stingray/manager/q1;

    iput-object p2, p0, Lcom/hiya/stingray/manager/q1$d;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Li/c/b0/b/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/q1$d;->g:Lcom/hiya/stingray/manager/q1;

    invoke-static {v0}, Lcom/hiya/stingray/manager/q1;->d(Lcom/hiya/stingray/manager/q1;)Lcom/hiya/stingray/t/i1/i;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/manager/q1$d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/i1/i;->a(Ljava/lang/String;)Lcom/hiya/stingray/q/c/i/b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/manager/q1$d;->g:Lcom/hiya/stingray/manager/q1;

    invoke-static {v1}, Lcom/hiya/stingray/manager/q1;->a(Lcom/hiya/stingray/manager/q1;)Lcom/hiya/stingray/q/b/n;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/q/b/n;->e(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/manager/q1$d;->g:Lcom/hiya/stingray/manager/q1;

    iget-object v1, p0, Lcom/hiya/stingray/manager/q1$d;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/hiya/stingray/manager/q1;->e(Lcom/hiya/stingray/manager/q1;Ljava/lang/String;)V

    .line 4
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
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/q1$d;->a()Li/c/b0/b/e;

    move-result-object v0

    return-object v0
.end method
