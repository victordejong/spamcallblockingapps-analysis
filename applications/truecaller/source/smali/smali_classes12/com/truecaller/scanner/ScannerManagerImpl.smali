.class public Lcom/truecaller/scanner/ScannerManagerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/u4/o;
.implements Lcom/truecaller/scanner/NumberDetectorProcessor$a;
.implements Lcom/truecaller/scanner/ScannerView$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/truecaller/scanner/ScannerView;

.field public final c:Le/a/u4/o$a;

.field public final d:Le/a/u4/o$b;

.field public final e:Lcom/truecaller/scanner/NumberDetectorProcessor;

.field public final f:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

.field public final g:Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;

.field public h:Lcom/google/android/gms/vision/CameraSource;

.field public final i:Le/a/u4/p;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;Le/a/u4/o$a;Le/a/u4/o$b;Le/a/u4/p;Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->a:Landroid/content/Context;

    const v0, 0x7f0a037d

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/truecaller/scanner/ScannerView;

    iput-object p2, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->b:Lcom/truecaller/scanner/ScannerView;

    .line 4
    iput-object p4, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->c:Le/a/u4/o$a;

    .line 5
    iput-object p5, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->d:Le/a/u4/o$b;

    .line 6
    new-instance p2, Lcom/truecaller/scanner/NumberDetectorProcessor;

    invoke-direct {p2, p0, p3}, Lcom/truecaller/scanner/NumberDetectorProcessor;-><init>(Lcom/truecaller/scanner/NumberDetectorProcessor$a;Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;)V

    iput-object p2, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->e:Lcom/truecaller/scanner/NumberDetectorProcessor;

    .line 7
    iput-object p6, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->i:Le/a/u4/p;

    .line 8
    new-instance p2, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;

    invoke-direct {p2, p1}, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;-><init>(Landroid/content/Context;)V

    .line 9
    new-instance p3, Lcom/google/android/gms/internal/vision/zzh;

    iget-object p2, p2, Lcom/google/android/gms/vision/barcode/BarcodeDetector$Builder;->b:Lcom/google/android/gms/internal/vision/zzf;

    invoke-direct {p3, p1, p2}, Lcom/google/android/gms/internal/vision/zzh;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/vision/zzf;)V

    .line 10
    new-instance p1, Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    const/4 p2, 0x0

    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;-><init>(Lcom/google/android/gms/internal/vision/zzh;Le/m/a/f/r/a/a;)V

    .line 11
    iput-object p1, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->f:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    .line 12
    iput-object p7, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->g:Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->g:Lcom/truecaller/scanner/ScannerManagerImpl$ScannerType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v1, "ScannerManager"

    const-string v2, "Low storage"

    const/4 v3, 0x0

    const-string v4, "android.intent.action.DEVICE_STORAGE_LOW"

    const/16 v5, 0x400

    const/16 v6, 0x500

    const/high16 v7, 0x41f00000    # 30.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v9, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance v0, Le/a/u4/s/e;

    iget-object v10, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->a:Landroid/content/Context;

    check-cast v10, Le/a/u4/s/d$a;

    invoke-direct {v0, v10}, Le/a/u4/s/e;-><init>(Le/a/u4/s/d$a;)V

    .line 3
    iget-object v10, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->f:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    new-instance v11, Lcom/google/android/gms/vision/MultiProcessor$Builder;

    invoke-direct {v11, v0}, Lcom/google/android/gms/vision/MultiProcessor$Builder;-><init>(Lcom/google/android/gms/vision/MultiProcessor$Factory;)V

    .line 4
    iget-object v0, v11, Lcom/google/android/gms/vision/MultiProcessor$Builder;->a:Lcom/google/android/gms/vision/MultiProcessor;

    .line 5
    invoke-virtual {v10, v0}, Lcom/google/android/gms/vision/Detector;->e(Lcom/google/android/gms/vision/Detector$Processor;)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->f:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-virtual {v0}, Lcom/google/android/gms/vision/barcode/BarcodeDetector;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v4, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->a:Landroid/content/Context;

    invoke-virtual {v4, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v9

    goto :goto_0

    :cond_1
    move v0, v8

    :goto_0
    if-eqz v0, :cond_2

    .line 9
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/truecaller/log/AssertionUtil;->reportWithSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/truecaller/scanner/ScannerManagerImpl;->b()V

    goto/16 :goto_2

    .line 11
    :cond_2
    new-instance v0, Lcom/google/android/gms/vision/CameraSource$Builder;

    iget-object v1, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->f:Lcom/google/android/gms/vision/barcode/BarcodeDetector;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/vision/CameraSource$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/vision/Detector;)V

    .line 12
    invoke-virtual {v0, v8}, Lcom/google/android/gms/vision/CameraSource$Builder;->a(I)Lcom/google/android/gms/vision/CameraSource$Builder;

    .line 13
    invoke-virtual {v0, v7}, Lcom/google/android/gms/vision/CameraSource$Builder;->b(F)Lcom/google/android/gms/vision/CameraSource$Builder;

    .line 14
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/vision/CameraSource$Builder;->c(II)Lcom/google/android/gms/vision/CameraSource$Builder;

    .line 15
    iget-object v1, v0, Lcom/google/android/gms/vision/CameraSource$Builder;->b:Lcom/google/android/gms/vision/CameraSource;

    .line 16
    iput-boolean v9, v1, Lcom/google/android/gms/vision/CameraSource;->j:Z

    .line 17
    new-instance v2, Lcom/google/android/gms/vision/CameraSource$b;

    iget-object v3, v0, Lcom/google/android/gms/vision/CameraSource$Builder;->a:Lcom/google/android/gms/vision/Detector;

    invoke-direct {v2, v1, v3}, Lcom/google/android/gms/vision/CameraSource$b;-><init>(Lcom/google/android/gms/vision/CameraSource;Lcom/google/android/gms/vision/Detector;)V

    .line 18
    iput-object v2, v1, Lcom/google/android/gms/vision/CameraSource;->m:Lcom/google/android/gms/vision/CameraSource$b;

    .line 19
    iget-object v0, v0, Lcom/google/android/gms/vision/CameraSource$Builder;->b:Lcom/google/android/gms/vision/CameraSource;

    .line 20
    iput-object v0, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->h:Lcom/google/android/gms/vision/CameraSource;

    goto :goto_2

    .line 21
    :cond_3
    new-instance v0, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;

    iget-object v10, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->a:Landroid/content/Context;

    invoke-direct {v0, v10}, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v11, Lcom/google/android/gms/internal/vision/zzai;

    iget-object v0, v0, Lcom/google/android/gms/vision/text/TextRecognizer$Builder;->b:Lcom/google/android/gms/internal/vision/zzah;

    invoke-direct {v11, v10, v0}, Lcom/google/android/gms/internal/vision/zzai;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/vision/zzah;)V

    .line 23
    new-instance v0, Lcom/google/android/gms/vision/text/TextRecognizer;

    invoke-direct {v0, v11, v3}, Lcom/google/android/gms/vision/text/TextRecognizer;-><init>(Lcom/google/android/gms/internal/vision/zzai;Le/m/a/f/r/c/a;)V

    .line 24
    iget-object v10, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->e:Lcom/truecaller/scanner/NumberDetectorProcessor;

    invoke-virtual {v0, v10}, Lcom/google/android/gms/vision/Detector;->e(Lcom/google/android/gms/vision/Detector$Processor;)V

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/vision/text/TextRecognizer;->b()Z

    move-result v10

    if-nez v10, :cond_5

    .line 26
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object v4, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->a:Landroid/content/Context;

    invoke-virtual {v4, v3, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_4

    move v3, v9

    goto :goto_1

    :cond_4
    move v3, v8

    :goto_1
    if-eqz v3, :cond_5

    .line 28
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/truecaller/log/AssertionUtil;->reportWithSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0}, Lcom/truecaller/scanner/ScannerManagerImpl;->b()V

    goto :goto_2

    .line 30
    :cond_5
    new-instance v1, Lcom/google/android/gms/vision/CameraSource$Builder;

    iget-object v2, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/vision/CameraSource$Builder;-><init>(Landroid/content/Context;Lcom/google/android/gms/vision/Detector;)V

    .line 31
    invoke-virtual {v1, v8}, Lcom/google/android/gms/vision/CameraSource$Builder;->a(I)Lcom/google/android/gms/vision/CameraSource$Builder;

    .line 32
    invoke-virtual {v1, v7}, Lcom/google/android/gms/vision/CameraSource$Builder;->b(F)Lcom/google/android/gms/vision/CameraSource$Builder;

    .line 33
    invoke-virtual {v1, v6, v5}, Lcom/google/android/gms/vision/CameraSource$Builder;->c(II)Lcom/google/android/gms/vision/CameraSource$Builder;

    .line 34
    iget-object v0, v1, Lcom/google/android/gms/vision/CameraSource$Builder;->b:Lcom/google/android/gms/vision/CameraSource;

    .line 35
    iput-boolean v9, v0, Lcom/google/android/gms/vision/CameraSource;->j:Z

    .line 36
    new-instance v2, Lcom/google/android/gms/vision/CameraSource$b;

    iget-object v3, v1, Lcom/google/android/gms/vision/CameraSource$Builder;->a:Lcom/google/android/gms/vision/Detector;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/vision/CameraSource$b;-><init>(Lcom/google/android/gms/vision/CameraSource;Lcom/google/android/gms/vision/Detector;)V

    .line 37
    iput-object v2, v0, Lcom/google/android/gms/vision/CameraSource;->m:Lcom/google/android/gms/vision/CameraSource$b;

    .line 38
    iget-object v0, v1, Lcom/google/android/gms/vision/CameraSource$Builder;->b:Lcom/google/android/gms/vision/CameraSource;

    .line 39
    iput-object v0, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->h:Lcom/google/android/gms/vision/CameraSource;

    :goto_2
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->d:Le/a/u4/o$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/u4/o$b;->r3()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->i:Le/a/u4/p;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Le/a/u4/p;->a:Z

    .line 3
    sget-object v0, Lcom/google/android/gms/common/GoogleApiAvailability;->d:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 4
    iget-object v1, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->d(Landroid/content/Context;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->a:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/16 v3, 0x2329

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/google/android/gms/common/GoogleApiAvailability;->f(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->h:Lcom/google/android/gms/vision/CameraSource;

    if-eqz v0, :cond_2

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->b:Lcom/truecaller/scanner/ScannerView;

    .line 10
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 11
    iget-object v2, v1, Lcom/truecaller/scanner/ScannerView;->a:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 12
    :cond_1
    iput-object p0, v1, Lcom/truecaller/scanner/ScannerView;->e:Lcom/truecaller/scanner/ScannerView$b;

    .line 13
    iput-object v0, v1, Lcom/truecaller/scanner/ScannerView;->d:Lcom/google/android/gms/vision/CameraSource;

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, v1, Lcom/truecaller/scanner/ScannerView;->b:Z

    .line 15
    invoke-virtual {v1}, Lcom/truecaller/scanner/ScannerView;->a()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 17
    invoke-virtual {p0}, Lcom/truecaller/scanner/ScannerManagerImpl;->b()V

    goto :goto_0

    :cond_2
    const-string v0, "Camera source null"

    .line 18
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScannerManager"

    invoke-static {v1, v0}, Lcom/truecaller/log/AssertionUtil;->reportWithSummary(Ljava/lang/String;[Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/truecaller/scanner/ScannerManagerImpl;->b()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->b:Lcom/truecaller/scanner/ScannerView;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Le/a/u4/p$b;

    iget-object v1, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->i:Le/a/u4/p;

    iget-object v2, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->e:Lcom/truecaller/scanner/NumberDetectorProcessor;

    iget-object v3, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->b:Lcom/truecaller/scanner/ScannerView;

    invoke-direct {v0, v1, v2, v3}, Le/a/u4/p$b;-><init>(Le/a/u4/p;Lcom/truecaller/scanner/NumberDetectorProcessor;Lcom/truecaller/scanner/ScannerView;)V

    .line 3
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->i:Le/a/u4/p;

    .line 2
    iget-boolean v0, v0, Le/a/u4/p;->a:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/scanner/ScannerManagerImpl;->c()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->i:Le/a/u4/p;

    .line 2
    iget-boolean v1, v0, Le/a/u4/p;->a:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/scanner/ScannerManagerImpl;->a()V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Le/a/u4/c;

    invoke-direct {v1, p0}, Le/a/u4/c;-><init>(Lcom/truecaller/scanner/ScannerManagerImpl;)V

    .line 5
    iput-object v1, v0, Le/a/u4/p;->b:Le/a/u4/p$a;

    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->b:Lcom/truecaller/scanner/ScannerView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, Lcom/truecaller/scanner/ScannerView;->c:Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/truecaller/scanner/ScannerManagerImpl;->i:Le/a/u4/p;

    const/4 v1, 0x0

    .line 4
    iput-object v1, v0, Le/a/u4/p;->b:Le/a/u4/p$a;

    return-void
.end method
