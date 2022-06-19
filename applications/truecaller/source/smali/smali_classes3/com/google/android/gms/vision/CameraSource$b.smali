.class public final Lcom/google/android/gms/vision/CameraSource$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/vision/Detector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/vision/Detector<",
            "*>;"
        }
    .end annotation
.end field

.field public b:J

.field public final c:Ljava/lang/Object;

.field public d:Z

.field public e:J

.field public f:I

.field public g:Ljava/nio/ByteBuffer;

.field public final synthetic h:Lcom/google/android/gms/vision/CameraSource;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/vision/CameraSource;Lcom/google/android/gms/vision/Detector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/vision/CameraSource$b;->h:Lcom/google/android/gms/vision/CameraSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/vision/CameraSource$b;->b:J

    .line 3
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/vision/CameraSource$b;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/vision/CameraSource$b;->d:Z

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/google/android/gms/vision/CameraSource$b;->f:I

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/vision/CameraSource$b;->a:Lcom/google/android/gms/vision/Detector;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource$b;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :goto_1
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/vision/CameraSource$b;->d:Z

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/vision/CameraSource$b;->g:Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_0

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource$b;->c:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 4
    :catch_0
    :try_start_2
    monitor-exit v0

    return-void

    :cond_0
    if-nez v1, :cond_1

    .line 5
    monitor-exit v0

    return-void

    .line 6
    :cond_1
    new-instance v1, Lcom/google/android/gms/vision/Frame$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/vision/Frame$Builder;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/vision/CameraSource$b;->g:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/google/android/gms/vision/CameraSource$b;->h:Lcom/google/android/gms/vision/CameraSource;

    .line 7
    iget-object v3, v3, Lcom/google/android/gms/vision/CameraSource;->f:Lcom/google/android/gms/common/images/Size;

    .line 8
    iget v4, v3, Lcom/google/android/gms/common/images/Size;->a:I

    .line 9
    iget v3, v3, Lcom/google/android/gms/common/images/Size;->b:I

    const/16 v5, 0x11

    .line 10
    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/google/android/gms/vision/Frame$Builder;->a(Ljava/nio/ByteBuffer;III)Lcom/google/android/gms/vision/Frame$Builder;

    iget v2, p0, Lcom/google/android/gms/vision/CameraSource$b;->f:I

    .line 11
    iget-object v1, v1, Lcom/google/android/gms/vision/Frame$Builder;->a:Lcom/google/android/gms/vision/Frame;

    .line 12
    iget-object v3, v1, Lcom/google/android/gms/vision/Frame;->a:Lcom/google/android/gms/vision/Frame$Metadata;

    .line 13
    iput v2, v3, Lcom/google/android/gms/vision/Frame$Metadata;->c:I

    .line 14
    iget-wide v4, p0, Lcom/google/android/gms/vision/CameraSource$b;->e:J

    .line 15
    iput-wide v4, v3, Lcom/google/android/gms/vision/Frame$Metadata;->d:J

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/vision/CameraSource$b;->h:Lcom/google/android/gms/vision/CameraSource;

    .line 17
    iget v2, v2, Lcom/google/android/gms/vision/CameraSource;->e:I

    .line 18
    iput v2, v3, Lcom/google/android/gms/vision/Frame$Metadata;->e:I

    .line 19
    iget-object v2, v1, Lcom/google/android/gms/vision/Frame;->b:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_2

    .line 20
    iget-object v2, p0, Lcom/google/android/gms/vision/CameraSource$b;->g:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    .line 21
    iput-object v3, p0, Lcom/google/android/gms/vision/CameraSource$b;->g:Ljava/nio/ByteBuffer;

    .line 22
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource$b;->a:Lcom/google/android/gms/vision/Detector;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/vision/Detector;->c(Lcom/google/android/gms/vision/Frame;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 24
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource$b;->h:Lcom/google/android/gms/vision/CameraSource;

    .line 25
    iget-object v0, v0, Lcom/google/android/gms/vision/CameraSource;->c:Landroid/hardware/Camera;

    .line 26
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 27
    iget-object v1, p0, Lcom/google/android/gms/vision/CameraSource$b;->h:Lcom/google/android/gms/vision/CameraSource;

    .line 28
    iget-object v1, v1, Lcom/google/android/gms/vision/CameraSource;->c:Landroid/hardware/Camera;

    .line 29
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 30
    throw v0

    .line 31
    :catch_1
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource$b;->h:Lcom/google/android/gms/vision/CameraSource;

    .line 32
    iget-object v0, v0, Lcom/google/android/gms/vision/CameraSource;->c:Landroid/hardware/Camera;

    .line 33
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    goto :goto_0

    .line 34
    :cond_2
    :try_start_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing image data.  Call either setBitmap or setImageData to specify the image"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v1

    .line 35
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
