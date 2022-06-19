.class public final Lcom/google/android/gms/vision/CameraSource$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/google/android/gms/vision/CameraSource;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/vision/CameraSource;Le/m/a/f/r/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/vision/CameraSource$a;->a:Lcom/google/android/gms/vision/CameraSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource$a;->a:Lcom/google/android/gms/vision/CameraSource;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/vision/CameraSource;->m:Lcom/google/android/gms/vision/CameraSource$b;

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/vision/CameraSource$b;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v2, v0, Lcom/google/android/gms/vision/CameraSource$b;->g:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    const/4 p2, 0x0

    .line 6
    iput-object p2, v0, Lcom/google/android/gms/vision/CameraSource$b;->g:Ljava/nio/ByteBuffer;

    .line 7
    :cond_0
    iget-object p2, v0, Lcom/google/android/gms/vision/CameraSource$b;->h:Lcom/google/android/gms/vision/CameraSource;

    .line 8
    iget-object p2, p2, Lcom/google/android/gms/vision/CameraSource;->n:Ljava/util/Map;

    .line 9
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 10
    monitor-exit v1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/google/android/gms/vision/CameraSource$b;->b:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/google/android/gms/vision/CameraSource$b;->e:J

    .line 12
    iget p2, v0, Lcom/google/android/gms/vision/CameraSource$b;->f:I

    add-int/lit8 p2, p2, 0x1

    iput p2, v0, Lcom/google/android/gms/vision/CameraSource$b;->f:I

    .line 13
    iget-object p2, v0, Lcom/google/android/gms/vision/CameraSource$b;->h:Lcom/google/android/gms/vision/CameraSource;

    .line 14
    iget-object p2, p2, Lcom/google/android/gms/vision/CameraSource;->n:Ljava/util/Map;

    .line 15
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    iput-object p1, v0, Lcom/google/android/gms/vision/CameraSource$b;->g:Ljava/nio/ByteBuffer;

    .line 16
    iget-object p1, v0, Lcom/google/android/gms/vision/CameraSource$b;->c:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 17
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
