.class Lzendesk/belvedere/m$f;
.super Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/belvedere/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z

.field final synthetic b:Lzendesk/belvedere/m;


# direct methods
.method private constructor <init>(Lzendesk/belvedere/m;Z)V
    .locals 0

    .line 2
    iput-object p1, p0, Lzendesk/belvedere/m$f;->b:Lzendesk/belvedere/m;

    invoke-direct {p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;-><init>()V

    .line 3
    iput-boolean p2, p0, Lzendesk/belvedere/m$f;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/belvedere/m;ZLzendesk/belvedere/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lzendesk/belvedere/m$f;-><init>(Lzendesk/belvedere/m;Z)V

    return-void
.end method

.method private a(IFILandroid/view/View;)V
    .locals 2

    int-to-float p1, p1

    mul-float v0, p2, p1

    sub-float/2addr p1, v0

    int-to-float p3, p3

    cmpg-float v0, p1, p3

    if-gtz v0, :cond_0

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/m$f;->b:Lzendesk/belvedere/m;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lzendesk/belvedere/z;->e(Landroid/view/View;Z)V

    const/high16 v0, 0x3f800000    # 1.0f

    div-float p3, p1, p3

    sub-float/2addr v0, p3

    .line 2
    invoke-virtual {p4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 3
    invoke-virtual {p4, p1}, Landroid/view/View;->setY(F)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lzendesk/belvedere/m$f;->b:Lzendesk/belvedere/m;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lzendesk/belvedere/z;->e(Landroid/view/View;Z)V

    .line 5
    :goto_0
    iget-object p1, p0, Lzendesk/belvedere/m$f;->b:Lzendesk/belvedere/m;

    invoke-static {p1, p2}, Lzendesk/belvedere/m;->n(Lzendesk/belvedere/m;F)V

    return-void
.end method


# virtual methods
.method public layoutDependsOn(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    .line 1
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p1

    sget p2, Lzendesk/belvedere/a0/f;->d:I

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    iget-object v1, p0, Lzendesk/belvedere/m$f;->b:Lzendesk/belvedere/m;

    invoke-static {v1}, Lzendesk/belvedere/m;->i(Lzendesk/belvedere/m;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p3

    sub-float/2addr v1, p3

    iget-object p3, p0, Lzendesk/belvedere/m$f;->b:Lzendesk/belvedere/m;

    invoke-static {p3}, Lzendesk/belvedere/m;->i(Lzendesk/belvedere/m;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr v1, p3

    int-to-float p3, v0

    div-float/2addr v1, p3

    .line 3
    iget-object p3, p0, Lzendesk/belvedere/m$f;->b:Lzendesk/belvedere/m;

    invoke-static {p3}, Lzendesk/belvedere/m;->l(Lzendesk/belvedere/m;)Landroidx/appcompat/widget/Toolbar;

    move-result-object p3

    invoke-static {p3}, Lf/h/l/t;->C(Landroid/view/View;)I

    move-result p3

    invoke-direct {p0, v0, v1, p3, p2}, Lzendesk/belvedere/m$f;->a(IFILandroid/view/View;)V

    .line 4
    iget-boolean p2, p0, Lzendesk/belvedere/m$f;->a:Z

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lzendesk/belvedere/m$f;->b:Lzendesk/belvedere/m;

    invoke-static {p2}, Lzendesk/belvedere/m;->m(Lzendesk/belvedere/m;)Lzendesk/belvedere/k;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result p1

    invoke-virtual {p2, p1, v0, v1}, Lzendesk/belvedere/k;->h(IIF)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
