.class public final synthetic Le/a/c/a/n/c/d/b$a;
.super Ls1/z/c/j;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/n/c/d/b;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/j;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/c/a/n/c/d/b;)V
    .locals 7

    const-class v3, Le/a/c/a/n/c/d/b;

    const/4 v1, 0x1

    const-string v4, "onCollapseStateChanged"

    const-string v5, "onCollapseStateChanged(I)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Ls1/z/c/j;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Ls1/z/c/b;->b:Ljava/lang/Object;

    check-cast v0, Le/a/c/a/n/c/d/b;

    .line 3
    sget v1, Lcom/truecaller/insights/ui/R$string;->reminders_details_page_upcoming:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne p1, v1, :cond_5

    .line 4
    iget-object v1, v0, Le/a/c/a/n/c/d/b;->c:Le/a/c/a/n/c/d/a;

    .line 5
    iget-boolean v4, v1, Le/a/c/a/n/c/d/a;->b:Z

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v1, Le/a/c/a/n/c/d/a;->b:Z

    .line 6
    iget-object v1, v0, Ln3/z/w1;->a:Ln3/z/b;

    invoke-virtual {v1}, Ln3/z/b;->a()Ln3/z/q1;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    if-ltz v2, :cond_3

    check-cast v4, Lcom/truecaller/insights/ui/models/AdapterItem;

    .line 8
    instance-of v6, v4, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    if-eqz v6, :cond_0

    move-object v6, v4

    check-cast v6, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    .line 9
    iget-object v6, v6, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    .line 10
    instance-of v6, v6, Le/a/c/a/l/b$g;

    if-nez v6, :cond_1

    .line 11
    :cond_0
    instance-of v4, v4, Lcom/truecaller/insights/ui/models/AdapterItem$b;

    if-eqz v4, :cond_2

    .line 12
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    :cond_2
    move v2, v5

    goto :goto_0

    .line 13
    :cond_3
    invoke-static {}, Ls1/u/i;->N0()V

    throw v3

    .line 14
    :cond_4
    iget-object v1, v0, Le/a/c/a/n/c/d/b;->c:Le/a/c/a/n/c/d/a;

    .line 15
    iget-boolean v2, v1, Le/a/c/a/n/c/d/a;->b:Z

    goto/16 :goto_3

    .line 16
    :cond_5
    sget v1, Lcom/truecaller/insights/ui/R$string;->reminders_details_page_past:I

    if-ne p1, v1, :cond_e

    .line 17
    iget-object v1, v0, Le/a/c/a/n/c/d/b;->c:Le/a/c/a/n/c/d/a;

    .line 18
    iget-boolean v4, v1, Le/a/c/a/n/c/d/a;->a:Z

    xor-int/lit8 v4, v4, 0x1

    iput-boolean v4, v1, Le/a/c/a/n/c/d/a;->a:Z

    .line 19
    iget-object v1, v0, Ln3/z/w1;->a:Ln3/z/b;

    invoke-virtual {v1}, Ln3/z/b;->a()Ln3/z/q1;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 20
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v4, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_c

    check-cast v5, Lcom/truecaller/insights/ui/models/AdapterItem;

    .line 21
    instance-of v7, v5, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    if-eqz v7, :cond_6

    move-object v7, v5

    check-cast v7, Lcom/truecaller/insights/ui/models/AdapterItem$j;

    .line 22
    iget-object v7, v7, Lcom/truecaller/insights/ui/models/AdapterItem$j;->a:Le/a/c/a/l/b;

    .line 23
    instance-of v7, v7, Le/a/c/a/l/b$e;

    if-nez v7, :cond_7

    .line 24
    :cond_6
    instance-of v7, v5, Lcom/truecaller/insights/ui/models/AdapterItem$d;

    if-nez v7, :cond_7

    instance-of v7, v5, Lcom/truecaller/insights/ui/models/AdapterItem$b;

    if-eqz v7, :cond_8

    .line 25
    :cond_7
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemChanged(I)V

    .line 26
    :cond_8
    instance-of v7, v5, Lcom/truecaller/insights/ui/models/AdapterItem$b;

    if-eqz v7, :cond_b

    check-cast v5, Lcom/truecaller/insights/ui/models/AdapterItem$b;

    .line 27
    iget v5, v5, Lcom/truecaller/insights/ui/models/AdapterItem$b;->b:I

    .line 28
    sget v7, Lcom/truecaller/insights/ui/R$string;->reminders_details_page_past:I

    if-ne v5, v7, :cond_b

    iget-object v5, v0, Le/a/c/a/n/c/d/b;->c:Le/a/c/a/n/c/d/a;

    .line 29
    iget-boolean v5, v5, Le/a/c/a/n/c/d/a;->a:Z

    if-nez v5, :cond_b

    .line 30
    iget-object v5, v0, Le/a/c/a/n/c/d/b;->d:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v5

    goto :goto_2

    :cond_9
    move-object v5, v3

    :goto_2
    instance-of v7, v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-nez v7, :cond_a

    move-object v5, v3

    :cond_a
    check-cast v5, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v5, :cond_b

    invoke-virtual {v5, v4, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    :cond_b
    move v4, v6

    goto :goto_1

    .line 31
    :cond_c
    invoke-static {}, Ls1/u/i;->N0()V

    throw v3

    .line 32
    :cond_d
    iget-object v1, v0, Le/a/c/a/n/c/d/b;->c:Le/a/c/a/n/c/d/a;

    .line 33
    iget-boolean v2, v1, Le/a/c/a/n/c/d/a;->a:Z

    .line 34
    :cond_e
    :goto_3
    iget-object v0, v0, Le/a/c/a/n/c/d/b;->e:Ls1/z/b/p;

    if-eqz v0, :cond_f

    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_f
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
