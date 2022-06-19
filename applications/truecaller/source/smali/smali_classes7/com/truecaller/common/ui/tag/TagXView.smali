.class public final Lcom/truecaller/common/ui/tag/TagXView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001d\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u0011\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\nJ\u0017\u0010\u0013\u001a\u00020\u00042\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0006J\u0015\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0013\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00042\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\nJ\r\u0010\u0019\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR%\u0010 \u001a\n \u001c*\u0004\u0018\u00010\u001b0\u001b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR%\u0010$\u001a\n \u001c*\u0004\u0018\u00010!0!8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u001d\u001a\u0004\u0008\"\u0010#\u00a8\u0006%"
    }
    d2 = {
        "Lcom/truecaller/common/ui/tag/TagXView;",
        "Landroid/widget/LinearLayout;",
        "",
        "text",
        "Ls1/s;",
        "setTitle",
        "(Ljava/lang/String;)V",
        "",
        "color",
        "setTitleColor",
        "(I)V",
        "unit",
        "",
        "size",
        "b",
        "(IF)V",
        "resId",
        "setTitleTextAppearance",
        "iconUrl",
        "setIcon",
        "Landroid/graphics/drawable/Drawable;",
        "drawable",
        "(Landroid/graphics/drawable/Drawable;)V",
        "tint",
        "setIconTint",
        "a",
        "()V",
        "Landroid/widget/ImageView;",
        "kotlin.jvm.PlatformType",
        "Ls1/g;",
        "getIcon",
        "()Landroid/widget/ImageView;",
        "icon",
        "Lcom/truecaller/common/ui/textview/GoldShineTextView;",
        "getTitle",
        "()Lcom/truecaller/common/ui/textview/GoldShineTextView;",
        "title",
        "common-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/truecaller/common/ui/tag/TagXView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    const-string p4, "context"

    .line 1
    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget p1, Lcom/truecaller/common/ui/R$id;->icon:I

    invoke-static {p0, p1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/common/ui/tag/TagXView;->a:Ls1/g;

    .line 4
    sget p1, Lcom/truecaller/common/ui/R$id;->title:I

    invoke-static {p0, p1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/common/ui/tag/TagXView;->b:Ls1/g;

    .line 5
    sget p1, Lcom/truecaller/common/ui/R$layout;->layout_tcx_tag:I

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Le/a/p5/s0/f;->k(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    .line 6
    sget p1, Lcom/truecaller/common/ui/R$drawable;->background_tcx_tag:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void
.end method

.method private final getIcon()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/common/ui/tag/TagXView;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getTitle()Lcom/truecaller/common/ui/textview/GoldShineTextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/common/ui/tag/TagXView;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/ui/textview/GoldShineTextView;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/truecaller/common/ui/tag/TagXView;->getTitle()Lcom/truecaller/common/ui/textview/GoldShineTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->l()V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/common/ui/tag/TagXView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "icon"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/truecaller/common/ui/R$color;->tcx_lightGoldGradientStep1:I

    .line 3
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 4
    invoke-static {v1, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 5
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final b(IF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/common/ui/tag/TagXView;->getTitle()Lcom/truecaller/common/ui/textview/GoldShineTextView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    return-void
.end method

.method public final setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const-string v0, "drawable"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lcom/truecaller/common/ui/tag/TagXView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setIcon(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/h;->V(Ljava/lang/String;)Le/f/a/h;

    .line 3
    check-cast v0, Le/a/z3/d;

    .line 4
    invoke-direct {p0}, Lcom/truecaller/common/ui/tag/TagXView;->getIcon()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    return-void
.end method

.method public final setIconTint(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/common/ui/tag/TagXView;->getIcon()Landroid/widget/ImageView;

    move-result-object v0

    const-string v1, "icon"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/truecaller/common/ui/tag/TagXView;->getTitle()Lcom/truecaller/common/ui/textview/GoldShineTextView;

    move-result-object v0

    const-string v1, "title"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setTitleColor(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/common/ui/tag/TagXView;->getTitle()Lcom/truecaller/common/ui/textview/GoldShineTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/textview/GoldShineTextView;->setTextColor(I)V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/common/ui/tag/TagXView;->getIcon()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearColorFilter()V

    return-void
.end method

.method public final setTitleTextAppearance(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/common/ui/tag/TagXView;->getTitle()Lcom/truecaller/common/ui/textview/GoldShineTextView;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method
