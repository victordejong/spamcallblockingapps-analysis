.class public final Lcom/truecaller/details_view/ui/presence/PresenceView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/b/c;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u0002J\u001f\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0015\u0010\u000e\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u0010\u0010\u000bJ\u000f\u0010\u0011\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u000bR\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\"\u0010\u001d\u001a\u00020\u00168\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/truecaller/details_view/ui/presence/PresenceView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Le/a/v/a/b/c;",
        "Landroid/graphics/drawable/Drawable;",
        "icon",
        "Le/a/l4/e;",
        "presence",
        "Ls1/s;",
        "L0",
        "(Landroid/graphics/drawable/Drawable;Le/a/l4/e;)V",
        "Q",
        "()V",
        "Le/a/v/a/s;",
        "detailsViewModel",
        "set",
        "(Le/a/v/a/s;)V",
        "onAttachedToWindow",
        "onDetachedFromWindow",
        "Le/a/v/k/m;",
        "u",
        "Le/a/v/k/m;",
        "binding",
        "Le/a/v/a/b/b;",
        "t",
        "Le/a/v/a/b/b;",
        "getPresenter",
        "()Le/a/v/a/b/b;",
        "setPresenter",
        "(Le/a/v/a/b/b;)V",
        "presenter",
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
.field public t:Le/a/v/a/b/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final u:Le/a/v/k/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 4
    sget v0, Lcom/truecaller/details_view/R$layout;->view_presence:I

    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    sget p2, Lcom/truecaller/details_view/R$id;->availability:I

    .line 6
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 7
    sget p2, Lcom/truecaller/details_view/R$id;->icon:I

    .line 8
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 9
    new-instance p2, Le/a/v/k/m;

    invoke-direct {p2, p0, v0, v1}, Le/a/v/k/m;-><init>(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    const-string v0, "ViewPresenceBinding.infl\u2026ater.from(context), this)"

    .line 10
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/truecaller/details_view/ui/presence/PresenceView;->u:Le/a/v/k/m;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/v/l/b;

    invoke-interface {p1}, Le/a/v/l/b;->v()Le/a/v/l/a;

    move-result-object p1

    invoke-interface {p1, p0}, Le/a/v/l/a;->l(Lcom/truecaller/details_view/ui/presence/PresenceView;)V

    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 13
    new-instance p2, Ljava/lang/NullPointerException;

    const-string v0, "Missing required view with ID: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public L0(Landroid/graphics/drawable/Drawable;Le/a/l4/e;)V
    .locals 3

    const-string v0, "icon"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presence"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/presence/PresenceView;->u:Le/a/v/k/m;

    iget-object v0, v0, Le/a/v/k/m;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/details_view/ui/presence/PresenceView;->u:Le/a/v/k/m;

    iget-object p1, p1, Le/a/v/k/m;->b:Landroid/widget/TextView;

    const-string v0, "binding.availability"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p2, v0, v1, v2}, Le/a/l4/e;->d(Le/a/l4/e;Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {p0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void
.end method

.method public Q()V
    .locals 0

    .line 1
    invoke-static {p0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method

.method public final getPresenter()Le/a/v/a/b/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/presence/PresenceView;->t:Le/a/v/a/b/b;

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
    iget-object v0, p0, Lcom/truecaller/details_view/ui/presence/PresenceView;->t:Le/a/v/a/b/b;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/v/a/b/a;

    invoke-virtual {v0, p0}, Le/a/v/a/b/a;->Y0(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/details_view/ui/presence/PresenceView;->t:Le/a/v/a/b/b;

    if-eqz v0, :cond_0

    check-cast v0, Le/a/v/a/b/a;

    invoke-virtual {v0}, Le/a/v/a/b/a;->c()V

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final set(Le/a/v/a/s;)V
    .locals 3

    const-string v0, "detailsViewModel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/truecaller/details_view/ui/presence/PresenceView;->t:Le/a/v/a/b/b;

    if-eqz v1, :cond_2

    check-cast v1, Le/a/v/a/b/a;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Le/a/v/a/s;->b:Le/a/v/a/d;

    .line 4
    instance-of v0, v0, Le/a/v/a/d$f;

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/b/c;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/v/a/b/c;->Q()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 7
    iget-object v0, v1, Le/a/v/a/b/a;->g:Le/a/l4/c;

    invoke-static {p1}, Le/a/m0/a1$k;->X(Lcom/truecaller/data/entity/Contact;)Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    .line 8
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v2, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    array-length v2, p1

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 9
    invoke-interface {v0, p1}, Le/a/l4/c;->c([Ljava/lang/String;)Le/a/l4/c$a;

    move-result-object p1

    iput-object p1, v1, Le/a/v/a/b/a;->f:Le/a/l4/c$a;

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1, v1}, Le/a/l4/c$a;->b(Le/a/l4/c$b;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string p1, "presenter"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final setPresenter(Le/a/v/a/b/b;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/details_view/ui/presence/PresenceView;->t:Le/a/v/a/b/b;

    return-void
.end method
