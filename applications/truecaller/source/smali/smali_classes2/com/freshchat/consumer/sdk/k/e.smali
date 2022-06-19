.class public Lcom/freshchat/consumer/sdk/k/e;
.super Lcom/freshchat/consumer/sdk/k/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freshchat/consumer/sdk/k/e$a;
    }
.end annotation


# instance fields
.field private ns:Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/k/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/k/e$a;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/k/e;->ns:Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;->getCustomReplyText()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/k/e;->ns:Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;

    invoke-virtual {v2}, Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;->getLabel()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/freshchat/consumer/sdk/k/f;->nt:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_4
    :goto_0
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public b(Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/k/e;->ns:Lcom/freshchat/consumer/sdk/beans/fragment/QuickReplyButtonFragment;

    return-void
.end method

.method public hb()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/k/e$a;->nv:Lcom/freshchat/consumer/sdk/k/e$a;

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/k/e;->a(Lcom/freshchat/consumer/sdk/k/e$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jL()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/freshchat/consumer/sdk/k/e$a;->rF:Lcom/freshchat/consumer/sdk/k/e$a;

    invoke-direct {p0, v0}, Lcom/freshchat/consumer/sdk/k/e;->a(Lcom/freshchat/consumer/sdk/k/e$a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
