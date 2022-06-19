.class public Lcom/freshchat/consumer/sdk/k/k;
.super Lcom/freshchat/consumer/sdk/k/a;
.source "SourceFile"


# instance fields
.field private final qb:Lcom/freshchat/consumer/sdk/l/j;

.field private qc:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/a;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/freshchat/consumer/sdk/l/j;

    invoke-direct {p1}, Lcom/freshchat/consumer/sdk/l/j;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/k;->qb:Lcom/freshchat/consumer/sdk/l/j;

    return-void
.end method


# virtual methods
.method public aK(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/av;->aK(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bi()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/k;->qc:Ljava/lang/String;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/k;->qb:Lcom/freshchat/consumer/sdk/l/j;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/l/j;->ce(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/k/k;->qc:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/k;->qc:Ljava/lang/String;

    return-object v0
.end method

.method public bq(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/k;->qc:Ljava/lang/String;

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/k/k;->qb:Lcom/freshchat/consumer/sdk/l/j;

    invoke-virtual {p0}, Lcom/freshchat/consumer/sdk/k/a;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/k/k;->qc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/freshchat/consumer/sdk/l/j;->D(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
