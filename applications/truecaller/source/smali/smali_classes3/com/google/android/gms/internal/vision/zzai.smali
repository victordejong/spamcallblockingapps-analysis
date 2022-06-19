.class public final Lcom/google/android/gms/internal/vision/zzai;
.super Lcom/google/android/gms/internal/vision/zzn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/vision/zzn<",
        "Lcom/google/android/gms/internal/vision/zzy;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzef:Lcom/google/android/gms/internal/vision/zzah;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/vision/zzah;)V
    .locals 2

    const-string v0, "TextNativeHandle"

    const-string v1, "ocr"

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/vision/zzn;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/vision/zzai;->zzef:Lcom/google/android/gms/internal/vision/zzah;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzn;->zzp()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/dynamite/DynamiteModule;Landroid/content/Context;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    const-string v0, "com.google.android.gms.vision.text.ChimeraNativeTextRecognizerCreator"

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const-string v1, "com.google.android.gms.vision.text.internal.client.INativeTextRecognizerCreator"

    .line 5
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 6
    instance-of v2, v1, Lcom/google/android/gms/internal/vision/zzaa;

    if-eqz v2, :cond_1

    .line 7
    check-cast v1, Lcom/google/android/gms/internal/vision/zzaa;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/vision/zzz;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/vision/zzz;-><init>(Landroid/os/IBinder;)V

    :goto_0
    if-nez v1, :cond_2

    return-object v0

    .line 9
    :cond_2
    new-instance p1, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {p1, p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/vision/zzai;->zzef:Lcom/google/android/gms/internal/vision/zzah;

    invoke-interface {v1, p1, p2}, Lcom/google/android/gms/internal/vision/zzaa;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/vision/zzah;)Lcom/google/android/gms/internal/vision/zzy;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Landroid/graphics/Bitmap;Lcom/google/android/gms/internal/vision/zzp;Lcom/google/android/gms/internal/vision/zzae;)[Lcom/google/android/gms/internal/vision/zzac;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzn;->isOperational()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-array p1, v1, [Lcom/google/android/gms/internal/vision/zzac;

    return-object p1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lcom/google/android/gms/dynamic/ObjectWrapper;

    invoke-direct {v0, p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzn;->zzp()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/vision/zzy;

    invoke-interface {p1, v0, p2, p3}, Lcom/google/android/gms/internal/vision/zzy;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/vision/zzp;Lcom/google/android/gms/internal/vision/zzae;)[Lcom/google/android/gms/internal/vision/zzac;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-array p1, v1, [Lcom/google/android/gms/internal/vision/zzac;

    return-object p1
.end method

.method public final zzn()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/vision/zzn;->zzp()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/vision/zzy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/vision/zzy;->zzq()V

    return-void
.end method
