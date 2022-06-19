.class public Lcom/freshchat/consumer/sdk/a/w$a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/a/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final jE:Landroid/widget/TextView;

.field private final jF:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_label_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/freshchat/consumer/sdk/a/w$a;->jE:Landroid/widget/TextView;

    sget v0, Lcom/freshchat/consumer/sdk/R$id;->freshchat_bot_list_view_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/freshchat/consumer/sdk/a/w$a;->jF:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public fg()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/w$a;->jE:Landroid/widget/TextView;

    return-object v0
.end method

.method public fh()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/a/w$a;->jF:Landroid/view/View;

    return-object v0
.end method
