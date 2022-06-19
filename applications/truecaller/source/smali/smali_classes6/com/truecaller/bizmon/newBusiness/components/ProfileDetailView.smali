.class public final Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001R$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001d\u0010\u000f\u001a\u00020\n8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000eR$\u0010\u0013\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0004\u001a\u0004\u0008\u0011\u0010\u0006\"\u0004\u0008\u0012\u0010\u0008R\"\u0010\u0015\u001a\u00020\u00148\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0015\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001d\u0010\u001c\u001a\u00020\n8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001a\u0010\u000c\u001a\u0004\u0008\u001b\u0010\u000eR\u001d\u0010\u001f\u001a\u00020\n8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u000c\u001a\u0004\u0008\u001e\u0010\u000eR\u001d\u0010\"\u001a\u00020\n8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008 \u0010\u000c\u001a\u0004\u0008!\u0010\u000eR\u001d\u0010\'\u001a\u00020#8@@\u0000X\u0080\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u000c\u001a\u0004\u0008%\u0010&\u00a8\u0006("
    }
    d2 = {
        "Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "",
        "u",
        "Ljava/lang/String;",
        "getAttrSubtitle",
        "()Ljava/lang/String;",
        "setAttrSubtitle",
        "(Ljava/lang/String;)V",
        "attrSubtitle",
        "",
        "w",
        "Ls1/g;",
        "getEnabledSubTitleColor",
        "()I",
        "enabledSubTitleColor",
        "t",
        "getAttrTitle",
        "setAttrTitle",
        "attrTitle",
        "",
        "isViewSet",
        "Z",
        "()Z",
        "setViewSet",
        "(Z)V",
        "x",
        "getDisabledTitleColor",
        "disabledTitleColor",
        "y",
        "getDisabledSubTitleColor",
        "disabledSubTitleColor",
        "v",
        "getEnabledTitleColor",
        "enabledTitleColor",
        "Le/a/b/m/k1;",
        "z",
        "getBinding$bizmon_release",
        "()Le/a/b/m/k1;",
        "binding",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public final v:Ls1/g;

.field public final w:Ls1/g;

.field public final x:Ls1/g;

.field public final y:Ls1/g;

.field public final z:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v1, Lo1;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p1}, Lo1;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->v:Ls1/g;

    .line 4
    new-instance v1, Lo1;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p1}, Lo1;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->w:Ls1/g;

    .line 5
    new-instance v1, Lo1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lo1;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->x:Ls1/g;

    .line 6
    new-instance v1, Lo1;

    invoke-direct {v1, v0, p1}, Lo1;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->y:Ls1/g;

    .line 7
    new-instance v1, Le/a/b/a/b/f;

    invoke-direct {v1, p0}, Le/a/b/a/b/f;-><init>(Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->z:Ls1/g;

    .line 8
    sget v1, Lcom/truecaller/bizmon/R$layout;->profile_detail_view:I

    invoke-static {p0, v1, v2}, Le/a/p5/s0/f;->k(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/truecaller/bizmon/R$styleable;->ProfileDetailView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.theme.obtainStyl\u2026.ProfileDetailView, 0, 0)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget p2, Lcom/truecaller/bizmon/R$styleable;->ProfileDetailView_isSet:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 11
    sget p2, Lcom/truecaller/bizmon/R$styleable;->ProfileDetailView_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->t:Ljava/lang/String;

    .line 12
    sget p2, Lcom/truecaller/bizmon/R$styleable;->ProfileDetailView_subtitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->u:Ljava/lang/String;

    .line 13
    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->getBinding$bizmon_release()Le/a/b/m/k1;

    move-result-object p2

    iget-object p2, p2, Le/a/b/m/k1;->e:Landroid/widget/TextView;

    const-string v0, "binding.title"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->t:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->getBinding$bizmon_release()Le/a/b/m/k1;

    move-result-object p2

    iget-object p2, p2, Le/a/b/m/k1;->d:Landroid/widget/TextView;

    const-string v0, "binding.subtitle"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->u:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->getBinding$bizmon_release()Le/a/b/m/k1;

    move-result-object p2

    iget-object p2, p2, Le/a/b/m/k1;->c:Landroidx/appcompat/widget/AppCompatImageView;

    sget v0, Lcom/truecaller/bizmon/R$styleable;->ProfileDetailView_iconSrc:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/truecaller/bizmon/R$dimen;->pdv_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 18
    invoke-virtual {p0, p1, p1, p1, p1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    return-void
.end method

.method public static f1(Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;Ljava/lang/String;Ls1/z/b/a;ZI)V
    .locals 4

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    .line 1
    sget-object p2, Le/a/b/a/b/h;->b:Le/a/b/a/b/h;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    move p3, v0

    .line 2
    :cond_2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "clickAction"

    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-nez p4, :cond_4

    :cond_3
    const/4 v0, 0x1

    :cond_4
    const-string p4, "title"

    const-string v2, "subtitle"

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->getBinding$bizmon_release()Le/a/b/m/k1;

    move-result-object p1

    .line 5
    iget-object v0, p1, Le/a/b/m/k1;->e:Landroid/widget/TextView;

    invoke-static {v0, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p4, p0, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->t:Ljava/lang/String;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p4, p1, Le/a/b/m/k1;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->getDisabledTitleColor()I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    iget-object p4, p1, Le/a/b/m/k1;->d:Landroid/widget/TextView;

    invoke-static {p4, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->u:Ljava/lang/String;

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p4, p1, Le/a/b/m/k1;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->getDisabledSubTitleColor()I

    move-result v0

    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    sget v0, Lcom/truecaller/bizmon/R$drawable;->ic_biz_add:I

    .line 10
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 11
    invoke-static {p4, v0}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 12
    iget-object p1, p1, Le/a/b/m/k1;->c:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->getDisabledSubTitleColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 13
    :cond_5
    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->getBinding$bizmon_release()Le/a/b/m/k1;

    move-result-object v0

    .line 14
    iget-object v3, v0, Le/a/b/m/k1;->d:Landroid/widget/TextView;

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->t:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    iget-object v2, v0, Le/a/b/m/k1;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->getEnabledSubTitleColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    iget-object v2, v0, Le/a/b/m/k1;->e:Landroid/widget/TextView;

    invoke-static {v2, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    iget-object p1, v0, Le/a/b/m/k1;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->getEnabledTitleColor()I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p4, Lcom/truecaller/bizmon/R$drawable;->ic_biz_edit:I

    .line 19
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 20
    invoke-static {p1, p4}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 21
    iget-object p1, v0, Le/a/b/m/k1;->c:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "icon"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_0
    if-nez p3, :cond_6

    .line 22
    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->getBinding$bizmon_release()Le/a/b/m/k1;

    move-result-object p0

    .line 23
    iget-object p1, p0, Le/a/b/m/k1;->b:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 24
    iget-object p0, p0, Le/a/b/m/k1;->b:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance p1, Le/a/b/a/b/g;

    invoke-direct {p1, p4, p2}, Le/a/b/a/b/g;-><init>(Landroid/graphics/drawable/Drawable;Ls1/z/b/a;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public final getAttrSubtitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->u:Ljava/lang/String;

    return-object v0
.end method

.method public final getAttrTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->t:Ljava/lang/String;

    return-object v0
.end method

.method public final getBinding$bizmon_release()Le/a/b/m/k1;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->z:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/m/k1;

    return-object v0
.end method

.method public final getDisabledSubTitleColor()I
    .locals 1

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->y:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getDisabledTitleColor()I
    .locals 1

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->x:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getEnabledSubTitleColor()I
    .locals 1

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->w:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final getEnabledTitleColor()I
    .locals 1

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->v:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method public final setAttrSubtitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->u:Ljava/lang/String;

    return-void
.end method

.method public final setAttrTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/bizmon/newBusiness/components/ProfileDetailView;->t:Ljava/lang/String;

    return-void
.end method

.method public final setViewSet(Z)V
    .locals 0

    return-void
.end method
