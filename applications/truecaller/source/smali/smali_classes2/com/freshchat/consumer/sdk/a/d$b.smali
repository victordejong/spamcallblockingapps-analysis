.class public Lcom/freshchat/consumer/sdk/a/d$b;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final mW:Lcom/freshchat/consumer/sdk/ui/CarouselCardView;

.field private final no:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_carousel_card:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freshchat/consumer/sdk/ui/CarouselCardView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$b;->mW:Lcom/freshchat/consumer/sdk/ui/CarouselCardView;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/d$b;->no:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public aZ()Lcom/freshchat/consumer/sdk/ui/CarouselCardView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$b;->mW:Lcom/freshchat/consumer/sdk/ui/CarouselCardView;

    return-object v0
.end method

.method public ba()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$b;->no:Landroid/widget/TextView;

    return-object v0
.end method
