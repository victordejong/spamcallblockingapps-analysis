.class public Lcom/freshchat/consumer/sdk/service/e/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/service/e/j;


# instance fields
.field private final ej:Ljava/lang/String;

.field private final jS:Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;

.field private final referenceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/service/e/ap;->ej:Ljava/lang/String;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/service/e/ap;->jS:Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/service/e/ap;->referenceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/ap;->ej:Ljava/lang/String;

    return-object v0
.end method

.method public fo()Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/ap;->jS:Lcom/freshchat/consumer/sdk/beans/fragment/CallbackButtonFragment;

    return-object v0
.end method

.method public getReferenceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/service/e/ap;->referenceId:Ljava/lang/String;

    return-object v0
.end method
