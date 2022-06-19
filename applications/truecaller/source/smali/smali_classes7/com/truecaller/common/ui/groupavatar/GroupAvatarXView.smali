.class public final Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Le/a/b0/a/c/d;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010$\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\t\u001a\u00020\u00032\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0096@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0019\u0010\r\u001a\u00020\u00032\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bH\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ/\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u00020\u00032\u0006\u0010\u0016\u001a\u00020\u000f2\u0006\u0010\u0017\u001a\u00020\u000fH\u0014\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u000f\u0010\u001a\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u001a\u0010\u0005J\u001b\u0010\u001c\u001a\u00020\u00032\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0006\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ+\u0010 \u001a\u00020\u001f2\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u00062\u0008\u0008\u0001\u0010\u001e\u001a\u00020\u000fH\u0086@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010!J\u0013\u0010\"\u001a\u00020\u0003H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010%\u001a\u00020$*\u00020\u0007H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008%\u0010&J\u000f\u0010\'\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\'\u0010\u0005R\u0016\u0010+\u001a\u00020(8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0016\u0010.\u001a\u00020,8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008 \u0010-R\u001d\u00103\u001a\u00020/8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\"\u00100\u001a\u0004\u00081\u00102R\u0016\u00106\u001a\u0002048\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\t\u00105R\u0016\u00108\u001a\u00020/8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u00087\u00102R\u001d\u0010<\u001a\u0002098B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0011\u00100\u001a\u0004\u0008:\u0010;R\u001d\u0010@\u001a\u00020=8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u00100\u001a\u0004\u0008>\u0010?R\u0016\u0010B\u001a\u0002048\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008A\u00105R\u0016\u0010D\u001a\u00020/8B@\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008C\u00102R\"\u0010G\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020$0E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008%\u0010F\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006H"
    }
    d2 = {
        "Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;",
        "Landroid/view/View;",
        "Le/a/b0/a/c/d;",
        "Ls1/s;",
        "onAttachedToWindow",
        "()V",
        "",
        "Le/a/b0/a/c/m/a;",
        "configs",
        "a",
        "(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "",
        "w",
        "h",
        "oldw",
        "oldh",
        "onSizeChanged",
        "(IIII)V",
        "widthMeasureSpec",
        "heightMeasureSpec",
        "onMeasure",
        "(II)V",
        "onDetachedFromWindow",
        "Le/a/b0/a/c/m/b;",
        "setConfigs",
        "(Ljava/util/List;)V",
        "sizeDimen",
        "Landroid/graphics/Bitmap;",
        "d",
        "(Ljava/util/List;ILs1/w/d;)Ljava/lang/Object;",
        "g",
        "(Ls1/w/d;)Ljava/lang/Object;",
        "Landroid/graphics/drawable/Drawable;",
        "e",
        "(Le/a/b0/a/c/m/a;Ls1/w/d;)Ljava/lang/Object;",
        "f",
        "Le/a/b0/a/c/c;",
        "c",
        "Le/a/b0/a/c/c;",
        "presenter",
        "Le/a/p5/h0;",
        "Le/a/p5/h0;",
        "resourceProvider",
        "",
        "Ls1/g;",
        "getBaseUnit",
        "()F",
        "baseUnit",
        "Ls1/w/f;",
        "Ls1/w/f;",
        "uiContext",
        "getDividerSize",
        "dividerSize",
        "Landroid/graphics/Paint;",
        "getCircularClipPaint",
        "()Landroid/graphics/Paint;",
        "circularClipPaint",
        "Le/a/z3/e;",
        "getGlideApp",
        "()Le/a/z3/e;",
        "glideApp",
        "b",
        "cpuContext",
        "getTileInnerMargin",
        "tileInnerMargin",
        "",
        "Ljava/util/Map;",
        "configDrawables",
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
.field public static final synthetic i:I


# instance fields
.field public a:Ls1/w/f;

.field public b:Ls1/w/f;

.field public c:Le/a/b0/a/c/c;

.field public d:Le/a/p5/h0;

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Le/a/b0/a/c/m/a;",
            "+",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ls1/g;

.field public final g:Ls1/g;

.field public final h:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    sget-object p2, Ls1/u/t;->a:Ls1/u/t;

    iput-object p2, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->e:Ljava/util/Map;

    .line 4
    new-instance p2, Le/a/b0/a/c/j;

    invoke-direct {p2, p1}, Le/a/b0/a/c/j;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->f:Ls1/g;

    .line 5
    new-instance p1, Le/a/b0/a/c/e;

    invoke-direct {p1, p0}, Le/a/b0/a/c/e;-><init>(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->g:Ls1/g;

    .line 6
    sget-object p1, Le/a/b0/a/c/f;->b:Le/a/b0/a/c/f;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->h:Ls1/g;

    return-void
.end method

.method public static final synthetic b(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;)Landroid/graphics/Paint;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->getCircularClipPaint()Landroid/graphics/Paint;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;)Le/a/z3/e;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->getGlideApp()Le/a/z3/e;

    move-result-object p0

    return-object p0
.end method

.method private final getBaseUnit()F
    .locals 1

    iget-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->g:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method private final getCircularClipPaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->h:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method private final getDividerSize()F
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->getBaseUnit()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/4 v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method private final getGlideApp()Le/a/z3/e;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/z3/e;

    return-object v0
.end method

.method private final getTileInnerMargin()F
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->getBaseUnit()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/a/b0/a/c/m/a;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->a:Ls1/w/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;

    invoke-direct {v2, p0, p1, v1}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;-><init>(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;Ljava/util/List;Ls1/w/d;)V

    invoke-static {v0, v2, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_1
    const-string p1, "uiContext"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final d(Ljava/util/List;ILs1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/b0/a/c/m/b;",
            ">;I",
            "Ls1/w/d<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$a;

    iget v1, v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$a;

    invoke-direct {v0, p0, p3}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$a;-><init>(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, "presenter"

    const/4 v6, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$a;->g:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$a;->h:Ljava/lang/Object;

    check-cast p1, Ls1/z/c/a0;

    iget-object p2, v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$a;->g:Ljava/lang/Object;

    check-cast p2, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p3, p1

    move-object p1, p2

    goto :goto_1

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p3, Ls1/z/c/a0;

    invoke-direct {p3}, Ls1/z/c/a0;-><init>()V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v7, "context"

    invoke-static {v2, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p3, Ls1/z/c/a0;->a:I

    const/high16 v2, 0x40000000    # 2.0f

    .line 5
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    iget v7, p3, Ls1/z/c/a0;->a:I

    invoke-static {v7, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, p2, v2}, Landroid/view/View;->measure(II)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    const/4 v7, 0x0

    invoke-virtual {p0, v7, v7, p2, v2}, Landroid/view/View;->layout(IIII)V

    .line 7
    invoke-virtual {p0}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->f()V

    .line 8
    iget-object p2, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->c:Le/a/b0/a/c/c;

    if-eqz p2, :cond_9

    invoke-interface {p2, p0}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    .line 9
    iget-object p2, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->c:Le/a/b0/a/c/c;

    if-eqz p2, :cond_8

    invoke-interface {p2, p1}, Le/a/b0/a/c/c;->ub(Ljava/util/List;)Lq3/a/p1;

    move-result-object p1

    iput-object p0, v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$a;->g:Ljava/lang/Object;

    iput-object p3, v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$a;->h:Ljava/lang/Object;

    iput v4, v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$a;->e:I

    invoke-interface {p1, v0}, Lq3/a/p1;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    .line 10
    :goto_1
    iget-object p2, p1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->b:Ls1/w/f;

    if-eqz p2, :cond_7

    new-instance v2, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$b;

    invoke-direct {v2, p1, p3, v6}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$b;-><init>(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;Ls1/z/c/a0;Ls1/w/d;)V

    iput-object p1, v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$a;->g:Ljava/lang/Object;

    iput-object v6, v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$a;->h:Ljava/lang/Object;

    iput v3, v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$a;->e:I

    invoke-static {p2, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    .line 11
    :cond_5
    :goto_2
    check-cast p3, Landroid/graphics/Bitmap;

    .line 12
    iget-object p1, p1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->c:Le/a/b0/a/c/c;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Le/a/u2/a/e;->c()V

    const-string p1, "bitmap"

    .line 13
    invoke-static {p3, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p3

    .line 14
    :cond_6
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    :cond_7
    const-string p1, "cpuContext"

    .line 15
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    .line 16
    :cond_8
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    .line 17
    :cond_9
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6
.end method

.method public final e(Le/a/b0/a/c/m/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/b0/a/c/m/a;",
            "Ls1/w/d<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$c;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$c;

    iget v4, v3, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$c;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$c;

    invoke-direct {v3, v0, v2}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$c;-><init>(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;Ls1/w/d;)V

    :goto_0
    iget-object v2, v3, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$c;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$c;->e:I

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-object v1, v3, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$c;->g:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v1, v3, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$c;->i:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Rect;

    iget-object v5, v3, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$c;->h:Ljava/lang/Object;

    check-cast v5, Le/a/b0/a/c/m/a;

    iget-object v7, v3, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$c;->g:Ljava/lang/Object;

    check-cast v7, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v16, v5

    move-object v5, v1

    move-object/from16 v1, v16

    goto/16 :goto_2

    :cond_3
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Le/a/b0/a/c/m/a;->a()Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-direct/range {p0 .. p0}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->getDividerSize()F

    move-result v9

    invoke-virtual {v2, v5, v9}, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->calculateBounds(FF)Landroid/graphics/RectF;

    move-result-object v2

    .line 5
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v5}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 6
    invoke-virtual/range {p1 .. p1}, Le/a/b0/a/c/m/a;->a()Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->getTileInnerMargin()F

    move-result v9

    invoke-virtual {v2, v9}, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->calculateMargin(F)Landroid/graphics/RectF;

    move-result-object v12

    .line 7
    instance-of v2, v1, Le/a/b0/a/c/m/a$b;

    if-eqz v2, :cond_9

    move-object v2, v1

    check-cast v2, Le/a/b0/a/c/m/a$b;

    .line 8
    iget-object v2, v2, Le/a/b0/a/c/m/a$b;->b:Ljava/lang/String;

    .line 9
    iput-object v0, v3, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$c;->g:Ljava/lang/Object;

    iput-object v1, v3, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$c;->h:Ljava/lang/Object;

    iput-object v5, v3, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$c;->i:Ljava/lang/Object;

    iput v7, v3, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$c;->e:I

    .line 10
    new-instance v9, Lq3/a/o;

    invoke-static {v3}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v10

    invoke-direct {v9, v10, v7}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 11
    invoke-virtual {v9}, Lq3/a/o;->z()V

    .line 12
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v7, Lcom/truecaller/common/ui/R$drawable;->ic_tcx_add_person_24dp:I

    .line 14
    sget-object v10, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 15
    invoke-static {v2, v7}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 16
    invoke-static {v9, v2}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    goto :goto_1

    .line 17
    :cond_4
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 18
    new-instance v10, Le/a/b0/a/c/i;

    invoke-direct {v10, v9}, Le/a/b0/a/c/i;-><init>(Lq3/a/n;)V

    .line 19
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->getGlideApp()Le/a/z3/e;

    move-result-object v11

    const-string v12, "glideApp"

    .line 20
    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, -0x1

    .line 21
    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v12}, Ljava/lang/Integer;-><init>(I)V

    .line 22
    invoke-static {v11, v7, v13}, Le/a/m0/a1$k;->O0(Le/f/a/i;Landroid/net/Uri;Ljava/lang/Integer;)Le/f/a/h;

    move-result-object v7

    .line 23
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-virtual {v7, v11, v12}, Le/f/a/r/a;->t(II)Le/f/a/r/a;

    move-result-object v7

    check-cast v7, Le/f/a/h;

    .line 24
    invoke-virtual {v7}, Le/f/a/r/a;->c()Le/f/a/r/a;

    move-result-object v7

    check-cast v7, Le/f/a/h;

    .line 25
    invoke-virtual {v7, v10}, Le/f/a/h;->M(Le/f/a/r/k/k;)Le/f/a/r/k/k;

    .line 26
    new-instance v7, Le/a/b0/a/c/h;

    invoke-direct {v7, v10, v0, v2, v5}, Le/a/b0/a/c/h;-><init>(Le/a/b0/a/c/i;Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;Ljava/lang/String;Landroid/graphics/Rect;)V

    invoke-virtual {v9, v7}, Lq3/a/o;->r(Ls1/z/b/l;)V

    .line 27
    :goto_1
    invoke-virtual {v9}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_5

    const-string v7, "frame"

    .line 28
    invoke-static {v3, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    if-ne v2, v4, :cond_6

    return-object v4

    :cond_6
    move-object v7, v0

    .line 29
    :goto_2
    check-cast v2, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    goto :goto_4

    :cond_7
    check-cast v1, Le/a/b0/a/c/m/a$b;

    .line 30
    iget-object v1, v1, Le/a/b0/a/c/m/a$b;->c:Le/a/b0/a/c/m/a$c;

    .line 31
    iput-object v5, v3, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$c;->g:Ljava/lang/Object;

    iput-object v8, v3, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$c;->h:Ljava/lang/Object;

    iput-object v8, v3, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$c;->i:Ljava/lang/Object;

    iput v6, v3, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$c;->e:I

    invoke-virtual {v7, v1, v3}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->e(Le/a/b0/a/c/m/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_8

    return-object v4

    :cond_8
    move-object v1, v5

    :goto_3
    check-cast v2, Landroid/graphics/drawable/Drawable;

    move-object v5, v1

    goto :goto_4

    .line 32
    :cond_9
    instance-of v2, v1, Le/a/b0/a/c/m/a$c;

    if-eqz v2, :cond_a

    new-instance v2, Le/a/b0/a/c/a/a;

    .line 33
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->getBaseUnit()F

    move-result v11

    .line 34
    check-cast v1, Le/a/b0/a/c/m/a$c;

    .line 35
    iget v13, v1, Le/a/b0/a/c/m/a$c;->c:I

    .line 36
    iget v14, v1, Le/a/b0/a/c/m/a$c;->d:I

    .line 37
    iget-object v15, v1, Le/a/b0/a/c/m/a$c;->b:Ljava/lang/String;

    move-object v10, v2

    .line 38
    invoke-direct/range {v10 .. v15}, Le/a/b0/a/c/a/a;-><init>(FLandroid/graphics/RectF;IILjava/lang/String;)V

    goto :goto_4

    .line 39
    :cond_a
    instance-of v2, v1, Le/a/b0/a/c/m/a$d;

    const-string v3, "resourceProvider"

    if-eqz v2, :cond_c

    new-instance v2, Le/a/b0/a/c/a/c;

    .line 40
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->getBaseUnit()F

    move-result v1

    .line 41
    iget-object v4, v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->d:Le/a/p5/h0;

    if-eqz v4, :cond_b

    .line 42
    invoke-direct {v2, v1, v12, v4}, Le/a/b0/a/c/a/c;-><init>(FLandroid/graphics/RectF;Le/a/p5/h0;)V

    goto :goto_4

    .line 43
    :cond_b
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    .line 44
    :cond_c
    instance-of v1, v1, Le/a/b0/a/c/m/a$a;

    if-eqz v1, :cond_e

    new-instance v2, Le/a/b0/a/c/a/b;

    .line 45
    invoke-direct/range {p0 .. p0}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->getBaseUnit()F

    move-result v1

    .line 46
    iget-object v4, v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->d:Le/a/p5/h0;

    if-eqz v4, :cond_d

    .line 47
    invoke-direct {v2, v1, v12, v4}, Le/a/b0/a/c/a/b;-><init>(FLandroid/graphics/RectF;Le/a/p5/h0;)V

    .line 48
    :goto_4
    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-object v2

    .line 49
    :cond_d
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    .line 50
    :cond_e
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1
.end method

.method public final f()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lq3/a/t0;->a:Lq3/a/t0;

    sget-object v0, Lq3/a/y2/q;->c:Lq3/a/y1;

    .line 3
    iput-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->a:Ls1/w/f;

    .line 4
    sget-object v0, Lq3/a/t0;->b:Lq3/a/g0;

    .line 5
    iput-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->b:Ls1/w/f;

    .line 6
    new-instance v0, Le/a/p5/i0;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v1

    invoke-direct {v0, v1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->d:Le/a/p5/h0;

    goto :goto_0

    .line 7
    :cond_0
    sget-object v0, Lq3/a/t0;->c:Lq3/a/g0;

    .line 8
    iput-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->a:Ls1/w/f;

    .line 9
    iput-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->b:Ls1/w/f;

    .line 10
    new-instance v0, Le/a/p5/i0;

    new-instance v1, Ln3/b/e/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/truecaller/common/ui/R$style;->ThemeX_Light:I

    invoke-direct {v1, v2, v3}, Ln3/b/e/c;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->d:Le/a/p5/h0;

    .line 11
    :goto_0
    new-instance v0, Le/a/b0/a/c/b;

    iget-object v1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->a:Ls1/w/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->d:Le/a/p5/h0;

    if-eqz v3, :cond_1

    invoke-direct {v0, v1, v3}, Le/a/b0/a/c/b;-><init>(Ls1/w/f;Le/a/p5/h0;)V

    iput-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->c:Le/a/b0/a/c/c;

    return-void

    :cond_1
    const-string v0, "resourceProvider"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string v0, "uiContext"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public final g(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    instance-of v1, p1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$f;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$f;

    iget v2, v1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$f;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$f;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$f;

    invoke-direct {v1, p0, p1}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$f;-><init>(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$f;->d:Ljava/lang/Object;

    .line 1
    iget v2, v1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$f;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v2, v1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$f;->g:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v2, p0

    .line 4
    :cond_3
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_4

    move p1, v3

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    if-nez p1, :cond_6

    .line 5
    iput-object v2, v1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$f;->g:Ljava/lang/Object;

    iput v3, v1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$f;->e:I

    .line 6
    new-instance p1, Lq3/a/o;

    invoke-static {v1}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v4

    invoke-direct {p1, v4, v3}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 7
    invoke-virtual {p1}, Lq3/a/o;->z()V

    .line 8
    new-instance v4, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$g;

    invoke-direct {v4, p1}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$g;-><init>(Lq3/a/n;)V

    invoke-static {v2, v4}, Le/a/p5/s0/f;->y(Landroid/view/View;Ls1/z/b/a;)V

    .line 9
    invoke-virtual {p1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    const-string v4, "frame"

    .line 10
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    if-ne p1, v0, :cond_3

    return-object v0

    .line 11
    :cond_6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->f()V

    .line 3
    new-instance v0, Le/a/b0/a/c/g;

    invoke-direct {v0}, Le/a/b0/a/c/g;-><init>()V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipToOutline(Z)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->c:Le/a/b0/a/c/c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Le/a/b0/a/c/l;

    invoke-direct {v0, p0}, Le/a/b0/a/c/l;-><init>(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;)V

    invoke-static {p0, v0}, Le/a/p5/s0/f;->y(Landroid/view/View;Ls1/z/b/a;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "presenter"

    .line 8
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->c:Le/a/b0/a/c/c;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/u2/a/e;->c()V

    goto :goto_0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    .line 3
    :cond_1
    :goto_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p1}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    .line 3
    iget-object p2, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->e:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Le/a/b0/a/c/m/a;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-virtual {p4}, Le/a/b0/a/c/m/a;->a()Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    move-result-object v0

    invoke-direct {p0}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->getTileInnerMargin()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->calculateMargin(F)Landroid/graphics/RectF;

    move-result-object v0

    .line 5
    instance-of v1, p3, Le/a/b0/a/c/a/a;

    const-string v2, "<set-?>"

    if-eqz v1, :cond_0

    move-object v1, p3

    check-cast v1, Le/a/b0/a/c/a/a;

    .line 6
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iput-object v0, v1, Le/a/b0/a/c/a/a;->f:Landroid/graphics/RectF;

    goto :goto_1

    .line 8
    :cond_0
    instance-of v1, p3, Le/a/b0/a/c/a/c;

    if-eqz v1, :cond_1

    move-object v1, p3

    check-cast v1, Le/a/b0/a/c/a/c;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object v0, v1, Le/a/b0/a/c/a/c;->e:Landroid/graphics/RectF;

    .line 11
    :cond_1
    :goto_1
    invoke-virtual {p4}, Le/a/b0/a/c/m/a;->a()Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    move-result-object p4

    invoke-direct {p0}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->getDividerSize()F

    move-result v0

    invoke-virtual {p4, p1, v0}, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->calculateBounds(FF)Landroid/graphics/RectF;

    move-result-object p4

    .line 12
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p4, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 13
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setConfigs(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/b0/a/c/m/b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "configs"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$d;

    invoke-direct {v0, p0, p1}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$d;-><init>(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;Ljava/util/List;)V

    invoke-static {p0, v0}, Le/a/p5/s0/f;->w(Landroid/view/View;Ls1/z/b/a;)V

    return-void
.end method
