.class public final Lcom/freshchat/consumer/sdk/j/cr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/j/bg$b;


# instance fields
.field public final synthetic jZ:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/freshchat/consumer/sdk/j/cr;->jZ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gy()Lcom/freshchat/consumer/sdk/Event;
    .locals 1

    iget-boolean v0, p0, Lcom/freshchat/consumer/sdk/j/cr;->jZ:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventShowOriginalClick:Lcom/freshchat/consumer/sdk/Event$EventName;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/freshchat/consumer/sdk/Event$EventName;->FCEventHideOriginalClick:Lcom/freshchat/consumer/sdk/Event$EventName;

    :goto_0
    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/bg;->b(Lcom/freshchat/consumer/sdk/Event$EventName;)Lcom/freshchat/consumer/sdk/j/bg$a;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/bg$a;->a(Lcom/freshchat/consumer/sdk/j/bg$a;)Lcom/freshchat/consumer/sdk/Event;

    move-result-object v0

    return-object v0
.end method
