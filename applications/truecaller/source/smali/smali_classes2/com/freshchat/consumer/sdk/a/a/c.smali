.class public Lcom/freshchat/consumer/sdk/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic qW:Lcom/freshchat/consumer/sdk/f/e;

.field public final synthetic qX:Lcom/freshchat/consumer/sdk/a/a/b;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/a/a/b;Lcom/freshchat/consumer/sdk/f/e;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/a/c;->qX:Lcom/freshchat/consumer/sdk/a/a/b;

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/a/c;->qW:Lcom/freshchat/consumer/sdk/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/a/c;->qW:Lcom/freshchat/consumer/sdk/f/e;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/freshchat/consumer/sdk/f/e;->iC()V

    :cond_0
    return-void
.end method
