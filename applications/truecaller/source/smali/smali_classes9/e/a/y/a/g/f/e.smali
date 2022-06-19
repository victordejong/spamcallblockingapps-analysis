.class public abstract Le/a/y/a/g/f/e;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/y/a/g/f/e$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008&\u0018\u00002\u00020\u0001:\u0001$B\u000f\u0012\u0006\u0010!\u001a\u00020 \u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0017\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H&\u00a2\u0006\u0004\u0008\t\u0010\u0008J/\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u000c\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R$\u0010\u0019\u001a\u0004\u0018\u00010\u00128\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\u001c\u0010\u001f\u001a\u00020\u001a8\u0004@\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006%"
    }
    d2 = {
        "Le/a/y/a/g/f/e;",
        "Landroidx/constraintlayout/widget/ConstraintLayout;",
        "Ls1/s;",
        "onAttachedToWindow",
        "()V",
        "Landroidx/constraintlayout/widget/ConstraintLayout$a;",
        "layoutParams",
        "g1",
        "(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V",
        "h1",
        "",
        "viewSize",
        "emojiSize",
        "",
        "alpha",
        "totalNumber",
        "f1",
        "(IIFI)V",
        "Le/a/y/a/g/f/e$a;",
        "u",
        "Le/a/y/a/g/f/e$a;",
        "getEmojiAttributes$flash_release",
        "()Le/a/y/a/g/f/e$a;",
        "setEmojiAttributes$flash_release",
        "(Le/a/y/a/g/f/e$a;)V",
        "emojiAttributes",
        "Ljava/util/Random;",
        "t",
        "Ljava/util/Random;",
        "getRandom",
        "()Ljava/util/Random;",
        "random",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "a",
        "flash_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final t:Ljava/util/Random;

.field public u:Le/a/y/a/g/f/e$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Le/a/y/a/g/f/e;->t:Ljava/util/Random;

    return-void
.end method


# virtual methods
.method public final f1(IIFI)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/y/a/g/f/e;->u:Le/a/y/a/g/f/e$a;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-gt v1, p4, :cond_1

    .line 2
    :goto_0
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setId(I)V

    .line 4
    iget-object v3, v0, Le/a/y/a/g/f/e$a;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    int-to-float v3, p2

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 8
    iget-object v3, p0, Le/a/y/a/g/f/e;->t:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v5, -0x3e600000    # -20.0f

    mul-float/2addr v3, v5

    .line 9
    rem-int/lit8 v5, v1, 0x2

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    neg-float v3, v3

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setRotation(F)V

    .line 10
    new-instance v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    invoke-direct {v3, p1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    .line 11
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    .line 12
    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->s:I

    .line 13
    iget-object v4, p0, Le/a/y/a/g/f/e;->t:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextFloat()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;->z:F

    .line 14
    invoke-virtual {p0, v3}, Le/a/y/a/g/f/e;->g1(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 15
    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eq v1, p4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract g1(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V
.end method

.method public final getEmojiAttributes$flash_release()Le/a/y/a/g/f/e$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y/a/g/f/e;->u:Le/a/y/a/g/f/e$a;

    return-object v0
.end method

.method public final getRandom()Ljava/util/Random;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y/a/g/f/e;->t:Ljava/util/Random;

    return-object v0
.end method

.method public abstract h1(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V
.end method

.method public onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Le/a/y/a/g/f/e;->u:Le/a/y/a/g/f/e$a;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    .line 4
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout$a;-><init>(II)V

    .line 5
    iget v0, v0, Le/a/y/a/g/f/e$a;->b:F

    .line 6
    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->c:F

    const/4 v0, 0x0

    .line 7
    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->R:I

    .line 8
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/flashsdk/R$dimen;->dp60:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/truecaller/flashsdk/R$dimen;->sp40:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x4

    .line 11
    invoke-virtual {p0, v0, v1, v2, v3}, Le/a/y/a/g/f/e;->f1(IIFI)V

    .line 12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/flashsdk/R$dimen;->dp48:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/truecaller/flashsdk/R$dimen;->sp32:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x6

    .line 14
    invoke-virtual {p0, v0, v1, v2, v3}, Le/a/y/a/g/f/e;->f1(IIFI)V

    .line 15
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/flashsdk/R$dimen;->dp32:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/truecaller/flashsdk/R$dimen;->sp20:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    const/16 v3, 0x8

    .line 17
    invoke-virtual {p0, v0, v1, v2, v3}, Le/a/y/a/g/f/e;->f1(IIFI)V

    :cond_0
    return-void
.end method

.method public final setEmojiAttributes$flash_release(Le/a/y/a/g/f/e$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/y/a/g/f/e;->u:Le/a/y/a/g/f/e$a;

    return-void
.end method
