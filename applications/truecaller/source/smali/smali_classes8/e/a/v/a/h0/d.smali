.class public final Le/a/v/a/h0/d;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/h0/b;
.implements Le/a/v/a/s0/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u0006H\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u0017\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\rH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0018\u001a\u00020\u00118\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u001c\u001a\u00020\u00198\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "Le/a/v/a/h0/d;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Le/a/v/a/h0/b;",
        "Le/a/v/a/s0/a;",
        "",
        "notes",
        "Ls1/s;",
        "k",
        "(Ljava/lang/String;)V",
        "j",
        "()V",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "Le/a/v/a/s;",
        "detailsViewModel",
        "K0",
        "(Le/a/v/a/s;)V",
        "Le/a/v/a/h0/a;",
        "t",
        "Le/a/v/a/h0/a;",
        "getPresenter",
        "()Le/a/v/a/h0/a;",
        "setPresenter",
        "(Le/a/v/a/h0/a;)V",
        "presenter",
        "Le/a/v/k/l;",
        "u",
        "Le/a/v/k/l;",
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
.field public t:Le/a/v/a/h0/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final u:Le/a/v/k/l;


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
    sget p3, Lcom/truecaller/details_view/R$layout;->view_notes:I

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    sget p2, Lcom/truecaller/details_view/R$id;->header:I

    .line 6
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_2

    .line 7
    sget p2, Lcom/truecaller/details_view/R$id;->notes:I

    .line 8
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    if-eqz p4, :cond_2

    .line 9
    new-instance p2, Le/a/v/k/l;

    invoke-direct {p2, p0, p3, p4}, Le/a/v/k/l;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-string p3, "ViewNotesBinding.inflate\u2026ater.from(context), this)"

    .line 10
    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Le/a/v/a/h0/d;->u:Le/a/v/k/l;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/v/l/b;

    invoke-interface {p2}, Le/a/v/l/b;->v()Le/a/v/l/a;

    move-result-object p2

    invoke-interface {p2, p0}, Le/a/v/l/a;->n(Le/a/v/a/h0/d;)V

    .line 12
    sget p2, Lcom/truecaller/details_view/R$drawable;->selectable_background_outlined_view:I

    .line 13
    sget-object p3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 14
    invoke-static {p1, p2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p1, 0x10

    .line 16
    invoke-static {p1}, Le/a/p5/s0/g;->O(I)I

    move-result p2

    invoke-static {p1}, Le/a/p5/s0/g;->O(I)I

    move-result p3

    invoke-static {p1}, Le/a/p5/s0/g;->O(I)I

    move-result p4

    invoke-static {p1}, Le/a/p5/s0/g;->O(I)I

    move-result p1

    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void

    .line 17
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 18
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "Missing required view with ID: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public K0(Le/a/v/a/s;)V
    .locals 3

    const-string v0, "detailsViewModel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/v/a/h0/d;->t:Le/a/v/a/h0/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast v1, Le/a/v/a/h0/c;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 4
    iget-object p1, p1, Lcom/truecaller/data/entity/Contact;->t:Lcom/truecaller/data/entity/Note;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Note;->getValue()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_2

    .line 6
    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/h0/b;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/v/a/h0/b;->j()V

    goto :goto_2

    .line 7
    :cond_3
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/h0/b;

    if-eqz p1, :cond_4

    invoke-interface {p1, v2}, Le/a/v/a/h0/b;->k(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    const-string p1, "presenter"

    .line 8
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public final getPresenter()Le/a/v/a/h0/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/a/h0/d;->t:Le/a/v/a/h0/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public j()V
    .locals 0

    .line 1
    invoke-static {p0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 2

    const-string v0, "notes"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/h0/d;->u:Le/a/v/k/l;

    iget-object v0, v0, Le/a/v/k/l;->b:Landroid/widget/TextView;

    const-string v1, "binding.notes"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-static {p0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Le/a/v/a/h0/d;->t:Le/a/v/a/h0/a;

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
    iget-object v0, p0, Le/a/v/a/h0/d;->t:Le/a/v/a/h0/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Le/a/u2/a/b;

    .line 2
    iput-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final setPresenter(Le/a/v/a/h0/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/v/a/h0/d;->t:Le/a/v/a/h0/a;

    return-void
.end method
