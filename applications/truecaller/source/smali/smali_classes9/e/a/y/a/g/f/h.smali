.class public final Le/a/y/a/g/f/h;
.super Le/a/y/a/g/f/e;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0006\u00a8\u0006\u000c"
    }
    d2 = {
        "Le/a/y/a/g/f/h;",
        "Le/a/y/a/g/f/e;",
        "Landroidx/constraintlayout/widget/ConstraintLayout$a;",
        "layoutParams",
        "Ls1/s;",
        "g1",
        "(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V",
        "h1",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;)V",
        "flash_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/y/a/g/f/e;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public g1(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V
    .locals 2

    const-string v0, "layoutParams"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/y/a/g/f/e;->getEmojiAttributes$flash_release()Le/a/y/a/g/f/e$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    const/16 v1, 0x15

    .line 3
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    .line 4
    iget v0, v0, Le/a/y/a/g/f/e$a;->c:F

    .line 5
    invoke-virtual {p0}, Le/a/y/a/g/f/e;->getRandom()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v1, v0

    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->A:F

    :cond_0
    return-void
.end method

.method public h1(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V
    .locals 2

    const-string v0, "layoutParams"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/y/a/g/f/e;->getEmojiAttributes$flash_release()Le/a/y/a/g/f/e$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    const/16 v1, 0x15

    .line 3
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    .line 4
    iget v0, v0, Le/a/y/a/g/f/e$a;->e:F

    .line 5
    invoke-virtual {p0}, Le/a/y/a/g/f/e;->getRandom()Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    mul-float/2addr v1, v0

    add-float/2addr v1, v0

    .line 6
    iput v1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->A:F

    :cond_0
    return-void
.end method
