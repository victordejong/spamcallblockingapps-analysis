.class public final Le/a/a/c/o6;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/n6;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public U3(Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;Le/a/a/c/m6;)V
    .locals 2

    const-string v0, "loadHistoryType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadHistoryClickListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;->FAIL:Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0a071e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Le/a/a/c/o6$a;

    invoke-direct {v1, p2, p1}, Le/a/a/c/o6$a;-><init>(Le/a/a/c/m6;Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public X2(Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;)V
    .locals 4

    const-string v0, "loadHistoryType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0a0da5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById<Vi\u2026(R.id.progress_indicator)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;->PROGRESS:Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0a071f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById<View>(R.id.failed_indicator)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;->FAIL:Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;

    if-ne p1, v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 3
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0a0434

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "itemView.findViewById<Vi\u2026(R.id.complete_indicator)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;->COMPLETE:Lcom/truecaller/messaging/conversation/adapter/loader/LoadHistoryType;

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-static {v0, v2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method
