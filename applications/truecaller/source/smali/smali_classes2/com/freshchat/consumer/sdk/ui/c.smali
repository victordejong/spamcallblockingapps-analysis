.class public Lcom/freshchat/consumer/sdk/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic nP:Lcom/freshchat/consumer/sdk/ui/CarouselCardView;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/ui/CarouselCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/ui/c;->nP:Lcom/freshchat/consumer/sdk/ui/CarouselCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/ui/c;->nP:Lcom/freshchat/consumer/sdk/ui/CarouselCardView;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->b(Lcom/freshchat/consumer/sdk/ui/CarouselCardView;)Lcom/freshchat/consumer/sdk/k/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/i;->hn()Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/c;->nP:Lcom/freshchat/consumer/sdk/ui/CarouselCardView;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->c(Lcom/freshchat/consumer/sdk/ui/CarouselCardView;)Lcom/freshchat/consumer/sdk/ui/CarouselCardView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/c;->nP:Lcom/freshchat/consumer/sdk/ui/CarouselCardView;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->c(Lcom/freshchat/consumer/sdk/ui/CarouselCardView;)Lcom/freshchat/consumer/sdk/ui/CarouselCardView$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/freshchat/consumer/sdk/ui/CarouselCardView$a;->a(Lcom/freshchat/consumer/sdk/beans/fragment/CarouselCardDefaultFragment;)V

    :cond_0
    return-void
.end method
