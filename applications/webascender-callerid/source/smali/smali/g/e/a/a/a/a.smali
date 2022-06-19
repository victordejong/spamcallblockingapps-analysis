.class public Lg/e/a/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field protected b:F

.field protected c:F


# direct methods
.method public constructor <init>(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lg/e/a/a/a/a;->b:F

    .line 3
    iput v0, p0, Lg/e/a/a/a/a;->c:F

    .line 4
    iput-object p1, p0, Lg/e/a/a/a/a;->a:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method private d(ILg/e/a/a/a/b$d;)Landroid/animation/ObjectAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    const-string v1, "phaseY"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long p1, p1

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public a(ILg/e/a/a/a/b$d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lg/e/a/a/a/a;->d(ILg/e/a/a/a/b$d;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lg/e/a/a/a/a;->a:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public b()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/a/a;->c:F

    return v0
.end method

.method public c()F
    .locals 1

    .line 1
    iget v0, p0, Lg/e/a/a/a/a;->b:F

    return v0
.end method
