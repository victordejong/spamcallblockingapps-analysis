.class public abstract Lcom/google/android/gms/vision/Detector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/Detector$Processor;,
        Lcom/google/android/gms/vision/Detector$Detections;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lcom/google/android/gms/vision/Detector$Processor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/vision/Detector$Processor<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/Detector;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Frame;",
            ")",
            "Landroid/util/SparseArray<",
            "TT;>;"
        }
    .end annotation
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Lcom/google/android/gms/vision/Frame;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/vision/Frame$Metadata;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/vision/Frame;->a:Lcom/google/android/gms/vision/Frame$Metadata;

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/gms/vision/Frame$Metadata;-><init>(Lcom/google/android/gms/vision/Frame$Metadata;)V

    .line 4
    iget v1, v0, Lcom/google/android/gms/vision/Frame$Metadata;->e:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 5
    iget v1, v0, Lcom/google/android/gms/vision/Frame$Metadata;->a:I

    .line 6
    iget v2, v0, Lcom/google/android/gms/vision/Frame$Metadata;->b:I

    iput v2, v0, Lcom/google/android/gms/vision/Frame$Metadata;->a:I

    .line 7
    iput v1, v0, Lcom/google/android/gms/vision/Frame$Metadata;->b:I

    :cond_0
    const/4 v1, 0x0

    .line 8
    iput v1, v0, Lcom/google/android/gms/vision/Frame$Metadata;->e:I

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/vision/Detector;->a(Lcom/google/android/gms/vision/Frame;)Landroid/util/SparseArray;

    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/vision/Detector;->b()Z

    move-result v1

    .line 11
    new-instance v2, Lcom/google/android/gms/vision/Detector$Detections;

    invoke-direct {v2, p1, v0, v1}, Lcom/google/android/gms/vision/Detector$Detections;-><init>(Landroid/util/SparseArray;Lcom/google/android/gms/vision/Frame$Metadata;Z)V

    .line 12
    iget-object p1, p0, Lcom/google/android/gms/vision/Detector;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/vision/Detector;->b:Lcom/google/android/gms/vision/Detector$Processor;

    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0, v2}, Lcom/google/android/gms/vision/Detector$Processor;->a(Lcom/google/android/gms/vision/Detector$Detections;)V

    .line 15
    monitor-exit p1

    return-void

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Detector processor must first be set with setProcessor in order to receive detection results."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/Detector;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/vision/Detector;->b:Lcom/google/android/gms/vision/Detector$Processor;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/vision/Detector$Processor;->release()V

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/google/android/gms/vision/Detector;->b:Lcom/google/android/gms/vision/Detector$Processor;

    .line 5
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public e(Lcom/google/android/gms/vision/Detector$Processor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Processor<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/Detector;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/vision/Detector;->b:Lcom/google/android/gms/vision/Detector$Processor;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/vision/Detector$Processor;->release()V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/vision/Detector;->b:Lcom/google/android/gms/vision/Detector$Processor;

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
