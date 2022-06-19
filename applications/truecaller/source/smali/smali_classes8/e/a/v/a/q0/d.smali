.class public final Le/a/v/a/q0/d;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Le/a/v/a/q0/b;
.implements Le/a/v/a/s0/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u0006J-\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u000f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0017\u0010\u0016\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u000bR\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006\'"
    }
    d2 = {
        "Le/a/v/a/q0/d;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Le/a/v/a/q0/b;",
        "Le/a/v/a/s0/a;",
        "Ls1/s;",
        "onAttachedToWindow",
        "()V",
        "onDetachedFromWindow",
        "Le/a/v/a/s;",
        "detailsViewModel",
        "G0",
        "(Le/a/v/a/s;)V",
        "r",
        "Lcom/truecaller/data/entity/Contact;",
        "contact",
        "",
        "Lcom/truecaller/data/entity/Number;",
        "swishAvailableNumbers",
        "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
        "avatarXConfig",
        "o0",
        "(Lcom/truecaller/data/entity/Contact;Ljava/util/List;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V",
        "K0",
        "Le/a/f5/a;",
        "t",
        "Le/a/f5/a;",
        "getSwishManager",
        "()Le/a/f5/a;",
        "setSwishManager",
        "(Le/a/f5/a;)V",
        "swishManager",
        "Le/a/v/a/q0/a;",
        "u",
        "Le/a/v/a/q0/a;",
        "getPresenter",
        "()Le/a/v/a/q0/a;",
        "setPresenter",
        "(Le/a/v/a/q0/a;)V",
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
.field public t:Le/a/f5/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public u:Le/a/v/a/q0/a;
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
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type com.truecaller.details_view.di.DetailsViewComponentProvider"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Le/a/v/l/b;

    invoke-interface {p2}, Le/a/v/l/b;->v()Le/a/v/l/a;

    move-result-object p2

    invoke-interface {p2, p0}, Le/a/v/l/a;->t(Le/a/v/a/q0/d;)V

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 5
    sget p3, Lcom/truecaller/details_view/R$layout;->view_swish:I

    invoke-virtual {p2, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    sget p2, Lcom/truecaller/details_view/R$id;->icon:I

    .line 7
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    if-eqz p3, :cond_2

    .line 8
    sget p2, Lcom/truecaller/details_view/R$id;->text:I

    .line 9
    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    if-eqz p3, :cond_2

    .line 10
    sget p2, Lcom/truecaller/details_view/R$drawable;->selectable_background_outlined_view:I

    .line 11
    sget-object p3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 12
    invoke-static {p1, p2}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 14
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance p2, Ljava/lang/NullPointerException;

    const-string p3, "Missing required view with ID: "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public G0(Le/a/v/a/s;)V
    .locals 1

    const-string v0, "detailsViewModel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 2
    new-instance v0, Le/a/v/a/q0/d$a;

    invoke-direct {v0, p0, p1}, Le/a/v/a/q0/d$a;-><init>(Le/a/v/a/q0/d;Le/a/v/a/s;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public K0(Le/a/v/a/s;)V
    .locals 5

    const-string v0, "detailsViewModel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/v/a/q0/d;->u:Le/a/v/a/q0/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast v1, Le/a/v/a/q0/c;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/v/a/q0/c;->b:Le/a/f5/a;

    invoke-interface {v0}, Le/a/f5/a;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/q0/b;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/v/a/q0/b;->r()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, v1, Le/a/v/a/q0/c;->b:Le/a/f5/a;

    .line 6
    iget-object v3, p1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 7
    invoke-virtual {v3}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v3

    const-string v4, "detailsViewModel.contact.numbers"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Le/a/f5/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/q0/b;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/v/a/q0/b;->r()V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/q0/b;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Le/a/v/a/q0/b;->G0(Le/a/v/a/s;)V

    .line 11
    :cond_2
    iget-object p1, v1, Le/a/v/a/q0/c;->c:Le/a/v/a/z/a;

    .line 12
    iget-object v0, p1, Le/a/v/a/z/a;->a:Ljava/lang/String;

    const-string v1, "Swish"

    const-string v3, "viewId"

    .line 13
    invoke-static {v1, v3, v1, v0, v2}, Le/d/c/a/a;->q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Le/a/q2/y0/a/a;

    move-result-object v0

    .line 14
    iget-object p1, p1, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v0, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string p1, "presenter"

    .line 15
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public final getPresenter()Le/a/v/a/q0/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/a/q0/d;->u:Le/a/v/a/q0/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSwishManager()Le/a/f5/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/v/a/q0/d;->t:Le/a/f5/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "swishManager"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public o0(Lcom/truecaller/data/entity/Contact;Ljava/util/List;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/Number;",
            ">;",
            "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
            ")V"
        }
    .end annotation

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swishAvailableNumbers"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarXConfig"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v/a/q0/d;->t:Le/a/f5/a;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p1, p2, p3}, Le/a/f5/a;->b(Landroid/content/Context;Lcom/truecaller/data/entity/Contact;Ljava/util/List;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    return-void

    :cond_0
    const-string p1, "swishManager"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Le/a/v/a/q0/d;->u:Le/a/v/a/q0/a;

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
    iget-object v0, p0, Le/a/v/a/q0/d;->u:Le/a/v/a/q0/a;

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

.method public r()V
    .locals 0

    .line 1
    invoke-static {p0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method

.method public final setPresenter(Le/a/v/a/q0/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/v/a/q0/d;->u:Le/a/v/a/q0/a;

    return-void
.end method

.method public final setSwishManager(Le/a/f5/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/v/a/q0/d;->t:Le/a/f5/a;

    return-void
.end method
