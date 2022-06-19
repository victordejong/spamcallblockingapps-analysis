.class public Lcom/freshchat/consumer/sdk/l/j;
.super Lcom/freshchat/consumer/sdk/l/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/l/b;-><init>()V

    return-void
.end method

.method private F(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p2}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/d;->bF(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/beans/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/User;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/freshchat/consumer/sdk/j/as;->o(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p2}, Lcom/freshchat/consumer/sdk/beans/User;->setEmail(Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/User;

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/j/d;->b(Landroid/content/Context;Lcom/freshchat/consumer/sdk/beans/User;)V

    return-void
.end method

.method private cf(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/l/j;->w(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->bi()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private w(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;
    .locals 0

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/b/e;->i(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public C(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/l/j;->w(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->bj()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public D(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/l/j;->w(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/freshchat/consumer/sdk/b/e;->bn(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/l/j;->cf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/l/j;->F(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public cd(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/l/j;->w(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/e;->hA()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public ce(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/l/j;->w(Landroid/content/Context;)Lcom/freshchat/consumer/sdk/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/e;->hA()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/l/j;->cf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
