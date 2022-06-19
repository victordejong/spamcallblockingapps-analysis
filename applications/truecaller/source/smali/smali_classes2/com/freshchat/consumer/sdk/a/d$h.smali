.class public Lcom/freshchat/consumer/sdk/a/d$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field private final gz:Lcom/freshchat/consumer/sdk/beans/Message;

.field private final oq:Lcom/freshchat/consumer/sdk/a/d$g;

.field public final synthetic ot:Lcom/freshchat/consumer/sdk/a/d;

.field private final qE:Z


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/a/d;Lcom/freshchat/consumer/sdk/beans/Message;Lcom/freshchat/consumer/sdk/a/d$g;Z)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/d$h;->ot:Lcom/freshchat/consumer/sdk/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p4, p0, Lcom/freshchat/consumer/sdk/a/d$h;->qE:Z

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/d$h;->gz:Lcom/freshchat/consumer/sdk/beans/Message;

    iput-object p3, p0, Lcom/freshchat/consumer/sdk/a/d$h;->oq:Lcom/freshchat/consumer/sdk/a/d$g;

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/d$h;->oq:Lcom/freshchat/consumer/sdk/a/d$g;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$h;->gz:Lcom/freshchat/consumer/sdk/beans/Message;

    iget-boolean v1, p0, Lcom/freshchat/consumer/sdk/a/d$h;->qE:Z

    invoke-interface {p1, v0, v1}, Lcom/freshchat/consumer/sdk/a/d$g;->a(Lcom/freshchat/consumer/sdk/beans/Message;Z)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
