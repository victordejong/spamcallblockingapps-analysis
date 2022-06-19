.class public final Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;
.super Lcom/truecaller/android/truemoji/widget/EmojiTextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;,
        Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001:\u0002[\\J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\n\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J3\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00102\n\u0008\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00042\u0006\u0010\u001f\u001a\u00020\u001eH\u0014\u00a2\u0006\u0004\u0008 \u0010!J!\u0010$\u001a\u00020\u00042\u0012\u0010#\u001a\u000e\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u00040\"\u00a2\u0006\u0004\u0008$\u0010%J\r\u0010&\u001a\u00020\u0010\u00a2\u0006\u0004\u0008&\u0010\u0012J\u0017\u0010)\u001a\u00020\u00102\u0006\u0010(\u001a\u00020\'H\u0016\u00a2\u0006\u0004\u0008)\u0010*R%\u00101\u001a\n ,*\u0004\u0018\u00010+0+8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008-\u0010.\u001a\u0004\u0008/\u00100R\u001d\u00105\u001a\u0002028B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010.\u001a\u0004\u00083\u00104R%\u00107\u001a\n ,*\u0004\u0018\u00010+0+8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010.\u001a\u0004\u00086\u00100R$\u00109\u001a\u0010\u0012\u0004\u0012\u00020\u0018\u0012\u0004\u0012\u00020\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u00108R\u0016\u0010<\u001a\u00020\u00078\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R$\u0010A\u001a\u00020\u00162\u0006\u0010=\u001a\u00020\u00168\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010>\u001a\u0004\u0008?\u0010@R\u0016\u0010E\u001a\u00020B8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008C\u0010DR\u0016\u0010I\u001a\u00020F8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008G\u0010HR$\u0010M\u001a\u00020\u00182\u0006\u0010=\u001a\u00020\u00188\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008&\u0010J\u001a\u0004\u0008K\u0010LR\u0016\u0010P\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008N\u0010OR\u0016\u0010R\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008Q\u0010OR$\u0010Z\u001a\u0004\u0018\u00010S8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008T\u0010U\u001a\u0004\u0008V\u0010W\"\u0004\u0008X\u0010Y\u00a8\u0006]"
    }
    d2 = {
        "Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;",
        "Lcom/truecaller/android/truemoji/widget/EmojiTextView;",
        "",
        "padding",
        "Ls1/s;",
        "setPaddingEnd",
        "(I)V",
        "Landroid/graphics/RectF;",
        "getShowMoreBounds",
        "()Landroid/graphics/RectF;",
        "getCollapseButtonBounds",
        "getTextColor",
        "()I",
        "getBgColor",
        "j",
        "()V",
        "",
        "m",
        "()Z",
        "isPrimary",
        "k",
        "(Z)I",
        "Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;",
        "layoutStyle",
        "Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;",
        "layoutState",
        "shouldExpand",
        "maxLines",
        "h",
        "(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;ZLjava/lang/Integer;)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "onDraw",
        "(Landroid/graphics/Canvas;)V",
        "Lkotlin/Function1;",
        "listener",
        "setOnResizeClickListener",
        "(Ls1/z/b/l;)V",
        "l",
        "Landroid/view/MotionEvent;",
        "event",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "Landroid/graphics/drawable/Drawable;",
        "kotlin.jvm.PlatformType",
        "i",
        "Ls1/g;",
        "getExpandDrawable",
        "()Landroid/graphics/drawable/Drawable;",
        "expandDrawable",
        "Landroidx/appcompat/widget/AppCompatTextView;",
        "getShowMoreButton",
        "()Landroidx/appcompat/widget/AppCompatTextView;",
        "showMoreButton",
        "getCollapseDrawable",
        "collapseDrawable",
        "Ls1/z/b/l;",
        "onResizeListener",
        "n",
        "Landroid/graphics/RectF;",
        "rectF",
        "<set-?>",
        "Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;",
        "getCurrentLayoutStyle",
        "()Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;",
        "currentLayoutStyle",
        "Landroid/graphics/Rect;",
        "o",
        "Landroid/graphics/Rect;",
        "rect",
        "",
        "p",
        "F",
        "actualTextSize",
        "Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;",
        "getCurrentLayoutState",
        "()Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;",
        "currentLayoutState",
        "r",
        "I",
        "actualPaddingStart",
        "q",
        "actualPaddingEnd",
        "Lcom/truecaller/messaging/data/types/Message;",
        "g",
        "Lcom/truecaller/messaging/data/types/Message;",
        "getItem",
        "()Lcom/truecaller/messaging/data/types/Message;",
        "setItem",
        "(Lcom/truecaller/messaging/data/types/Message;)V",
        "item",
        "LayoutState",
        "LayoutStyle",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public g:Lcom/truecaller/messaging/data/types/Message;

.field public final h:Ls1/g;

.field public final i:Ls1/g;

.field public final j:Ls1/g;

.field public k:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

.field public l:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;

.field public m:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Landroid/graphics/RectF;

.field public final o:Landroid/graphics/Rect;

.field public p:F

.field public q:I

.field public r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/truecaller/android/truemoji/widget/EmojiTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance p2, Li2;

    invoke-direct {p2, v0, p1}, Li2;-><init>(ILjava/lang/Object;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->h:Ls1/g;

    .line 4
    new-instance p2, Li2;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p1}, Li2;-><init>(ILjava/lang/Object;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->i:Ls1/g;

    .line 5
    new-instance p2, Le/a/a/c/g6;

    invoke-direct {p2, p0, p1}, Le/a/a/c/g6;-><init>(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;Landroid/content/Context;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->j:Ls1/g;

    .line 6
    sget-object p1, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;->NORMAL:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    iput-object p1, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->k:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    .line 7
    sget-object p1, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;->EXPANDED:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;

    iput-object p1, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->l:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;

    .line 8
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->n:Landroid/graphics/RectF;

    .line 9
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->o:Landroid/graphics/Rect;

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->p:F

    .line 11
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result p1

    iput p1, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->q:I

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result p1

    iput p1, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->r:I

    return-void
.end method

.method public static final synthetic f(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->getBgColor()I

    move-result p0

    return p0
.end method

.method public static final synthetic g(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->getTextColor()I

    move-result p0

    return p0
.end method

.method private final getBgColor()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->g:Lcom/truecaller/messaging/data/types/Message;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/a/c/p/a;->A1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040627

    invoke-static {v0, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->g:Lcom/truecaller/messaging/data/types/Message;

    if-eqz v0, :cond_1

    invoke-static {v0}, Le/a/c/p/a;->x1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->g:Lcom/truecaller/messaging/data/types/Message;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040618

    invoke-static {v0, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->g:Lcom/truecaller/messaging/data/types/Message;

    if-eqz v0, :cond_4

    invoke-static {v0}, Le/a/c/p/a;->x1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->g:Lcom/truecaller/messaging/data/types/Message;

    if-eqz v0, :cond_2

    iget v2, v0, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    iget v0, v0, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-ne v0, v1, :cond_4

    .line 4
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040620

    invoke-static {v0, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04060d

    invoke-static {v0, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method private final getCollapseButtonBounds()Landroid/graphics/RectF;
    .locals 6

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->getExpandDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "expandDrawable"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v2, v4}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v0, v2

    .line 3
    iget-object v2, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->n:Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    .line 4
    iget v4, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->r:I

    int-to-float v4, v4

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->getExpandDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->q:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    :goto_1
    int-to-float v0, v0

    if-eqz v1, :cond_2

    .line 5
    iget v1, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->r:I

    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->getExpandDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    iget v5, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->q:I

    sub-int v5, v1, v5

    :goto_2
    int-to-float v1, v5

    .line 6
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->getExpandDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    .line 7
    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->n:Landroid/graphics/RectF;

    return-object v0
.end method

.method private final getCollapseDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->h:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private final getExpandDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->i:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private final getShowMoreBounds()Landroid/graphics/RectF;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->n:Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v2

    int-to-float v2, v2

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->getShowMoreButton()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 4
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->getShowMoreButton()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->getShowMoreButton()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v4

    sub-int/2addr v1, v4

    :goto_2
    int-to-float v1, v1

    .line 6
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 7
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->n:Landroid/graphics/RectF;

    return-object v0
.end method

.method private final getShowMoreButton()Landroidx/appcompat/widget/AppCompatTextView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->j:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    return-object v0
.end method

.method private final getTextColor()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->g:Lcom/truecaller/messaging/data/types/Message;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/a/c/p/a;->A1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040629

    invoke-static {v0, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->g:Lcom/truecaller/messaging/data/types/Message;

    if-eqz v0, :cond_1

    invoke-static {v0}, Le/a/c/p/a;->x1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->g:Lcom/truecaller/messaging/data/types/Message;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/truecaller/messaging/data/types/Message;->k:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04061d

    invoke-static {v0, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->g:Lcom/truecaller/messaging/data/types/Message;

    if-eqz v0, :cond_4

    invoke-static {v0}, Le/a/c/p/a;->x1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v0

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->g:Lcom/truecaller/messaging/data/types/Message;

    if-eqz v0, :cond_2

    iget v2, v0, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v0, :cond_4

    iget v0, v0, Lcom/truecaller/messaging/data/types/Message;->k:I

    if-ne v0, v1, :cond_4

    .line 4
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040625

    invoke-static {v0, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 5
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0405a1

    invoke-static {v0, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static synthetic i(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;ZLjava/lang/Integer;I)V
    .locals 0

    and-int/lit8 p4, p5, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p4, p5, 0x8

    const/4 p4, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->h(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;ZLjava/lang/Integer;)V

    return-void
.end method

.method private final setPaddingEnd(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingStart()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    .line 4
    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final getCurrentLayoutState()Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->l:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;

    return-object v0
.end method

.method public final getCurrentLayoutStyle()Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->k:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    return-object v0
.end method

.method public final getItem()Lcom/truecaller/messaging/data/types/Message;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->g:Lcom/truecaller/messaging/data/types/Message;

    return-object v0
.end method

.method public final h(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;ZLjava/lang/Integer;)V
    .locals 3

    const-string v0, "layoutStyle"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layoutState"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->k:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    .line 2
    iput-object p2, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->l:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_0

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->l()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->k(Z)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 6
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 8
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0704d3

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, v1, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, v0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->k(Z)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 11
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 12
    iget p1, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->p:F

    invoke-virtual {p0, v1, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->j()V

    .line 14
    :goto_0
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->k:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const v1, 0x7fffffff

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_5

    if-ne p1, p2, :cond_4

    :cond_3
    move v0, v1

    goto :goto_1

    .line 15
    :cond_4
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 16
    :cond_5
    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->l()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_6
    const/4 v0, 0x3

    .line 17
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    if-eqz p4, :cond_7

    .line 18
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_7
    if-eqz p3, :cond_8

    .line 19
    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->j()V

    .line 20
    sget-object p1, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;->EXPANDED:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;

    iput-object p1, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->l:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;

    .line 21
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final j()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->k(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2
    iget v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->p:F

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method public final k(Z)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->g:Lcom/truecaller/messaging/data/types/Message;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {v0}, Le/a/c/p/a;->s1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v0

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f04068d

    invoke-static {p1, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->g:Lcom/truecaller/messaging/data/types/Message;

    if-eqz p1, :cond_1

    invoke-static {p1}, Le/a/c/p/a;->s1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result p1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f04068f

    invoke-static {p1, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->getTextColor()I

    move-result p1

    :goto_0
    return p1
.end method

.method public final l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->l:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;

    sget-object v1, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;->COLLAPSED:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final m()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const-string v1, "layout"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->k:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    sget-object v1, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;->SHOW_MORE:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const-string v0, "canvas"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v0, v1}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->k:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    sget-object v2, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;->EXPANDABLE:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    iget v1, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->q:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->setPaddingEnd(I)V

    goto :goto_1

    .line 4
    :cond_1
    iget v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->q:I

    invoke-direct {p0, v0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->setPaddingEnd(I)V

    .line 5
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->k:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_2

    goto :goto_3

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->getCollapseButtonBounds()Landroid/graphics/RectF;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 9
    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->getExpandDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "expandDrawable"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 11
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->getExpandDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 12
    :cond_3
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->getCollapseDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "collapseDrawable"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->o:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 13
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->getCollapseDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 14
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_3

    .line 15
    :cond_4
    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->m()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    .line 16
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 17
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->getShowMoreBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 18
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v0, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 19
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->getShowMoreButton()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 20
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_6
    :goto_3
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->k:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->getCollapseButtonBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v2, v3}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v2

    .line 4
    iget v3, v0, Landroid/graphics/RectF;->left:F

    int-to-float v2, v2

    sub-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 5
    iget v3, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 6
    iget v3, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->right:F

    .line 7
    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, v2

    iput v3, v0, Landroid/graphics/RectF;->bottom:F

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    sget-object v3, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;->EXPANDABLE:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    sget-object p1, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;->EXPANDED:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, p0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->i(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;ZLjava/lang/Integer;I)V

    .line 12
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->m:Ls1/z/b/l;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    goto :goto_0

    .line 13
    :cond_1
    sget-object v3, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;->EXPANDABLE:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    sget-object p1, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;->COLLAPSED:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, p0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->i(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;ZLjava/lang/Integer;I)V

    .line 14
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->m:Ls1/z/b/l;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_2
    :goto_0
    return v1

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->m()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->getShowMoreBounds()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 17
    sget-object v3, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;->NORMAL:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    sget-object p1, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;->EXPANDED:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, p0

    move-object v4, p1

    invoke-static/range {v2 .. v7}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->i(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;ZLjava/lang/Integer;I)V

    .line 18
    iget-object v0, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->m:Ls1/z/b/l;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_4
    return v1

    .line 19
    :cond_5
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final setItem(Lcom/truecaller/messaging/data/types/Message;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->g:Lcom/truecaller/messaging/data/types/Message;

    return-void
.end method

.method public final setOnResizeClickListener(Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->m:Ls1/z/b/l;

    return-void
.end method
