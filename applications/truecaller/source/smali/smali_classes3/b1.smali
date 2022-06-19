.class public final Lb1;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lb1;->a:I

    iput-object p2, p0, Lb1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 11

    iget v0, p0, Lb1;->a:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    const-string v0, "isOutdated"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lb1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    .line 4
    sget-object v0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->m:[Ls1/a/l;

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->QA()Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lb1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Ln3/v/b0;

    move-result-object v0

    const-string v2, "viewLifecycleOwner"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "lifecycleOwner"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v2, p1, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->m:Le/a/c/c0/o;

    invoke-interface {v2}, Le/a/c/c0/o;->Y()Landroidx/lifecycle/LiveData;

    move-result-object v2

    new-instance v4, Le/a/c/a/c/h/d;

    invoke-direct {v4, p1, v0}, Le/a/c/a/c/h/d;-><init>(Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;Ln3/v/b0;)V

    invoke-virtual {v2, v0, v4}, Landroidx/lifecycle/LiveData;->f(Ln3/v/b0;Ln3/v/l0;)V

    .line 9
    invoke-static {p1}, Landroid/support/v4/media/session/MediaSessionCompat;->C0(Ln3/v/y0;)Lq3/a/i0;

    move-result-object v5

    new-instance v8, Le/a/c/a/c/h/f;

    invoke-direct {v8, p1, v3}, Le/a/c/a/c/h/f;-><init>(Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;Ls1/w/d;)V

    const/4 v7, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 10
    iget-object p1, p0, Lb1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    .line 11
    invoke-virtual {p1}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->QA()Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    move-result-object p1

    .line 12
    iget-object p1, p1, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->m:Le/a/c/c0/o;

    invoke-interface {p1, v1}, Le/a/c/c0/o;->g(Z)V

    :cond_0
    return-void

    .line 13
    :cond_1
    throw v3

    .line 14
    :cond_2
    check-cast p1, Ljava/lang/Boolean;

    .line 15
    iget-object v0, p0, Lb1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Ln3/v/u;

    move-result-object v0

    const-string v2, "lifecycle"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ln3/v/c0;

    .line 16
    iget-object v0, v0, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 17
    sget-object v2, Ln3/v/u$b;->e:Ln3/v/u$b;

    const-string v3, "it"

    if-ne v0, v2, :cond_3

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    iget-object p1, p0, Lb1;->b:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    .line 19
    sget-object v0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->m:[Ls1/a/l;

    .line 20
    invoke-virtual {p1}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->QA()Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    move-result-object p1

    .line 21
    iget-object p1, p1, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->l:Le/a/c/b/j;

    invoke-interface {p1, v1}, Le/a/c/b/j;->P(Z)V

    goto :goto_0

    .line 22
    :cond_3
    iget-object v0, p0, Lb1;->b:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;

    .line 23
    sget-object v2, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->m:[Ls1/a/l;

    .line 24
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/important/view/BusinessInsightsFragment;->QA()Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;

    move-result-object v0

    .line 25
    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 26
    iget-object v0, v0, Lcom/truecaller/insights/ui/important/presentation/BusinessInsightsViewModel;->r:Le/a/c/h/d;

    invoke-interface {v0, p1, v1}, Le/a/c/h/d;->a(ZI)V

    :goto_0
    return-void
.end method
