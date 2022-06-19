.class public Lcom/freshchat/consumer/sdk/j/ak$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic iC:Lcom/freshchat/consumer/sdk/j/ak;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/j/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/j/ak$1;->iC:Lcom/freshchat/consumer/sdk/j/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->performLongClick()Z

    const/4 p1, 0x1

    return p1
.end method
