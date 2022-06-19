.class public final Le/a/u/g$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/u/g;->Gy(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/u/g;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/u/g;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/u/g$f;->a:Le/a/u/g;

    iput-object p2, p0, Le/a/u/g$f;->b:Ljava/util/List;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 1
    iget-object v0, p0, Le/a/u/g$f;->a:Le/a/u/g;

    .line 2
    iget-object v0, v0, Le/a/u/g;->i:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "swipeToContinueContainer"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget v1, p1, Lcom/google/android/material/tabs/TabLayout$g;->d:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 6
    iget p1, p1, Lcom/google/android/material/tabs/TabLayout$g;->d:I

    const-wide/16 v0, 0x14a

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Le/a/u/g$f;->a:Le/a/u/g;

    .line 8
    invoke-virtual {p1}, Le/a/u/g;->RA()Landroid/view/View;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 12
    new-instance v1, Le/a/u/i;

    invoke-direct {v1, p1}, Le/a/u/i;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    .line 13
    :cond_2
    iget-object p1, p0, Le/a/u/g$f;->a:Le/a/u/g;

    .line 14
    invoke-virtual {p1}, Le/a/u/g;->RA()Landroid/view/View;

    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 16
    invoke-virtual {v3, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 17
    invoke-virtual {p1}, Le/a/u/g;->RA()Landroid/view/View;

    move-result-object v1

    const-string v3, "fabShare"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object p1, p1, Le/a/u/g;->b:Le/a/p5/c0;

    if-eqz p1, :cond_3

    sget v3, Lcom/truecaller/stats/R$dimen;->tag_view_icon_size:I

    invoke-interface {p1, v3}, Le/a/p5/c0;->H(I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 18
    new-instance v0, Le/a/u/h;

    invoke-direct {v0, v2}, Le/a/u/h;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :cond_3
    const-string p1, "resourceProvider"

    .line 19
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public b(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0

    return-void
.end method
