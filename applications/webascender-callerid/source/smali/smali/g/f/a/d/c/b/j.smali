.class public final Lg/f/a/d/c/b/j;
.super Lcom/google/android/gms/common/internal/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/h<",
        "Lg/f/a/d/c/b/f;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/api/internal/e;Lcom/google/android/gms/common/api/internal/k;)V
    .locals 7

    const/16 v3, 0x7e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/e;Lcom/google/android/gms/common/api/internal/e;Lcom/google/android/gms/common/api/internal/k;)V

    return-void
.end method


# virtual methods
.method public final B()[Lcom/google/android/gms/common/d;
    .locals 1

    .line 1
    sget-object v0, Lg/f/a/d/c/b/b;->d:[Lcom/google/android/gms/common/d;

    return-object v0
.end method

.method protected final I()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService"

    return-object v0
.end method

.method protected final J()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.auth.api.phone.service.SmsRetrieverApiService.START"

    return-object v0
.end method

.method public final q()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method protected final synthetic y(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.auth.api.phone.internal.ISmsRetrieverApiService"

    .line 1
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lg/f/a/d/c/b/f;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lg/f/a/d/c/b/f;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lg/f/a/d/c/b/e;

    invoke-direct {v0, p1}, Lg/f/a/d/c/b/e;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
