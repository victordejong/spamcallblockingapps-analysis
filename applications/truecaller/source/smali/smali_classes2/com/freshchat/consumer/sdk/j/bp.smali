.class public final Lcom/freshchat/consumer/sdk/j/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/j/bg$b;


# instance fields
.field public final synthetic jY:Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/bp;->jY:Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gy()Lcom/freshchat/consumer/sdk/Event;
    .locals 4

    new-instance v0, Lcom/freshchat/consumer/sdk/j/ab;

    const/4 v1, 0x1

    new-array v1, v1, [Le/m/e/b;

    new-instance v2, Lcom/freshchat/consumer/sdk/j/ab$d;

    invoke-direct {v2}, Lcom/freshchat/consumer/sdk/j/ab$d;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/freshchat/consumer/sdk/j/ab;-><init>([Le/m/e/b;)V

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/j/bp;->jY:Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/j/ab;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventCarouselOptionSelect:Lcom/freshchat/consumer/sdk/Event$EventName;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/bg;->b(Lcom/freshchat/consumer/sdk/Event$EventName;)Lcom/freshchat/consumer/sdk/j/bg$a;

    move-result-object v1

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/as;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyOption:Lcom/freshchat/consumer/sdk/Event$Property;

    invoke-static {v1, v2, v0}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/j/bg$a;Lcom/freshchat/consumer/sdk/Event$Property;Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/bg$a;

    :cond_0
    invoke-static {v1}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/j/bg$a;)Lcom/freshchat/consumer/sdk/Event;

    move-result-object v0

    return-object v0
.end method
