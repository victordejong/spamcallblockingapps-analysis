.class public Lcom/freshchat/consumer/sdk/a/l$e;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic oK:Lcom/freshchat/consumer/sdk/a/l;

.field private final oL:Lcom/freshchat/consumer/sdk/ui/NonScrollableGridView;

.field private final oM:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/freshchat/consumer/sdk/a/l;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/l$e;->oK:Lcom/freshchat/consumer/sdk/a/l;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    sget p1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_part_of_day_header:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/l$e;->oM:Landroid/widget/TextView;

    sget p1, Lcom/freshchat/consumer/sdk/R$id;->freshchat_calendar_timeslots_grid_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/freshchat/consumer/sdk/ui/NonScrollableGridView;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/l$e;->oL:Lcom/freshchat/consumer/sdk/ui/NonScrollableGridView;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/freshchat/consumer/sdk/a/l;Landroid/view/View;Lcom/freshchat/consumer/sdk/a/m;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/freshchat/consumer/sdk/a/l$e;-><init>(Lcom/freshchat/consumer/sdk/a/l;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/a/l$e;Lcom/freshchat/consumer/sdk/k/m;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/freshchat/consumer/sdk/a/l$e;->a(Lcom/freshchat/consumer/sdk/k/m;)V

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/k/m;)V
    .locals 2

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/l$e;->oM:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/m;->ic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/l$e;->oL:Lcom/freshchat/consumer/sdk/ui/NonScrollableGridView;

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/a/l$e;->oK:Lcom/freshchat/consumer/sdk/a/l;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/a/l;->a(Lcom/freshchat/consumer/sdk/a/l;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    new-instance v0, Lcom/freshchat/consumer/sdk/a/i;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/k/m;->id()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/freshchat/consumer/sdk/a/l$e;->oK:Lcom/freshchat/consumer/sdk/a/l;

    invoke-static {v1}, Lcom/freshchat/consumer/sdk/a/l;->b(Lcom/freshchat/consumer/sdk/a/l;)Lcom/freshchat/consumer/sdk/a/i$a;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/freshchat/consumer/sdk/a/i;-><init>(Ljava/util/List;Lcom/freshchat/consumer/sdk/a/i$a;)V

    iget-object p1, p0, Lcom/freshchat/consumer/sdk/a/l$e;->oL:Lcom/freshchat/consumer/sdk/ui/NonScrollableGridView;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
