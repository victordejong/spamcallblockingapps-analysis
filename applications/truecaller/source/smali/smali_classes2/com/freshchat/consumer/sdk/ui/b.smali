.class public Lcom/freshchat/consumer/sdk/ui/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic nP:Lcom/freshchat/consumer/sdk/ui/CarouselCardView;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/ui/CarouselCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/ui/b;->nP:Lcom/freshchat/consumer/sdk/ui/CarouselCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/ui/b;->nP:Lcom/freshchat/consumer/sdk/ui/CarouselCardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/ui/b;->nP:Lcom/freshchat/consumer/sdk/ui/CarouselCardView;

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->b(Lcom/freshchat/consumer/sdk/ui/CarouselCardView;)Lcom/freshchat/consumer/sdk/k/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/i;->hq()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/freshchat/consumer/sdk/util/DeepLinkUtils;->b(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/ui/b;->nP:Lcom/freshchat/consumer/sdk/ui/CarouselCardView;

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;->b(Lcom/freshchat/consumer/sdk/ui/CarouselCardView;)Lcom/freshchat/consumer/sdk/k/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/i;->hs()V

    return-void
.end method
