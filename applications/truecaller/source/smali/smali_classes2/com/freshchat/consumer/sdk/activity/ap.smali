.class public Lcom/freshchat/consumer/sdk/activity/ap;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "SourceFile"


# instance fields
.field public final synthetic pG:I

.field public final synthetic pv:Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/activity/ap;->pv:Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;

    iput p2, p0, Lcom/freshchat/consumer/sdk/activity/ap;->pG:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/activity/ap;->pv:Lcom/freshchat/consumer/sdk/activity/FAQCategoriesActivity;

    iget-object v0, v0, Lcom/freshchat/consumer/sdk/activity/ah;->pe:Lcom/freshchat/consumer/sdk/k/n;

    check-cast v0, Lcom/freshchat/consumer/sdk/k/t;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/k/t;->jt()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/freshchat/consumer/sdk/j/k;->b(Ljava/util/Collection;)I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget p1, p0, Lcom/freshchat/consumer/sdk/activity/ap;->pG:I

    return p1
.end method
