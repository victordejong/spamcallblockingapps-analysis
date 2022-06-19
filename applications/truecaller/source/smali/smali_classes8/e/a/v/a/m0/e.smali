.class public final Le/a/v/a/m0/e;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/s0/a;
.implements Le/a/v/a/m0/b;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u0006J\u0017\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u000fJ\u000f\u0010\u0012\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0006J\u0017\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u000fJ\u000f\u0010\u0015\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0015\u0010\u0006R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u0019\u0010#\u001a\u00020\u001e8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010 \u001a\u0004\u0008!\u0010\"\u00a8\u0006$"
    }
    d2 = {
        "Le/a/v/a/m0/e;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Le/a/v/a/s0/a;",
        "Le/a/v/a/m0/b;",
        "Ls1/s;",
        "onAttachedToWindow",
        "()V",
        "Le/a/v/a/s;",
        "detailsViewModel",
        "K0",
        "(Le/a/v/a/s;)V",
        "C0",
        "",
        "message",
        "H",
        "(Ljava/lang/String;)V",
        "buttonTitle",
        "s",
        "a0",
        "msg",
        "M",
        "onDetachedFromWindow",
        "Le/a/v/a/m0/a;",
        "u",
        "Le/a/v/a/m0/a;",
        "getPresenter",
        "()Le/a/v/a/m0/a;",
        "setPresenter",
        "(Le/a/v/a/m0/a;)V",
        "presenter",
        "Le/a/v/k/o;",
        "t",
        "Le/a/v/k/o;",
        "getBinding",
        "()Le/a/v/k/o;",
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
.field public final t:Le/a/v/k/o;

.field public u:Le/a/v/a/m0/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;III)V
    .locals 2

    and-int/lit8 p2, p5, 0x2

    const/4 p2, 0x0

    and-int/lit8 v0, p5, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p3, v1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v1

    :cond_1
    const-string p5, "context"

    .line 1
    invoke-static {p1, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 4
    sget p3, Lcom/truecaller/details_view/R$layout;->view_request_contact:I

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    sget p2, Lcom/truecaller/details_view/R$id;->requestContactDetailsBtn:I

    .line 6
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_2

    .line 7
    sget p2, Lcom/truecaller/details_view/R$id;->requestContactProgressBar:I

    .line 8
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/ProgressBar;

    if-eqz p4, :cond_2

    .line 9
    new-instance p2, Le/a/v/k/o;

    invoke-direct {p2, p0, p3, p4}, Le/a/v/k/o;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ProgressBar;)V

    const-string p3, "ViewRequestContactBindin\u2026ater.from(context), this)"

    .line 10
    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Le/a/v/a/m0/e;->t:Le/a/v/k/o;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/v/l/b;

    invoke-interface {p1}, Le/a/v/l/b;->v()Le/a/v/l/a;

    move-result-object p1

    invoke-interface {p1, p0}, Le/a/v/l/a;->o(Le/a/v/a/m0/e;)V

    return-void

    .line 12
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "Missing required view with ID: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public C0()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/m0/e;->t:Le/a/v/k/o;

    iget-object v0, v0, Le/a/v/k/o;->b:Landroid/widget/TextView;

    new-instance v1, Le/a/v/a/m0/e$a;

    invoke-direct {v1, p0}, Le/a/v/a/m0/e$a;-><init>(Le/a/v/a/m0/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    invoke-static {p0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void
.end method

.method public H(Ljava/lang/String;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v0

    .line 2
    new-instance v1, Ln3/b/a/g$a;

    sget v2, Lcom/truecaller/details_view/R$style;->StyleX_Dialog_Startup:I

    invoke-direct {v1, v0, v2}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;I)V

    .line 3
    sget v0, Lcom/truecaller/details_view/R$layout;->dialog_contact_request_sent:I

    invoke-virtual {v1, v0}, Ln3/b/a/g$a;->o(I)Ln3/b/a/g$a;

    .line 4
    invoke-virtual {v1}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    move-result-object v0

    .line 5
    sget v1, Lcom/truecaller/details_view/R$id;->subtitle:I

    invoke-virtual {v0, v1}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    sget p1, Lcom/truecaller/details_view/R$id;->btnDone:I

    invoke-virtual {v0, p1}, Ln3/b/a/p;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v1, Le/a/v/a/m0/e$b;

    invoke-direct {v1, v0}, Le/a/v/a/m0/e$b;-><init>(Ln3/b/a/g;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public K0(Le/a/v/a/s;)V
    .locals 2

    const-string v0, "detailsViewModel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/v/a/m0/e;->u:Le/a/v/a/m0/a;

    if-eqz v1, :cond_1

    check-cast v1, Le/a/v/a/m0/d;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, v1, Le/a/v/a/m0/d;->b:Le/a/v/a/s;

    .line 4
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/m0/b;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Le/a/v/a/m0/b;->C0()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "presenter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public M(Ljava/lang/String;)V
    .locals 2

    const-string v0, "msg"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public a0()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/v/a/m0/e;->t:Le/a/v/k/o;

    .line 2
    iget-object v1, v0, Le/a/v/k/o;->b:Landroid/widget/TextView;

    const-string v2, "requestContactDetailsBtn"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 3
    iget-object v1, v0, Le/a/v/k/o;->b:Landroid/widget/TextView;

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, v0, Le/a/v/k/o;->c:Landroid/widget/ProgressBar;

    .line 5
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v2, "indeterminateDrawable"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/truecaller/details_view/R$color;->white:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 6
    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void
.end method

.method public final getBinding()Le/a/v/k/o;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/a/m0/e;->t:Le/a/v/k/o;

    return-object v0
.end method

.method public final getPresenter()Le/a/v/a/m0/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/a/m0/e;->u:Le/a/v/a/m0/a;

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
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Le/a/v/a/m0/e;->u:Le/a/v/a/m0/a;

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
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Le/a/v/a/m0/e;->u:Le/a/v/a/m0/a;

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

.method public s(Ljava/lang/String;)V
    .locals 3

    const-string v0, "buttonTitle"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/m0/e;->t:Le/a/v/k/o;

    iget-object v0, v0, Le/a/v/k/o;->b:Landroid/widget/TextView;

    const-string v1, "binding.requestContactDetailsBtn"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 2
    iget-object v0, p0, Le/a/v/a/m0/e;->t:Le/a/v/k/o;

    iget-object v0, v0, Le/a/v/k/o;->b:Landroid/widget/TextView;

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Le/a/v/a/m0/e;->t:Le/a/v/k/o;

    iget-object p1, p1, Le/a/v/k/o;->c:Landroid/widget/ProgressBar;

    const-string v0, "binding.requestContactProgressBar"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method

.method public final setPresenter(Le/a/v/a/m0/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/v/a/m0/e;->u:Le/a/v/a/m0/a;

    return-void
.end method
