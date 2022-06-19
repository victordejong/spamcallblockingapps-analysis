.class public final synthetic Le/a/e/c/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/y;->a:Le/a/e/c/s1;

    iput-object p2, p0, Le/a/e/c/y;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Le/a/e/c/y;->a:Le/a/e/c/s1;

    iget-object v1, p0, Le/a/e/c/y;->b:Landroid/view/View;

    if-nez v1, :cond_0

    .line 1
    invoke-virtual {v0}, Le/a/e/x0;->SA()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v2, v0, Le/a/e/c/s1;->k:Le/a/e/c/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v3

    new-instance v4, Le/a/e/c/p0;

    invoke-direct {v4, v0}, Le/a/e/c/p0;-><init>(Le/a/e/c/s1;)V

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "detailsShowcaseDismissedCallback"

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    if-nez v3, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v5, 0xb

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 6
    iget-object v6, v2, Le/a/e/c/a;->b:Ls1/g;

    invoke-interface {v6}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/p5/u0/a;

    .line 7
    sget-object v7, Lcom/truecaller/ui/details/DetailsShowcases;->VOIP:Lcom/truecaller/ui/details/DetailsShowcases;

    invoke-virtual {v2, v7, v5, v3}, Le/a/e/c/a;->b(Lcom/truecaller/ui/details/DetailsShowcases;Landroid/view/View;Landroid/app/Activity;)Le/a/p5/u0/d;

    move-result-object v5

    invoke-interface {v6, v5}, Le/a/p5/u0/a;->d(Le/a/p5/u0/d;)V

    .line 8
    iget-object v5, v2, Le/a/e/c/a;->b:Ls1/g;

    invoke-interface {v5}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/p5/u0/a;

    .line 9
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/16 v5, 0xd

    .line 10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    iget-object v5, v2, Le/a/e/c/a;->c:Ls1/g;

    invoke-interface {v5}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/p5/u0/a;

    .line 12
    sget-object v6, Lcom/truecaller/ui/details/DetailsShowcases;->CONTEXT_CALL:Lcom/truecaller/ui/details/DetailsShowcases;

    invoke-virtual {v2, v6, v1, v3}, Le/a/e/c/a;->b(Lcom/truecaller/ui/details/DetailsShowcases;Landroid/view/View;Landroid/app/Activity;)Le/a/p5/u0/d;

    move-result-object v1

    invoke-interface {v5, v1}, Le/a/p5/u0/a;->d(Le/a/p5/u0/d;)V

    .line 13
    iget-object v1, v2, Le/a/e/c/a;->c:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/p5/u0/a;

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_3
    invoke-virtual {v2}, Le/a/e/c/a;->c()Le/a/p5/u0/b;

    move-result-object v1

    .line 16
    new-instance v2, Le/a/e/c/h2;

    invoke-direct {v2, v4}, Le/a/e/c/h2;-><init>(Le/a/v/a/n0/d;)V

    .line 17
    invoke-interface {v1, v0, v3, v2}, Le/a/p5/u0/b;->c(Ljava/util/List;Landroid/app/Activity;Le/a/p5/u0/e;)V

    :cond_4
    :goto_0
    return-void
.end method
