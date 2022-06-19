.class public Lcom/freshchat/consumer/sdk/m/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic cV:Landroid/view/View;

.field public final synthetic pf:Lcom/freshchat/consumer/sdk/m/j;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/m/j;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/m/k;->pf:Lcom/freshchat/consumer/sdk/m/j;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/m/k;->cV:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/m/k;->pf:Lcom/freshchat/consumer/sdk/m/j;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/m/a;->hB()Lcom/freshchat/consumer/sdk/m/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/m/k;->cV:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/freshchat/consumer/sdk/m/y;->R(I)V

    :cond_0
    return-void
.end method
