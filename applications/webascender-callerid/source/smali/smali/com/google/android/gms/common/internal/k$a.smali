.class public abstract Lcom/google/android/gms/common/internal/k$a;
.super Lg/f/a/d/c/g/a;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/k$a$a;
    }
.end annotation


# direct methods
.method public static w(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/k;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.common.internal.IAccountAccessor"

    .line 1
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lcom/google/android/gms/common/internal/k;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Lcom/google/android/gms/common/internal/k;

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Lcom/google/android/gms/common/internal/k$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/k$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
