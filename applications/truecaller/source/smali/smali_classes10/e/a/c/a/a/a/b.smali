.class public final Le/a/c/a/a/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/c/a/a/a/c;


# direct methods
.method public constructor <init>(Le/a/c/a/a/a/c;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/a/a/b;->a:Le/a/c/a/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Le/a/c/a/a/a/b;->a:Le/a/c/a/a/a/c;

    invoke-virtual {v0}, Ln3/b0/a/p;->getCurrentList()Ljava/util/List;

    move-result-object v0

    const-string v1, "currentList"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x0

    if-ltz v2, :cond_6

    check-cast v3, Lcom/truecaller/insights/ui/models/AdapterItem;

    .line 3
    iget-object v6, p0, Le/a/c/a/a/a/b;->a:Le/a/c/a/a/a/c;

    .line 4
    iget-object v6, v6, Le/a/c/a/a/a/c;->a:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v6, :cond_0

    .line 5
    invoke-virtual {v6, v2}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object v5

    .line 6
    :cond_0
    instance-of v6, v3, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    if-eqz v6, :cond_5

    instance-of v6, v5, Le/a/c/a/a/a/a/a;

    if-eqz v6, :cond_5

    .line 7
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    .line 8
    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    .line 9
    iget-object v7, p0, Le/a/c/a/a/a/b;->a:Le/a/c/a/a/a/c;

    .line 10
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Integer;

    .line 11
    sget v9, Lcom/truecaller/insights/ui/R$layout;->banner_item:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    sget v9, Lcom/truecaller/insights/ui/R$layout;->layout_mini_banner_item:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    if-eqz v2, :cond_2

    if-ne v2, v10, :cond_1

    .line 12
    invoke-virtual {v7, v1}, Le/a/c/a/a/a/c;->getItemViewType(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8, v2}, Le/q/f/a/d/a;->Q([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/truecaller/insights/ui/R$dimen;->dp24:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_2

    .line 14
    :cond_2
    :goto_1
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/truecaller/insights/ui/R$dimen;->first_title_margin_top:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 15
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v7

    .line 16
    iget-object v8, p0, Le/a/c/a/a/a/b;->a:Le/a/c/a/a/a/c;

    check-cast v3, Lcom/truecaller/insights/ui/models/AdapterItem$i;

    .line 17
    iget v3, v3, Lcom/truecaller/insights/ui/models/AdapterItem$i;->a:I

    .line 18
    sget v9, Lcom/truecaller/insights/ui/R$string;->reminders:I

    if-ne v3, v9, :cond_3

    goto :goto_3

    :cond_3
    move v10, v1

    .line 19
    :goto_3
    invoke-static {v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v10, :cond_4

    .line 20
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/truecaller/insights/ui/R$dimen;->dp8:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    goto :goto_4

    .line 21
    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v8, Lcom/truecaller/insights/ui/R$dimen;->first_title_margin_top:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 22
    :goto_4
    invoke-virtual {v5, v6, v2, v7, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_5
    move v2, v4

    goto/16 :goto_0

    .line 23
    :cond_6
    invoke-static {}, Ls1/u/i;->N0()V

    throw v5

    :cond_7
    return-void
.end method
