.class public final Le/a/v/a/g0/d;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/g0/b;
.implements Le/a/v/a/s0/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\u0006J\u000f\u0010\t\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\u0006J\u000f\u0010\n\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0006J\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\"\u0010\u0015\u001a\u00020\u000f8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0018\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Le/a/v/a/g0/d;",
        "Landroid/widget/FrameLayout;",
        "Le/a/v/a/g0/b;",
        "Le/a/v/a/s0/a;",
        "Ls1/s;",
        "onAttachedToWindow",
        "()V",
        "onDetachedFromWindow",
        "c",
        "a",
        "b",
        "Le/a/v/a/s;",
        "detailsViewModel",
        "K0",
        "(Le/a/v/a/s;)V",
        "Le/a/v/a/g0/a;",
        "Le/a/v/a/g0/a;",
        "getPresenter",
        "()Le/a/v/a/g0/a;",
        "setPresenter",
        "(Le/a/v/a/g0/a;)V",
        "presenter",
        "Le/a/v/k/k;",
        "Le/a/v/k/k;",
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
.field public a:Le/a/v/a/g0/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/v/k/k;


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
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/v/l/b;

    invoke-interface {p2}, Le/a/v/l/b;->v()Le/a/v/l/a;

    move-result-object p2

    invoke-interface {p2, p0}, Le/a/v/l/a;->f(Le/a/v/a/g0/d;)V

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 5
    sget p2, Lcom/truecaller/details_view/R$layout;->view_moderation_notice:I

    invoke-virtual {p1, p2, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string p2, "rootView"

    .line 7
    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    check-cast p1, Landroid/widget/TextView;

    .line 9
    new-instance p2, Le/a/v/k/k;

    invoke-direct {p2, p1, p1}, Le/a/v/k/k;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-string p1, "ViewModerationNoticeBind\u2026rom(context), this, true)"

    .line 10
    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Le/a/v/a/g0/d;->b:Le/a/v/k/k;

    return-void
.end method


# virtual methods
.method public K0(Le/a/v/a/s;)V
    .locals 3

    const-string v0, "detailsViewModel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/v/a/g0/d;->a:Le/a/v/a/g0/a;

    if-eqz v1, :cond_5

    check-cast v1, Le/a/v/a/g0/c;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Le/a/v/a/s;->b:Le/a/v/a/d;

    .line 4
    sget-object v2, Le/a/v/a/d$d;->a:Le/a/v/a/d$d;

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Le/a/v/a/d$g;->a:Le/a/v/a/d$g;

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    instance-of v0, v0, Le/a/v/a/d$f$d;

    if-eqz v0, :cond_2

    .line 7
    :goto_0
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/g0/b;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/v/a/g0/b;->b()V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 9
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->B0()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/g0/b;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/v/a/g0/b;->a()V

    goto :goto_1

    .line 11
    :cond_3
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/g0/b;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/v/a/g0/b;->c()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string p1, "presenter"

    .line 12
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a()V
    .locals 2

    .line 1
    invoke-static {p0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Le/a/v/a/g0/d;->b:Le/a/v/k/k;

    iget-object v0, v0, Le/a/v/k/k;->a:Landroid/widget/TextView;

    sget v1, Lcom/truecaller/details_view/R$string;->details_view_moderation_notice_unmoderated:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-static {p0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Le/a/v/a/g0/d;->b:Le/a/v/k/k;

    iget-object v0, v0, Le/a/v/k/k;->a:Landroid/widget/TextView;

    sget v1, Lcom/truecaller/details_view/R$string;->details_view_verified_notice:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-static {p0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Le/a/v/a/g0/d;->b:Le/a/v/k/k;

    iget-object v0, v0, Le/a/v/k/k;->a:Landroid/widget/TextView;

    sget v1, Lcom/truecaller/details_view/R$string;->details_view_moderation_notice_moderated:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public final getPresenter()Le/a/v/a/g0/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/a/g0/d;->a:Le/a/v/a/g0/a;

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
    iget-object v0, p0, Le/a/v/a/g0/d;->a:Le/a/v/a/g0/a;

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
    iget-object v0, p0, Le/a/v/a/g0/d;->a:Le/a/v/a/g0/a;

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

.method public final setPresenter(Le/a/v/a/g0/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/v/a/g0/d;->a:Le/a/v/a/g0/a;

    return-void
.end method
