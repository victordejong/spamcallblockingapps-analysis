.class public Lcom/truecaller/scanner/NumberDetectorProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/vision/Detector$Processor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/scanner/NumberDetectorProcessor$a;,
        Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/vision/Detector$Processor<",
        "Lcom/google/android/gms/vision/text/TextBlock;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/truecaller/scanner/NumberDetectorProcessor$a;

.field public final b:Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

.field public final c:Landroid/os/Handler;

.field public d:Z

.field public e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/truecaller/scanner/NumberDetectorProcessor$a;Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/truecaller/scanner/NumberDetectorProcessor;->c:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/truecaller/scanner/NumberDetectorProcessor;->d:Z

    .line 4
    new-instance v0, Le/a/u4/b;

    invoke-direct {v0, p0}, Le/a/u4/b;-><init>(Lcom/truecaller/scanner/NumberDetectorProcessor;)V

    iput-object v0, p0, Lcom/truecaller/scanner/NumberDetectorProcessor;->e:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Lcom/truecaller/scanner/NumberDetectorProcessor;->a:Lcom/truecaller/scanner/NumberDetectorProcessor$a;

    .line 6
    iput-object p2, p0, Lcom/truecaller/scanner/NumberDetectorProcessor;->b:Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/vision/Detector$Detections;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/vision/Detector$Detections<",
            "Lcom/google/android/gms/vision/text/TextBlock;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/scanner/NumberDetectorProcessor;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/vision/Detector$Detections;->a:Landroid/util/SparseArray;

    if-eqz p1, :cond_a

    .line 4
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_9

    .line 5
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/vision/text/TextBlock;

    .line 6
    new-instance v5, Le/a/u4/r;

    invoke-direct {v5, v4}, Le/a/u4/r;-><init>(Lcom/google/android/gms/vision/text/TextBlock;)V

    .line 7
    iget-object v4, p0, Lcom/truecaller/scanner/NumberDetectorProcessor;->b:Lcom/truecaller/scanner/NumberDetectorProcessor$ScanType;

    .line 8
    iget-object v6, v5, Le/a/u4/r;->a:Ljava/util/List;

    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 9
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iget-object v7, v5, Le/a/u4/r;->a:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/vision/text/Text;

    if-nez v8, :cond_2

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    if-eqz v9, :cond_5

    if-eq v9, v3, :cond_4

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    invoke-interface {v8}, Lcom/google/android/gms/vision/text/Text;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Le/a/u4/r;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-interface {v8}, Lcom/google/android/gms/vision/text/Text;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Le/a/u4/r;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 14
    :cond_4
    invoke-interface {v8}, Lcom/google/android/gms/vision/text/Text;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Le/a/u4/r;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 15
    :cond_5
    invoke-interface {v8}, Lcom/google/android/gms/vision/text/Text;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Le/a/u4/r;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_6
    :goto_2
    const/4 v6, 0x0

    :cond_7
    if-eqz v6, :cond_8

    .line 16
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_a

    .line 18
    iput-boolean v3, p0, Lcom/truecaller/scanner/NumberDetectorProcessor;->d:Z

    .line 19
    iget-object p1, p0, Lcom/truecaller/scanner/NumberDetectorProcessor;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/truecaller/scanner/NumberDetectorProcessor;->e:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 20
    iget-object p1, p0, Lcom/truecaller/scanner/NumberDetectorProcessor;->a:Lcom/truecaller/scanner/NumberDetectorProcessor$a;

    check-cast p1, Lcom/truecaller/scanner/ScannerManagerImpl;

    .line 21
    iget-object p1, p1, Lcom/truecaller/scanner/ScannerManagerImpl;->c:Le/a/u4/o$a;

    if-eqz p1, :cond_a

    .line 22
    check-cast p1, Lcom/truecaller/scanner/NumberScannerActivity;

    .line 23
    iget-object p1, p1, Lcom/truecaller/scanner/NumberScannerActivity;->e:Le/a/u4/e;

    invoke-virtual {p1, v0}, Le/a/u4/e;->Hj(Ljava/util/List;)V

    :cond_a
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/scanner/NumberDetectorProcessor;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/truecaller/scanner/NumberDetectorProcessor;->e:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
