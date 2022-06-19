.class public final Le/a/u4/p$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/u4/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/truecaller/scanner/NumberDetectorProcessor;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/truecaller/scanner/ScannerView;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/u4/p;


# direct methods
.method public constructor <init>(Le/a/u4/p;Lcom/truecaller/scanner/NumberDetectorProcessor;Lcom/truecaller/scanner/ScannerView;)V
    .locals 1

    const-string v0, "scannerSourceManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detectorProcessor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scannerView"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Le/a/u4/p$b;->c:Le/a/u4/p;

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Le/a/u4/p$b;->a:Ljava/lang/ref/WeakReference;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Le/a/u4/p$b;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, [Ljava/lang/Void;

    const-string v0, "voids"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/u4/p$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/scanner/NumberDetectorProcessor;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/scanner/NumberDetectorProcessor;->release()V

    .line 4
    :cond_0
    iget-object p1, p0, Le/a/u4/p$b;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/scanner/ScannerView;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p1, Lcom/truecaller/scanner/ScannerView;->c:Z

    .line 6
    iput-boolean v1, p1, Lcom/truecaller/scanner/ScannerView;->b:Z

    .line 7
    iget-object v1, p1, Lcom/truecaller/scanner/ScannerView;->d:Lcom/google/android/gms/vision/CameraSource;

    if-eqz v1, :cond_1

    .line 8
    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/vision/CameraSource;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/vision/CameraSource;->b()V

    .line 10
    iget-object v1, v1, Lcom/google/android/gms/vision/CameraSource;->m:Lcom/google/android/gms/vision/CameraSource$b;

    .line 11
    iget-object v3, v1, Lcom/google/android/gms/vision/CameraSource$b;->a:Lcom/google/android/gms/vision/Detector;

    invoke-virtual {v3}, Lcom/google/android/gms/vision/Detector;->d()V

    .line 12
    iput-object v0, v1, Lcom/google/android/gms/vision/CameraSource$b;->a:Lcom/google/android/gms/vision/Detector;

    .line 13
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 14
    :catch_0
    :goto_0
    new-instance v1, Le/a/u4/a;

    invoke-direct {v1, p1}, Le/a/u4/a;-><init>(Lcom/truecaller/scanner/ScannerView;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 15
    iput-object v0, p1, Lcom/truecaller/scanner/ScannerView;->d:Lcom/google/android/gms/vision/CameraSource;

    :cond_1
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Le/a/u4/p$b;->c:Le/a/u4/p;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Le/a/u4/p;->a:Z

    .line 4
    iget-object p1, p1, Le/a/u4/p;->b:Le/a/u4/p$a;

    if-eqz p1, :cond_0

    check-cast p1, Le/a/u4/c;

    .line 5
    iget-object p1, p1, Le/a/u4/c;->a:Lcom/truecaller/scanner/ScannerManagerImpl;

    .line 6
    invoke-virtual {p1}, Lcom/truecaller/scanner/ScannerManagerImpl;->a()V

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/scanner/ScannerManagerImpl;->c()V

    .line 8
    iget-object p1, p1, Lcom/truecaller/scanner/ScannerManagerImpl;->i:Le/a/u4/p;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p1, Le/a/u4/p;->b:Le/a/u4/p$a;

    :cond_0
    return-void
.end method
