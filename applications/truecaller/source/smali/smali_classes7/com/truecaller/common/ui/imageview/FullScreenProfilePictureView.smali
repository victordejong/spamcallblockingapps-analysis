.class public final Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$a;,
        Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0002\u001b\u001cJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J#\u0010\n\u001a\u00020\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ%\u0010\u000e\u001a\u00020\t2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u001d\u0010\u0015\u001a\u00020\u00108B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u001d\u0010\u001a\u001a\u00020\u00168B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0012\u001a\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;",
        "Landroidx/appcompat/widget/AppCompatImageView;",
        "",
        "getBottomFadingEdgeStrength",
        "()F",
        "Landroid/net/Uri;",
        "uri",
        "Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$a;",
        "propertyCallBack",
        "Ls1/s;",
        "e",
        "(Landroid/net/Uri;Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$a;)V",
        "Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;",
        "statusCallback",
        "f",
        "(Landroid/net/Uri;Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;)V",
        "Le/f/a/r/h;",
        "c",
        "Ls1/g;",
        "getSizeOptions",
        "()Le/f/a/r/h;",
        "sizeOptions",
        "",
        "d",
        "getFadeLength",
        "()I",
        "fadeLength",
        "a",
        "b",
        "common-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic e:I


# instance fields
.field public final c:Ls1/g;

.field public final d:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget-object p2, Le/a/b0/a/x/d;->b:Le/a/b0/a/x/d;

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;->c:Ls1/g;

    .line 4
    new-instance p2, Le/a/b0/a/x/b;

    invoke-direct {p2, p1}, Le/a/b0/a/x/b;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;->d:Ls1/g;

    return-void
.end method

.method public static final d(Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v1, p1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    .line 7
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 8
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVerticalFadingEdgeEnabled(Z)V

    goto :goto_0

    :cond_0
    cmpl-float p1, p1, v0

    const/4 v1, 0x1

    if-ltz p1, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x2

    .line 12
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    invoke-direct {p0}, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;->getFadeLength()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setFadingEdgeLength(I)V

    .line 16
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVerticalFadingEdgeEnabled(Z)V

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 18
    invoke-static {v0}, Le/q/f/a/d/a;->J2(F)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 19
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 20
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    invoke-direct {p0}, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;->getFadeLength()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setFadingEdgeLength(I)V

    .line 22
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVerticalFadingEdgeEnabled(Z)V

    :goto_0
    return-void
.end method

.method private final getFadeLength()I
    .locals 1

    iget-object v0, p0, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getSizeOptions()Le/f/a/r/h;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/a/r/h;

    return-object v0
.end method


# virtual methods
.method public final e(Landroid/net/Uri;Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$a;)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;->f(Landroid/net/Uri;Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;)V

    .line 2
    invoke-static {p0}, Le/f/a/c;->f(Landroid/view/View;)Le/f/a/i;

    move-result-object v0

    check-cast v0, Le/a/z3/e;

    .line 3
    const-class v1, Landroid/graphics/BitmapFactory$Options;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Le/a/z3/d;

    iget-object v3, v0, Le/f/a/i;->a:Le/f/a/c;

    iget-object v4, v0, Le/f/a/i;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1, v4}, Le/a/z3/d;-><init>(Le/f/a/c;Le/f/a/i;Ljava/lang/Class;Landroid/content/Context;)V

    .line 6
    invoke-direct {p0}, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;->getSizeOptions()Le/f/a/r/h;

    move-result-object v0

    invoke-virtual {v2, v0}, Le/a/z3/d;->a0(Le/f/a/r/a;)Le/a/z3/d;

    move-result-object v0

    .line 7
    iput-object p1, v0, Le/f/a/h;->J:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, v0, Le/f/a/h;->N:Z

    .line 9
    new-instance p1, Le/a/b0/a/x/c;

    invoke-direct {p1, p0, p2}, Le/a/b0/a/x/c;-><init>(Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$a;)V

    invoke-virtual {v0, p1}, Le/f/a/h;->M(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    return-void
.end method

.method public final f(Landroid/net/Uri;Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-gtz v1, :cond_0

    .line 3
    new-instance v1, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$c;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$c;-><init>(Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;Landroid/view/View;Landroid/net/Uri;Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;)V

    invoke-static {v0, v1}, Le/a/p5/s0/f;->y(Landroid/view/View;Ls1/z/b/a;)V

    return-void

    .line 4
    :cond_0
    invoke-static {p0}, Le/f/a/c;->f(Landroid/view/View;)Le/f/a/i;

    move-result-object v0

    check-cast v0, Le/a/z3/e;

    .line 5
    invoke-virtual {v0}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/h;->S(Landroid/net/Uri;)Le/f/a/h;

    .line 6
    check-cast v0, Le/a/z3/d;

    .line 7
    invoke-static {v0, p1}, Le/a/m0/a1$k;->l(Le/f/a/r/a;Landroid/net/Uri;)Le/f/a/r/a;

    move-result-object p1

    check-cast p1, Le/f/a/h;

    .line 8
    new-instance v0, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$d;

    invoke-direct {v0, p0, p2}, Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$d;-><init>(Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView;Lcom/truecaller/common/ui/imageview/FullScreenProfilePictureView$b;)V

    invoke-virtual {p1, v0}, Le/f/a/h;->H(Le/f/a/r/g;)Le/f/a/h;

    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    return-void
.end method

.method public getBottomFadingEdgeStrength()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method
