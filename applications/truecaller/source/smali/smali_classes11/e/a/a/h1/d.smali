.class public final Le/a/a/h1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/os/Handler;

.field public b:J

.field public c:J

.field public final d:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/widget/ProgressBar;)V
    .locals 2

    const-string v0, "progressBar"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/h1/d;->d:Landroid/widget/ProgressBar;

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Le/a/a/h1/d;->a:Landroid/os/Handler;

    const/16 v0, 0x2710

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0

    .line 1
    iput-wide p1, p0, Le/a/a/h1/d;->b:J

    add-long/2addr p1, p3

    .line 2
    iput-wide p1, p0, Le/a/a/h1/d;->c:J

    .line 3
    iget-object p1, p0, Le/a/a/h1/d;->a:Landroid/os/Handler;

    new-instance p2, Le/a/a/h1/d$a;

    invoke-direct {p2, p0}, Le/a/a/h1/d$a;-><init>(Le/a/a/h1/d;)V

    new-instance p3, Le/a/a/h1/f;

    invoke-direct {p3, p2}, Le/a/a/h1/f;-><init>(Ls1/z/b/a;)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p0}, Le/a/a/h1/d;->b()V

    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Le/a/a/h1/d;->c:J

    sub-long v0, v2, v0

    long-to-float v0, v0

    iget-wide v4, p0, Le/a/a/h1/d;->b:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    .line 3
    iget-object v1, p0, Le/a/a/h1/d;->d:Landroid/widget/ProgressBar;

    const/16 v2, 0x2710

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 4
    iget-object v0, p0, Le/a/a/h1/d;->a:Landroid/os/Handler;

    new-instance v1, Le/a/a/h1/d$b;

    invoke-direct {v1, p0}, Le/a/a/h1/d$b;-><init>(Le/a/a/h1/d;)V

    new-instance v2, Le/a/a/h1/f;

    invoke-direct {v2, v1}, Le/a/a/h1/f;-><init>(Ls1/z/b/a;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
