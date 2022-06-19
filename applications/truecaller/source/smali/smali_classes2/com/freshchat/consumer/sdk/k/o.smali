.class public abstract Lcom/freshchat/consumer/sdk/k/o;
.super Lcom/freshchat/consumer/sdk/k/n;
.source "SourceFile"


# instance fields
.field private rs:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/n;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public B(Z)Lcom/freshchat/consumer/sdk/service/Status;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/o;->jl()Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/o;->jd()Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object p1

    return-object p1
.end method

.method public abstract aa(I)V
.end method

.method public b(Lcom/freshchat/consumer/sdk/service/Status;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/o;->jk()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/freshchat/consumer/sdk/k/o;->rs:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/freshchat/consumer/sdk/service/Status;->SUCCESS:Lcom/freshchat/consumer/sdk/service/Status;

    if-ne p1, v2, :cond_1

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public c(Lcom/freshchat/consumer/sdk/service/Status;)Lcom/freshchat/consumer/sdk/service/Status;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/n;->rr:Lcom/freshchat/consumer/sdk/service/Status;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/n;->rr:Lcom/freshchat/consumer/sdk/service/Status;

    return-object p1
.end method

.method public jd()Lcom/freshchat/consumer/sdk/service/Status;
    .locals 1

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/freshchat/consumer/sdk/k/o;->rs:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/k/o;->aa(I)V

    iget v0, p0, Lcom/freshchat/consumer/sdk/k/o;->rs:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->INIT_LOADING:Lcom/freshchat/consumer/sdk/service/Status;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->LOADING_MORE:Lcom/freshchat/consumer/sdk/service/Status;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/freshchat/consumer/sdk/service/Status;->NO_INTERNET:Lcom/freshchat/consumer/sdk/service/Status;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/freshchat/consumer/sdk/k/o;->c(Lcom/freshchat/consumer/sdk/service/Status;)Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object v0

    return-object v0
.end method

.method public abstract jk()Z
.end method

.method public jl()Lcom/freshchat/consumer/sdk/service/Status;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/n;->rr:Lcom/freshchat/consumer/sdk/service/Status;

    sget-object v1, Lcom/freshchat/consumer/sdk/service/Status;->SUCCESS:Lcom/freshchat/consumer/sdk/service/Status;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "BasePagingViewModel"

    const-string v1, " Load more data called in View model "

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/o;->jd()Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object v0

    return-object v0
.end method

.method public jm()Lcom/freshchat/consumer/sdk/service/Status;
    .locals 2

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/al;->aS(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/n;->rr:Lcom/freshchat/consumer/sdk/service/Status;

    sget-object v1, Lcom/freshchat/consumer/sdk/service/Status;->NO_INTERNET:Lcom/freshchat/consumer/sdk/service/Status;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/o;->jd()Lcom/freshchat/consumer/sdk/service/Status;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public jn()V
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/k/o;->rs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/freshchat/consumer/sdk/k/o;->rs:I

    return-void
.end method

.method public jo()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/freshchat/consumer/sdk/k/o;->rs:I

    return-void
.end method
