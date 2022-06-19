.class public final Lcom/freshchat/consumer/sdk/j/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/j/bg$b;


# instance fields
.field public final synthetic iD:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/bj;->iD:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gy()Lcom/freshchat/consumer/sdk/Event;
    .locals 3

    sget-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventLinkTap:Lcom/freshchat/consumer/sdk/Event$EventName;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/bg;->b(Lcom/freshchat/consumer/sdk/Event$EventName;)Lcom/freshchat/consumer/sdk/j/bg$a;

    move-result-object v0

    sget-object v1, Lcom/freshchat/consumer/sdk/Event$Property;->FCPropertyURL:Lcom/freshchat/consumer/sdk/Event$Property;

    iget-object v2, p0, Lcom/freshchat/consumer/sdk/j/bj;->iD:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/j/bg$a;Lcom/freshchat/consumer/sdk/Event$Property;Ljava/lang/Object;)Lcom/freshchat/consumer/sdk/j/bg$a;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/j/bg$a;)Lcom/freshchat/consumer/sdk/Event;

    move-result-object v0

    return-object v0
.end method
