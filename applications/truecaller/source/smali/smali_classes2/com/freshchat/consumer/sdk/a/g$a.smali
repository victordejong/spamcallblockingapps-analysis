.class public Lcom/freshchat/consumer/sdk/a/g$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/a/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private final lT:Lcom/freshchat/consumer/sdk/ui/CarouselCardView;

.field public final synthetic lX:Lcom/freshchat/consumer/sdk/a/g;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/a/g;Lcom/freshchat/consumer/sdk/ui/CarouselCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/g$a;->lX:Lcom/freshchat/consumer/sdk/a/g;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/freshchat/consumer/sdk/a/g$a;->lT:Lcom/freshchat/consumer/sdk/ui/CarouselCardView;

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/a/g$a;)Lcom/freshchat/consumer/sdk/ui/CarouselCardView;
    .locals 0

    iget-object p0, p0, Lcom/freshchat/consumer/sdk/a/g$a;->lT:Lcom/freshchat/consumer/sdk/ui/CarouselCardView;

    return-object p0
.end method
