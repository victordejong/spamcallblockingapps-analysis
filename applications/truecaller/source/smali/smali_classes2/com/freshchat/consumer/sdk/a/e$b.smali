.class public Lcom/freshchat/consumer/sdk/a/e$b;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic na:Lcom/freshchat/consumer/sdk/a/e;

.field private final nb:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/freshchat/consumer/sdk/a/e;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/e$b;->na:Lcom/freshchat/consumer/sdk/a/e;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    sget p1, Lcom/freshchat/consumer/sdk/R$id;->drop_down_list_item_text:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/e$b;->nb:Landroid/widget/TextView;

    return-void
.end method

.method public static synthetic a(Lcom/freshchat/consumer/sdk/a/e$b;)Landroid/widget/TextView;
    .locals 0

    invoke-direct {p0}, Lcom/freshchat/consumer/sdk/a/e$b;->gX()Landroid/widget/TextView;

    move-result-object p0

    return-object p0
.end method

.method private gX()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/e$b;->nb:Landroid/widget/TextView;

    return-object v0
.end method
