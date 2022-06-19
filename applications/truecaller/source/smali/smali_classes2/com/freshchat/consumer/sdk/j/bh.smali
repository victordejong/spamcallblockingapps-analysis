.class public final Lcom/freshchat/consumer/sdk/j/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/j/bg$b;


# instance fields
.field public final synthetic iI:Landroid/content/Context;

.field public final synthetic lM:Ljava/lang/String;

.field public final synthetic lN:Ljava/lang/String;

.field public final synthetic lP:Ljava/lang/String;

.field public final synthetic lQ:Ljava/lang/String;

.field public final synthetic ro:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/bh;->lM:Ljava/lang/String;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/j/bh;->lN:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/freshchat/consumer/sdk/j/bh;->ro:Z

    iput-object p4, p0, Lcom/freshchat/consumer/sdk/j/bh;->iI:Landroid/content/Context;

    iput-object p5, p0, Lcom/freshchat/consumer/sdk/j/bh;->lP:Ljava/lang/String;

    iput-object p6, p0, Lcom/freshchat/consumer/sdk/j/bh;->lQ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gy()Lcom/freshchat/consumer/sdk/Event;
    .locals 3

    sget-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventFAQVote:Lcom/freshchat/consumer/sdk/Event$EventName;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/bg;->b(Lcom/freshchat/consumer/sdk/Event$EventName;)Lcom/freshchat/consumer/sdk/j/bg$a;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyFAQCategoryName:Lcom/freshchat/consumer/sdk/Event$Property;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/bh;->lM:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/j/bg$a;Lcom/freshchat/consumer/sdk/Event$Property;Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/bg$a;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyFAQTitle:Lcom/freshchat/consumer/sdk/Event$Property;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/bh;->lN:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/j/bg$a;Lcom/freshchat/consumer/sdk/Event$Property;Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/bg$a;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyIsHelpful:Lcom/freshchat/consumer/sdk/Event$Property;

    iget-boolean v2, p0, Lcom/freshchat/consumer/sdk/j/bh;->ro:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/j/bg$a;Lcom/freshchat/consumer/sdk/Event$Property;Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/bg$a;

    move-result-object v0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/bh;->iI:Landroid/content/Context;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/bh;->lP:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/bg;->B(Landroid/content/Context;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Category;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyFAQCategoryID:Lcom/freshchat/consumer/sdk/Event$Property;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Category;->getCategoryAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/j/bg$a;Lcom/freshchat/consumer/sdk/Event$Property;Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/bg$a;

    :cond_0
    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/bh;->iI:Landroid/content/Context;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/bh;->lQ:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/freshchat/consumer/sdk/j/bg;->C(Landroid/content/Context;Ljava/lang/String;)Lcom/freshchat/consumer/sdk/beans/Article;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyFAQID:Lcom/freshchat/consumer/sdk/Event$Property;

    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/beans/Article;->getArticleAlias()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/j/bg$a;Lcom/freshchat/consumer/sdk/Event$Property;Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/bg$a;

    :cond_1
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/j/bg$a;)Lcom/freshchat/consumer/sdk/Event;

    move-result-object v0

    return-object v0
.end method
