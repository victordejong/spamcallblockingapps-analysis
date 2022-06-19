.class Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->o1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field b:I

.field final synthetic c:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;->c:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;->a:Z

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;->b:I

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 5

    .line 1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    .line 2
    iget-boolean p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;->a:Z

    const-wide/16 v1, 0x1f4

    const v3, 0x3dcccccd    # 0.1f

    if-eqz p1, :cond_0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    iget v4, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;->b:I

    if-le v4, p2, :cond_0

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;->c:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    invoke-static {p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->h1(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->m()V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;->c:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    iget-object p1, p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->toolbarTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d$a;-><init>(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 7
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;->a:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 10
    iget p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;->b:I

    if-ge p1, p2, :cond_1

    cmpg-float p1, v0, v3

    if-gez p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;->c:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    invoke-static {p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->h1(Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;)Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/contactdetails/ContactDetailHeaderView;->n()V

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;->a:Z

    .line 13
    iget-object p1, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;->c:Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;

    iget-object p1, p1, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment;->toolbarTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 15
    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 17
    :cond_1
    :goto_0
    iput p2, p0, Lcom/hiya/stingray/ui/contactdetails/ContactDetailFragment$d;->b:I

    return-void
.end method
