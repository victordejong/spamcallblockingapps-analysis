.class public final Le/a/v/a/f0/d;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/f0/b;
.implements Le/a/v/a/s0/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0006J\u0017\u0010\u000c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0017\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\"\u0010\u0018\u001a\u00020\u00128\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001b\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u001a\u00a8\u0006\u001c"
    }
    d2 = {
        "Le/a/v/a/f0/d;",
        "Landroid/widget/FrameLayout;",
        "Le/a/v/a/f0/b;",
        "Le/a/v/a/s0/a;",
        "Ls1/s;",
        "onAttachedToWindow",
        "()V",
        "onDetachedFromWindow",
        "a",
        "c",
        "",
        "url",
        "b",
        "(Ljava/lang/String;)V",
        "Le/a/v/a/s;",
        "detailsViewModel",
        "K0",
        "(Le/a/v/a/s;)V",
        "Le/a/v/a/f0/a;",
        "Le/a/v/a/f0/a;",
        "getPresenter",
        "()Le/a/v/a/f0/a;",
        "setPresenter",
        "(Le/a/v/a/f0/a;)V",
        "presenter",
        "Le/a/v/k/j;",
        "Le/a/v/k/j;",
        "binding",
        "details-view_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/v/a/f0/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final b:Le/a/v/k/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    and-int/lit8 p2, p4, 0x2

    const/4 p2, 0x0

    and-int/lit8 p4, p4, 0x4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move p3, v0

    :cond_0
    const-string p4, "context"

    .line 1
    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 4
    sget p3, Lcom/truecaller/details_view/R$layout;->view_learn_more:I

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 5
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string p3, "rootView"

    .line 6
    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    check-cast p2, Landroid/widget/TextView;

    .line 8
    new-instance p3, Le/a/v/k/j;

    invoke-direct {p3, p2, p2}, Le/a/v/k/j;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-string p2, "ViewLearnMoreBinding.inf\u2026rom(context), this, true)"

    .line 9
    invoke-static {p3, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p3, p0, Le/a/v/a/f0/d;->b:Le/a/v/k/j;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/v/l/b;

    invoke-interface {p1}, Le/a/v/l/b;->v()Le/a/v/l/a;

    move-result-object p1

    invoke-interface {p1, p0}, Le/a/v/l/a;->s(Le/a/v/a/f0/d;)V

    return-void
.end method


# virtual methods
.method public K0(Le/a/v/a/s;)V
    .locals 5

    const-string v0, "detailsViewModel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/v/a/f0/d;->a:Le/a/v/a/f0/a;

    if-eqz v1, :cond_2

    check-cast v1, Le/a/v/a/f0/c;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, v1, Le/a/v/a/f0/c;->b:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, v1, Le/a/v/a/f0/c;->c:Le/a/v/a/z/a;

    .line 6
    iget-object v0, p1, Le/a/v/a/z/a;->a:Ljava/lang/String;

    sget-object v2, Lcom/truecaller/analytics/common/event/ViewActionEvent$LearnMoreSubAction;->LEARN_MORE:Lcom/truecaller/analytics/common/event/ViewActionEvent$LearnMoreSubAction;

    const-string v3, "context"

    .line 7
    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "subAction"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent$LearnMoreSubAction;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Shown"

    const-string v4, "action"

    .line 9
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v4, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v4, v3, v2, v0}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, p1, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v4, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 12
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/f0/b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/v/a/f0/b;->a()V

    goto :goto_0

    .line 13
    :cond_0
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/f0/b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/v/a/f0/b;->c()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string p1, "presenter"

    .line 14
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a()V
    .locals 2

    .line 1
    invoke-static {p0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Le/a/v/a/f0/d;->b:Le/a/v/k/j;

    iget-object v0, v0, Le/a/v/k/j;->a:Landroid/widget/TextView;

    new-instance v1, Le/a/v/a/f0/d$a;

    invoke-direct {v1, p0}, Le/a/v/a/f0/d$a;-><init>(Le/a/v/a/f0/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Le/a/m0/a1$k;->a1(Landroid/view/View;)Ln3/b/a/h;

    move-result-object v0

    invoke-static {p1, v0}, Le/a/p5/s0/g;->Q0(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-static {p0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method

.method public final getPresenter()Le/a/v/a/f0/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/a/f0/d;->a:Le/a/v/a/f0/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Le/a/v/a/f0/d;->a:Le/a/v/a/f0/a;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/u2/a/b;

    .line 3
    iput-object p0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Le/a/v/a/f0/d;->a:Le/a/v/a/f0/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Le/a/u2/a/b;

    .line 3
    iput-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final setPresenter(Le/a/v/a/f0/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/v/a/f0/d;->a:Le/a/v/a/f0/a;

    return-void
.end method
