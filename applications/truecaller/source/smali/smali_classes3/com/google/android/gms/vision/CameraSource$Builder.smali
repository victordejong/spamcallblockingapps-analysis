.class public Lcom/google/android/gms/vision/CameraSource$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/vision/CameraSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/vision/Detector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/vision/Detector<",
            "*>;"
        }
    .end annotation
.end field

.field public b:Lcom/google/android/gms/vision/CameraSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/vision/Detector;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/vision/Detector<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/vision/CameraSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/vision/CameraSource;-><init>(Le/m/a/f/r/d;)V

    iput-object v0, p0, Lcom/google/android/gms/vision/CameraSource$Builder;->b:Lcom/google/android/gms/vision/CameraSource;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/vision/CameraSource$Builder;->a:Lcom/google/android/gms/vision/Detector;

    .line 4
    iput-object p1, v0, Lcom/google/android/gms/vision/CameraSource;->a:Landroid/content/Context;

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No detector supplied."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No context supplied."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(I)Lcom/google/android/gms/vision/CameraSource$Builder;
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1b

    const-string v2, "Invalid camera: "

    invoke-static {v1, v2, p1}, Le/d/c/a/a;->L1(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource$Builder;->b:Lcom/google/android/gms/vision/CameraSource;

    .line 3
    iput p1, v0, Lcom/google/android/gms/vision/CameraSource;->d:I

    return-object p0
.end method

.method public b(F)Lcom/google/android/gms/vision/CameraSource$Builder;
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource$Builder;->b:Lcom/google/android/gms/vision/CameraSource;

    .line 2
    iput p1, v0, Lcom/google/android/gms/vision/CameraSource;->g:F

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid fps: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(II)Lcom/google/android/gms/vision/CameraSource$Builder;
    .locals 4

    if-lez p1, :cond_0

    const v0, 0xf4240

    if-gt p1, v0, :cond_0

    if-lez p2, :cond_0

    if-gt p2, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/vision/CameraSource$Builder;->b:Lcom/google/android/gms/vision/CameraSource;

    .line 2
    iput p1, v0, Lcom/google/android/gms/vision/CameraSource;->h:I

    .line 3
    iput p2, v0, Lcom/google/android/gms/vision/CameraSource;->i:I

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x2d

    const-string v2, "Invalid preview size: "

    const-string v3, "x"

    invoke-static {v1, v2, p1, v3, p2}, Le/d/c/a/a;->N1(ILjava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
