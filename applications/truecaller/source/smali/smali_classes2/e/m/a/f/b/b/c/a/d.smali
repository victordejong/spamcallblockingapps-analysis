.class public final Le/m/a/f/b/b/c/a/d;
.super Le/m/a/f/b/b/c/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/a/f/b/b/c/a/e<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/m/a/f/b/b/c/a/e;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFailedResult(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    return-object p1
.end method

.method public final doExecute(Lcom/google/android/gms/common/api/Api$AnyClient;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/auth/api/signin/internal/zbe;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/BaseGmsClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/zbs;

    new-instance v1, Le/m/a/f/b/b/c/a/c;

    invoke-direct {v1, p0}, Le/m/a/f/b/b/c/a/c;-><init>(Le/m/a/f/b/b/c/a/d;)V

    .line 3
    iget-object p1, p1, Lcom/google/android/gms/auth/api/signin/internal/zbe;->a:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth-api/zba;->zba()Landroid/os/Parcel;

    move-result-object v2

    .line 5
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/auth-api/zbc;->zbc(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 6
    invoke-static {v2, p1}, Lcom/google/android/gms/internal/auth-api/zbc;->zbb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/16 p1, 0x67

    .line 7
    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/auth-api/zba;->zbb(ILandroid/os/Parcel;)V

    return-void
.end method
