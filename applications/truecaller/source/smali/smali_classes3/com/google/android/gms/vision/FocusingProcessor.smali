.class public abstract Lcom/google/android/gms/vision/FocusingProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/vision/Detector$Processor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/vision/Detector$Processor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:I


# virtual methods
.method public a(Lcom/google/android/gms/vision/Detector$Detections;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Detections<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/vision/Detector$Detections;->a:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    throw v2

    .line 4
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->a:Z

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/vision/FocusingProcessor;->b(Lcom/google/android/gms/vision/Detector$Detections;)I

    move-result p1

    .line 6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/google/android/gms/vision/FocusingProcessor;->a:Z

    .line 8
    iput p1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->b:I

    .line 9
    throw v2

    .line 10
    :cond_2
    iget p1, p0, Lcom/google/android/gms/vision/FocusingProcessor;->b:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    throw v2
.end method

.method public abstract b(Lcom/google/android/gms/vision/Detector$Detections;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Detections<",
            "TT;>;)I"
        }
    .end annotation
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    throw v0
.end method
