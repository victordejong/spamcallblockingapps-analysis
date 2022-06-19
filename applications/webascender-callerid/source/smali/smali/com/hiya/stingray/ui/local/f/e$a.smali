.class public final Lcom/hiya/stingray/ui/local/f/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/f/e;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Landroid/widget/TextView;Lcom/hiya/stingray/ui/local/f/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field final synthetic c:Lcom/hiya/stingray/ui/local/f/e;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/f/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/local/f/e$a;->c:Lcom/hiya/stingray/ui/local/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/local/f/e$a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 5

    const-string v0, "appBarLayout"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 2
    iget-boolean p1, p0, Lcom/hiya/stingray/ui/local/f/e$a;->a:Z

    const-wide/16 v1, 0x1f4

    const v3, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    iget v4, p0, Lcom/hiya/stingray/ui/local/f/e$a;->b:I

    if-le v4, p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/e$a;->c:Lcom/hiya/stingray/ui/local/f/e;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/f/e;->c()V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/e$a;->c:Lcom/hiya/stingray/ui/local/f/e;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/f/e;->a(Lcom/hiya/stingray/ui/local/f/e;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/hiya/stingray/ui/local/f/e$a$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/local/f/e$a$a;-><init>(Lcom/hiya/stingray/ui/local/f/e$a;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 8
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/local/f/e$a;->a:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 10
    iget p1, p0, Lcom/hiya/stingray/ui/local/f/e$a;->b:I

    if-ge p1, p2, :cond_1

    cmpg-float p1, v0, v3

    if-gez p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/e$a;->c:Lcom/hiya/stingray/ui/local/f/e;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/local/f/e;->d()V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/local/f/e$a;->a:Z

    .line 13
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/f/e$a;->c:Lcom/hiya/stingray/ui/local/f/e;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/f/e;->a(Lcom/hiya/stingray/ui/local/f/e;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 16
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 17
    :cond_1
    :goto_0
    iput p2, p0, Lcom/hiya/stingray/ui/local/f/e$a;->b:I

    return-void
.end method
