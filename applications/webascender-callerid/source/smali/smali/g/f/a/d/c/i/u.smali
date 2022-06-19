.class public final Lg/f/a/d/c/i/u;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lg/f/a/d/c/i/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:I

.field private g:Lg/f/a/d/c/i/s;

.field private h:Lcom/google/android/gms/location/m;

.field private i:Landroid/app/PendingIntent;

.field private j:Lcom/google/android/gms/location/l;

.field private k:Lg/f/a/d/c/i/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/f/a/d/c/i/t;

    invoke-direct {v0}, Lg/f/a/d/c/i/t;-><init>()V

    sput-object v0, Lg/f/a/d/c/i/u;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILg/f/a/d/c/i/s;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    .line 2
    iput p1, p0, Lg/f/a/d/c/i/u;->f:I

    .line 3
    iput-object p2, p0, Lg/f/a/d/c/i/u;->g:Lg/f/a/d/c/i/s;

    const/4 p1, 0x0

    if-nez p3, :cond_0

    move-object p2, p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/location/p;->w(Landroid/os/IBinder;)Lcom/google/android/gms/location/m;

    move-result-object p2

    :goto_0
    iput-object p2, p0, Lg/f/a/d/c/i/u;->h:Lcom/google/android/gms/location/m;

    .line 5
    iput-object p4, p0, Lg/f/a/d/c/i/u;->i:Landroid/app/PendingIntent;

    if-nez p5, :cond_1

    move-object p2, p1

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {p5}, Lcom/google/android/gms/location/k;->w(Landroid/os/IBinder;)Lcom/google/android/gms/location/l;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lg/f/a/d/c/i/u;->j:Lcom/google/android/gms/location/l;

    if-nez p6, :cond_2

    goto :goto_2

    :cond_2
    if-nez p6, :cond_3

    goto :goto_2

    :cond_3
    const-string p1, "com.google.android.gms.location.internal.IFusedLocationProviderCallback"

    .line 7
    invoke-interface {p6, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 8
    instance-of p2, p1, Lg/f/a/d/c/i/e;

    if-eqz p2, :cond_4

    .line 9
    check-cast p1, Lg/f/a/d/c/i/e;

    goto :goto_2

    .line 10
    :cond_4
    new-instance p1, Lg/f/a/d/c/i/f;

    invoke-direct {p1, p6}, Lg/f/a/d/c/i/f;-><init>(Landroid/os/IBinder;)V

    .line 11
    :goto_2
    iput-object p1, p0, Lg/f/a/d/c/i/u;->k:Lg/f/a/d/c/i/e;

    return-void
.end method

.method public static y1(Lcom/google/android/gms/location/l;Lg/f/a/d/c/i/e;)Lg/f/a/d/c/i/u;
    .locals 8

    .line 1
    new-instance v7, Lg/f/a/d/c/i/u;

    .line 2
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v6, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lg/f/a/d/c/i/u;-><init>(ILg/f/a/d/c/i/s;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v7
.end method

.method public static z1(Lcom/google/android/gms/location/m;Lg/f/a/d/c/i/e;)Lg/f/a/d/c/i/u;
    .locals 8

    .line 1
    new-instance v7, Lg/f/a/d/c/i/u;

    .line 2
    invoke-interface {p0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    move-object v6, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lg/f/a/d/c/i/u;-><init>(ILg/f/a/d/c/i/s;Landroid/os/IBinder;Landroid/app/PendingIntent;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object v7
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;)I

    move-result v0

    .line 2
    iget v1, p0, Lg/f/a/d/c/i/u;->f:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->m(Landroid/os/Parcel;II)V

    .line 3
    iget-object v1, p0, Lg/f/a/d/c/i/u;->g:Lg/f/a/d/c/i/s;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 4
    iget-object v1, p0, Lg/f/a/d/c/i/u;->h:Lcom/google/android/gms/location/m;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_0
    const/4 v4, 0x3

    .line 5
    invoke-static {p1, v4, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->l(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 v1, 0x4

    .line 6
    iget-object v4, p0, Lg/f/a/d/c/i/u;->i:Landroid/app/PendingIntent;

    invoke-static {p1, v1, v4, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x5

    .line 7
    iget-object v1, p0, Lg/f/a/d/c/i/u;->j:Lcom/google/android/gms/location/l;

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 8
    :goto_1
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->l(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    const/4 p2, 0x6

    .line 9
    iget-object v1, p0, Lg/f/a/d/c/i/u;->k:Lg/f/a/d/c/i/e;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 10
    :goto_2
    invoke-static {p1, p2, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->l(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 11
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->b(Landroid/os/Parcel;I)V

    return-void
.end method
