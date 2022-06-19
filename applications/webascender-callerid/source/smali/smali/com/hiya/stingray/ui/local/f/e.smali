.class public final Lcom/hiya/stingray/ui/local/f/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private final b:Landroid/widget/TextView;

.field private final c:Lcom/hiya/stingray/ui/local/f/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/TextView;Lcom/hiya/stingray/ui/local/f/d;)V
    .locals 1

    const-string v0, "appBar"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolbarTv"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/hiya/stingray/ui/local/f/e;->b:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/hiya/stingray/ui/local/f/e;->c:Lcom/hiya/stingray/ui/local/f/d;

    .line 2
    new-instance p2, Lcom/hiya/stingray/ui/local/f/e$a;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/ui/local/f/e$a;-><init>(Lcom/hiya/stingray/ui/local/f/e;)V

    invoke-virtual {p1, p2}, Lcom/google/android/material/appbar/AppBarLayout;->b(Lcom/google/android/material/appbar/AppBarLayout$e;)V

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/ui/local/f/e;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/f/e;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/stingray/ui/local/f/e;)Lcom/hiya/stingray/ui/local/f/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/local/f/e;->c:Lcom/hiya/stingray/ui/local/f/d;

    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/local/f/e;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/hiya/stingray/ui/local/f/e;->a:Z

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/e;->c:Lcom/hiya/stingray/ui/local/f/d;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/local/f/d;->A0()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/hiya/stingray/ui/local/f/e$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/f/e$b;-><init>(Lcom/hiya/stingray/ui/local/f/e;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/local/f/e;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/hiya/stingray/ui/local/f/e;->a:Z

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/ui/local/f/e;->c:Lcom/hiya/stingray/ui/local/f/d;

    invoke-interface {v0}, Lcom/hiya/stingray/ui/local/f/d;->A0()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 5
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/hiya/stingray/ui/local/f/e$c;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/ui/local/f/e$c;-><init>(Lcom/hiya/stingray/ui/local/f/e;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method
