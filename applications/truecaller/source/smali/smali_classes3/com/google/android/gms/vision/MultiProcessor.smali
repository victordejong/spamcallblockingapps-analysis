.class public Lcom/google/android/gms/vision/MultiProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/vision/Detector$Processor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/vision/MultiProcessor$a;,
        Lcom/google/android/gms/vision/MultiProcessor$Builder;,
        Lcom/google/android/gms/vision/MultiProcessor$Factory;
    }
.end annotation

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
.field public a:Lcom/google/android/gms/vision/MultiProcessor$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/vision/MultiProcessor$Factory<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/vision/MultiProcessor$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/vision/MultiProcessor;->b:Landroid/util/SparseArray;

    const/4 v0, 0x3

    .line 3
    iput v0, p0, Lcom/google/android/gms/vision/MultiProcessor;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Le/m/a/f/r/g;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/vision/MultiProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/vision/Detector$Detections;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Detections<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/vision/Detector$Detections;->a:Landroid/util/SparseArray;

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 5
    iget-object v5, p0, Lcom/google/android/gms/vision/MultiProcessor;->b:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 6
    new-instance v5, Lcom/google/android/gms/vision/MultiProcessor$a;

    invoke-direct {v5, p0}, Lcom/google/android/gms/vision/MultiProcessor$a;-><init>(Lcom/google/android/gms/vision/MultiProcessor;)V

    .line 7
    iget-object v6, p0, Lcom/google/android/gms/vision/MultiProcessor;->a:Lcom/google/android/gms/vision/MultiProcessor$Factory;

    invoke-interface {v6, v4}, Lcom/google/android/gms/vision/MultiProcessor$Factory;->create(Ljava/lang/Object;)Lcom/google/android/gms/vision/Tracker;

    move-result-object v6

    .line 8
    iput-object v6, v5, Lcom/google/android/gms/vision/MultiProcessor$a;->a:Lcom/google/android/gms/vision/Tracker;

    .line 9
    invoke-virtual {v6, v3, v4}, Lcom/google/android/gms/vision/Tracker;->b(ILjava/lang/Object;)V

    .line 10
    iget-object v4, p0, Lcom/google/android/gms/vision/MultiProcessor;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p1, Lcom/google/android/gms/vision/Detector$Detections;->a:Landroid/util/SparseArray;

    .line 12
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move v3, v1

    .line 13
    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/vision/MultiProcessor;->b:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 14
    iget-object v4, p0, Lcom/google/android/gms/vision/MultiProcessor;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 15
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_3

    .line 16
    iget-object v5, p0, Lcom/google/android/gms/vision/MultiProcessor;->b:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/vision/MultiProcessor$a;

    .line 17
    iget v6, v5, Lcom/google/android/gms/vision/MultiProcessor$a;->b:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/google/android/gms/vision/MultiProcessor$a;->b:I

    .line 18
    iget v7, p0, Lcom/google/android/gms/vision/MultiProcessor;->c:I

    if-lt v6, v7, :cond_2

    .line 19
    iget-object v5, v5, Lcom/google/android/gms/vision/MultiProcessor$a;->a:Lcom/google/android/gms/vision/Tracker;

    .line 20
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 22
    :cond_2
    iget-object v4, v5, Lcom/google/android/gms/vision/MultiProcessor$a;->a:Lcom/google/android/gms/vision/Tracker;

    .line 23
    invoke-virtual {v4}, Lcom/google/android/gms/vision/Tracker;->a()V

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 24
    :cond_4
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 25
    iget-object v3, p0, Lcom/google/android/gms/vision/MultiProcessor;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_3

    .line 26
    :cond_5
    iget-object p1, p1, Lcom/google/android/gms/vision/Detector$Detections;->a:Landroid/util/SparseArray;

    move v0, v1

    .line 27
    :goto_4
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    .line 28
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 29
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 30
    iget-object v3, p0, Lcom/google/android/gms/vision/MultiProcessor;->b:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/vision/MultiProcessor$a;

    .line 31
    iput v1, v2, Lcom/google/android/gms/vision/MultiProcessor$a;->b:I

    .line 32
    iget-object v2, v2, Lcom/google/android/gms/vision/MultiProcessor$a;->a:Lcom/google/android/gms/vision/Tracker;

    .line 33
    invoke-virtual {v2}, Lcom/google/android/gms/vision/Tracker;->c()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/vision/MultiProcessor;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/vision/MultiProcessor;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/vision/MultiProcessor$a;

    .line 3
    iget-object v1, v1, Lcom/google/android/gms/vision/MultiProcessor$a;->a:Lcom/google/android/gms/vision/Tracker;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/vision/MultiProcessor;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method
