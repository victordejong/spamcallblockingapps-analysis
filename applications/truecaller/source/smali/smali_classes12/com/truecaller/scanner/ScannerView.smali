.class public Lcom/truecaller/scanner/ScannerView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/scanner/ScannerView$b;,
        Lcom/truecaller/scanner/ScannerView$c;
    }
.end annotation


# instance fields
.field public a:Landroid/view/SurfaceView;

.field public b:Z

.field public c:Z

.field public d:Lcom/google/android/gms/vision/CameraSource;

.field public e:Lcom/truecaller/scanner/ScannerView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcom/truecaller/scanner/ScannerView;->b:Z

    .line 3
    iput-boolean p2, p0, Lcom/truecaller/scanner/ScannerView;->c:Z

    .line 4
    new-instance p2, Landroid/view/SurfaceView;

    invoke-direct {p2, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/truecaller/scanner/ScannerView;->a:Landroid/view/SurfaceView;

    .line 5
    invoke-virtual {p2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    new-instance p2, Lcom/truecaller/scanner/ScannerView$c;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/truecaller/scanner/ScannerView$c;-><init>(Lcom/truecaller/scanner/ScannerView;Lcom/truecaller/scanner/ScannerView$a;)V

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 6
    iget-object p1, p0, Lcom/truecaller/scanner/ScannerView;->a:Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/truecaller/scanner/ScannerView;->b:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/truecaller/scanner/ScannerView;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/truecaller/scanner/ScannerView;->d:Lcom/google/android/gms/vision/CameraSource;

    if-eqz v0, :cond_2

    .line 2
    iget-object v1, p0, Lcom/truecaller/scanner/ScannerView;->a:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/CameraSource;->a(Landroid/view/SurfaceHolder;)Lcom/google/android/gms/vision/CameraSource;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/truecaller/scanner/ScannerView;->b:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/truecaller/scanner/ScannerView;->e:Lcom/truecaller/scanner/ScannerView$b;

    if-eqz v1, :cond_0

    .line 5
    check-cast v1, Lcom/truecaller/scanner/ScannerManagerImpl;

    .line 6
    invoke-virtual {v1}, Lcom/truecaller/scanner/ScannerManagerImpl;->b()V

    .line 7
    :cond_0
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 8
    iget-object v1, p0, Lcom/truecaller/scanner/ScannerView;->e:Lcom/truecaller/scanner/ScannerView$b;

    if-eqz v1, :cond_1

    .line 9
    check-cast v1, Lcom/truecaller/scanner/ScannerManagerImpl;

    .line 10
    iget-object v1, v1, Lcom/truecaller/scanner/ScannerManagerImpl;->d:Le/a/u4/o$b;

    if-eqz v1, :cond_1

    .line 11
    invoke-interface {v1}, Le/a/u4/o$b;->sd()V

    .line 12
    :cond_1
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/truecaller/scanner/ScannerView;->d:Lcom/google/android/gms/vision/CameraSource;

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/vision/CameraSource;->f:Lcom/google/android/gms/common/images/Size;

    if-eqz p1, :cond_0

    .line 3
    iget v0, p1, Lcom/google/android/gms/common/images/Size;->a:I

    .line 4
    iget p1, p1, Lcom/google/android/gms/common/images/Size;->b:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x140

    const/16 p1, 0xf0

    :goto_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    int-to-float p2, p4

    int-to-float p1, p1

    div-float/2addr p2, p1

    int-to-float p3, p5

    int-to-float v0, v0

    div-float/2addr p3, v0

    cmpl-float v1, p2, p3

    const/4 v2, 0x0

    if-lez v1, :cond_1

    mul-float/2addr v0, p2

    float-to-int p1, v0

    sub-int p2, p1, p5

    .line 5
    div-int/lit8 p2, p2, 0x2

    move p5, p1

    move p1, p2

    move p2, v2

    goto :goto_1

    :cond_1
    mul-float/2addr p1, p3

    float-to-int p1, p1

    sub-int p2, p1, p4

    .line 6
    div-int/lit8 p2, p2, 0x2

    move p4, p1

    move p1, v2

    .line 7
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    if-ge v2, p3, :cond_2

    .line 8
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    mul-int/lit8 v0, p2, -0x1

    mul-int/lit8 v1, p1, -0x1

    sub-int v3, p4, p2

    sub-int v4, p5, p1

    invoke-virtual {p3, v0, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/truecaller/scanner/ScannerView;->a:Landroid/view/SurfaceView;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p0}, Lcom/truecaller/scanner/ScannerView;->a()V

    :cond_3
    return-void
.end method
