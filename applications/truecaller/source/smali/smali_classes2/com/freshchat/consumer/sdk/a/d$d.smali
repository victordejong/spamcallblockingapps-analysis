.class public Lcom/freshchat/consumer/sdk/a/d$d;
.super Lcom/freshchat/consumer/sdk/a/d$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field private final cG:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/a/d$e;-><init>(Landroid/view/View;)V

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_message_carousel_recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/d$d;->cG:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public ay()Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/d$d;->cG:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method
