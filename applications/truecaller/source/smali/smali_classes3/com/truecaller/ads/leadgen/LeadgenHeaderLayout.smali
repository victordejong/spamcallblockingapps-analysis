.class public final Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$c;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u001b\u0008\u0016\u0012\u0006\u0010(\u001a\u00020\'\u0012\u0008\u0010*\u001a\u0004\u0018\u00010)\u00a2\u0006\u0004\u0008+\u0010,J\u000f\u0010\u0004\u001a\u00020\u0003H\u0014\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001f\u0010\n\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0003H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0005R%\u0010\u0013\u001a\n \u000e*\u0004\u0018\u00010\r0\r8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R%\u0010\u001c\u001a\n \u000e*\u0004\u0018\u00010\u00180\u00188B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0010\u001a\u0004\u0008\u001a\u0010\u001bR%\u0010\u001f\u001a\n \u000e*\u0004\u0018\u00010\r0\r8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0010\u001a\u0004\u0008\u001e\u0010\u0012R\u0016\u0010\"\u001a\u00020\u00088\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006-"
    }
    d2 = {
        "Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Lcom/google/android/material/appbar/AppBarLayout$c;",
        "Ls1/s;",
        "onAttachedToWindow",
        "()V",
        "Lcom/google/android/material/appbar/AppBarLayout;",
        "appBarLayout",
        "",
        "verticalOffset",
        "Xm",
        "(Lcom/google/android/material/appbar/AppBarLayout;I)V",
        "f1",
        "Landroid/widget/ImageView;",
        "kotlin.jvm.PlatformType",
        "u",
        "Ls1/g;",
        "getHeaderImage",
        "()Landroid/widget/ImageView;",
        "headerImage",
        "",
        "y",
        "Z",
        "toolbarOpen",
        "Landroidx/constraintlayout/widget/Guideline;",
        "t",
        "getAnimationGuideline",
        "()Landroidx/constraintlayout/widget/Guideline;",
        "animationGuideline",
        "v",
        "getLogoImage",
        "logoImage",
        "x",
        "I",
        "lastPosition",
        "",
        "w",
        "F",
        "transitionThreshold",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
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
.field public final t:Ls1/g;

.field public final u:Ls1/g;

.field public final v:Ls1/g;

.field public w:F

.field public x:I

.field public y:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, 0x7f0a0170

    .line 3
    invoke-static {p0, p1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->t:Ls1/g;

    const p1, 0x7f0a0923

    .line 4
    invoke-static {p0, p1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->u:Ls1/g;

    const p1, 0x7f0a0b58

    .line 5
    invoke-static {p0, p1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->v:Ls1/g;

    const p1, 0x3eb33333    # 0.35f

    .line 6
    iput p1, p0, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->w:F

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->y:Z

    return-void
.end method

.method private final getAnimationGuideline()Landroidx/constraintlayout/widget/Guideline;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->t:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    return-object v0
.end method

.method private final getHeaderImage()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->u:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getLogoImage()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->v:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public Xm(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 4

    const-string v0, "appBarLayout"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->x:I

    if-ne v0, p2, :cond_0

    return-void

    .line 2
    :cond_0
    iput p2, p0, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->x:I

    int-to-float v0, p2

    .line 3
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 4
    invoke-direct {p0}, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->getAnimationGuideline()Landroidx/constraintlayout/widget/Guideline;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LGD "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->y:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->w:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " vo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 6
    iget-boolean p1, p0, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->y:Z

    if-eqz p1, :cond_1

    iget p2, p0, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->w:F

    cmpl-float p2, v0, p2

    if-lez p2, :cond_1

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->y:Z

    .line 8
    invoke-virtual {p0}, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->f1()V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 9
    iget p1, p0, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->w:F

    cmpg-float p1, v0, p1

    if-gez p1, :cond_2

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->y:Z

    .line 11
    invoke-virtual {p0}, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->f1()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final f1()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->y:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-direct {p0}, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->getHeaderImage()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 3
    invoke-direct {p0}, Lcom/truecaller/ads/leadgen/LeadgenHeaderLayout;->getLogoImage()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout;->a(Lcom/google/android/material/appbar/AppBarLayout$c;)V

    :cond_1
    return-void
.end method
