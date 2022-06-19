.class Lzendesk/support/request/RequestViewConversationsEnabled$ImagePickerDragAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/belvedere/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/RequestViewConversationsEnabled;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ImagePickerDragAnimation"
.end annotation


# instance fields
.field private final cubicBezierInterpolator:Landroid/view/animation/Interpolator;

.field private final messageComposer:Landroid/view/View;

.field private final recycler:Landroid/view/View;

.field private final toolbar:Landroid/view/View;

.field private final toolbarContainer:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsEnabled$ImagePickerDragAnimation;->toolbarContainer:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lzendesk/support/request/RequestViewConversationsEnabled$ImagePickerDragAnimation;->messageComposer:Landroid/view/View;

    .line 4
    iput-object p3, p0, Lzendesk/support/request/RequestViewConversationsEnabled$ImagePickerDragAnimation;->recycler:Landroid/view/View;

    .line 5
    iput-object p4, p0, Lzendesk/support/request/RequestViewConversationsEnabled$ImagePickerDragAnimation;->toolbar:Landroid/view/View;

    const p1, 0x3e428f5c    # 0.19f

    const/4 p2, 0x0

    const p3, 0x3e4ccccd    # 0.2f

    const/high16 p4, 0x3f800000    # 1.0f

    .line 6
    invoke-static {p1, p2, p3, p4}, Lf/h/l/d0/b;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lzendesk/support/request/RequestViewConversationsEnabled$ImagePickerDragAnimation;->cubicBezierInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private animateBackground(IF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/support/request/RequestViewConversationsEnabled$ImagePickerDragAnimation;->cubicBezierInterpolator:Landroid/view/animation/Interpolator;

    const v1, 0x3e99999a    # 0.3f

    mul-float p2, p2, v1

    invoke-interface {v0, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    const/high16 v0, -0x40800000    # -1.0f

    mul-float p2, p2, v0

    int-to-float p1, p1

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 2
    iget-object p2, p0, Lzendesk/support/request/RequestViewConversationsEnabled$ImagePickerDragAnimation;->messageComposer:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 3
    iget-object p2, p0, Lzendesk/support/request/RequestViewConversationsEnabled$ImagePickerDragAnimation;->recycler:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private animateToolbar(IF)V
    .locals 2

    int-to-float v0, p1

    mul-float p2, p2, v0

    .line 1
    iget-object v1, p0, Lzendesk/support/request/RequestViewConversationsEnabled$ImagePickerDragAnimation;->toolbar:Landroid/view/View;

    invoke-static {v1}, Lf/h/l/t;->C(Landroid/view/View;)I

    move-result v1

    if-lez p1, :cond_0

    sub-float/2addr v0, p2

    int-to-float p1, v1

    cmpg-float p2, v0, p1

    if-gez p2, :cond_0

    .line 2
    iget-object p2, p0, Lzendesk/support/request/RequestViewConversationsEnabled$ImagePickerDragAnimation;->toolbarContainer:Landroid/view/View;

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lzendesk/support/request/RequestViewConversationsEnabled$ImagePickerDragAnimation;->toolbarContainer:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onScroll(IIF)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lzendesk/support/request/RequestViewConversationsEnabled$ImagePickerDragAnimation;->animateToolbar(IF)V

    .line 2
    invoke-direct {p0, p2, p3}, Lzendesk/support/request/RequestViewConversationsEnabled$ImagePickerDragAnimation;->animateBackground(IF)V

    return-void
.end method
