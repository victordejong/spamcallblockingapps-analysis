.class public Lcom/freshchat/consumer/sdk/a/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic ck:I

.field public final synthetic qT:Lcom/freshchat/consumer/sdk/a/s;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/a/s;I)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/u;->qT:Lcom/freshchat/consumer/sdk/a/s;

    iput p2, p0, Lcom/freshchat/consumer/sdk/a/u;->ck:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/u;->qT:Lcom/freshchat/consumer/sdk/a/s;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/a/s;->a(Lcom/freshchat/consumer/sdk/a/s;)Lcom/freshchat/consumer/sdk/a/s$b;

    move-result-object v0

    iget v1, p0, Lcom/freshchat/consumer/sdk/a/u;->ck:I

    invoke-interface {v0, p1, v1}, Lcom/freshchat/consumer/sdk/a/s$b;->d(Landroid/view/View;I)V

    return-void
.end method
