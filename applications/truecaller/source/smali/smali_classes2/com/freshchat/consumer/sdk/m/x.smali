.class public Lcom/freshchat/consumer/sdk/m/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic pp:Lcom/freshchat/consumer/sdk/m/t;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/m/t;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/m/x;->pp:Lcom/freshchat/consumer/sdk/m/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/x;->pp:Lcom/freshchat/consumer/sdk/m/t;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/m/t;->b(Lcom/freshchat/consumer/sdk/m/t;)Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->k(I)Z

    return-void
.end method
