.class public final Lg/f/a/d/c/i/b0;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/f/a/d/c/i/b0;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:I

.field private g:Lg/f/a/d/c/i/z;

.field private h:Lcom/google/android/gms/location/h;

.field private i:Lg/f/a/d/c/i/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/f/a/d/c/i/d0;

    invoke-direct {v0}, Lg/f/a/d/c/i/d0;-><init>()V

    sput-object v0, Lg/f/a/d/c/i/b0;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILg/f/a/d/c/i/z;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 2
    iput p1, p0, Lg/f/a/d/c/i/b0;->f:I

    .line 3
    iput-object p2, p0, Lg/f/a/d/c/i/b0;->g:Lg/f/a/d/c/i/z;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/location/j;->w(Landroid/os/IBinder;)Lcom/google/android/gms/location/h;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lg/f/a/d/c/i/b0;->h:Lcom/google/android/gms/location/h;

    if-nez p4, :cond_1

    goto :goto_1

    :cond_1
    if-nez p4, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    .line 5
    invoke-interface {p4, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 6
    instance-of p2, p1, Lg/f/a/d/c/i/e;

    if-eqz p2, :cond_3

    .line 7
    check-cast p1, Lg/f/a/d/c/i/e;

    goto :goto_1

    .line 8
    :cond_3
    new-instance p1, Lg/f/a/d/c/i/f;

    invoke-direct {p1, p4}, Lg/f/a/d/c/i/f;-><init>(Landroid/os/IBinder;)V

    .line 9
    :goto_1
    iput-object p1, p0, Lg/f/a/d/c/i/b0;->i:Lg/f/a/d/c/i/e;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    iget v1, p0, Lg/f/a/d/c/i/b0;->f:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->m(Landroid/os/Parcel;II)V

    .line 3
    iget-object v1, p0, Lg/f/a/d/c/i/b0;->g:Lg/f/a/d/c/i/z;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 4
    iget-object p2, p0, Lg/f/a/d/c/i/b0;->h:Lcom/google/android/gms/location/h;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move-object p2, v1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    :goto_0
    const/4 v2, 0x3

    .line 5
    invoke-static {p1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->l(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 p2, 0x4

    .line 6
    iget-object v2, p0, Lg/f/a/d/c/i/b0;->i:Lg/f/a/d/c/i/e;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 7
    :goto_1
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->l(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 8
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
