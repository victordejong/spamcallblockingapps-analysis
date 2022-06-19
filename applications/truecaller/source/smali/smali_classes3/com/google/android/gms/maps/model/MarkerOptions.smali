.class public final Lcom/google/android/gms/maps/model/MarkerOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/maps/model/MarkerOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public c:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public d:Lcom/google/android/gms/maps/model/BitmapDescriptor;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public e:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public f:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public g:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public h:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public i:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public j:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public k:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public l:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public m:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public n:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/zzh;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzh;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/MarkerOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->e:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->f:F

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->h:Z

    const/4 v2, 0x0

    .line 5
    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->i:Z

    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->j:F

    .line 7
    iput v0, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->k:F

    .line 8
    iput v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->l:F

    .line 9
    iput v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->m:F

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;FFZZZFFFFF)V
    .locals 4
    .param p1    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p4    # Landroid/os/IBinder;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p5    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p6    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p7    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p8    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .param p9    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .param p10    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xb
        .end annotation
    .end param
    .param p11    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xc
        .end annotation
    .end param
    .param p12    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xd
        .end annotation
    .end param
    .param p13    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xe
        .end annotation
    .end param
    .param p14    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xf
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    move-object v0, p0

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 11
    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->e:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    iput v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->f:F

    const/4 v3, 0x1

    .line 13
    iput-boolean v3, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->h:Z

    const/4 v3, 0x0

    .line 14
    iput-boolean v3, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->i:Z

    const/4 v3, 0x0

    .line 15
    iput v3, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->j:F

    .line 16
    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->k:F

    .line 17
    iput v3, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->l:F

    .line 18
    iput v2, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->m:F

    move-object v1, p1

    .line 19
    iput-object v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->a:Lcom/google/android/gms/maps/model/LatLng;

    move-object v1, p2

    .line 20
    iput-object v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->b:Ljava/lang/String;

    move-object v1, p3

    .line 21
    iput-object v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->c:Ljava/lang/String;

    if-nez p4, :cond_0

    const/4 v1, 0x0

    .line 22
    iput-object v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->d:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Lcom/google/android/gms/maps/model/BitmapDescriptor;

    .line 24
    invoke-static {p4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->m1(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/maps/model/BitmapDescriptor;-><init>(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    iput-object v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->d:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    :goto_0
    move v1, p5

    .line 25
    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->e:F

    move v1, p6

    .line 26
    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->f:F

    move v1, p7

    .line 27
    iput-boolean v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->g:Z

    move v1, p8

    .line 28
    iput-boolean v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->h:Z

    move v1, p9

    .line 29
    iput-boolean v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->i:Z

    move v1, p10

    .line 30
    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->j:F

    move v1, p11

    .line 31
    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->k:F

    move/from16 v1, p12

    .line 32
    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->l:F

    move/from16 v1, p13

    .line 33
    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->m:F

    move/from16 v1, p14

    .line 34
    iput v1, v0, Lcom/google/android/gms/maps/model/MarkerOptions;->n:F

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->v(Landroid/os/Parcel;I)I

    move-result v0

    const/4 v1, 0x2

    .line 2
    iget-object v2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->a:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    const/4 p2, 0x3

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x4

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->c:Ljava/lang/String;

    .line 7
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->q(Landroid/os/Parcel;ILjava/lang/String;Z)V

    const/4 p2, 0x5

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->d:Lcom/google/android/gms/maps/model/BitmapDescriptor;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, v1, Lcom/google/android/gms/maps/model/BitmapDescriptor;->a:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 10
    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 11
    :goto_0
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->i(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 12
    iget p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->e:F

    const v1, 0x40006

    .line 13
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 15
    iget p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->f:F

    const v1, 0x40007

    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 18
    iget-boolean p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->g:Z

    const v1, 0x40008

    .line 19
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    iget-boolean p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->h:Z

    const v1, 0x40009

    .line 22
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget-boolean p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->i:Z

    const v1, 0x4000a

    .line 25
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 26
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    iget p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->j:F

    const v1, 0x4000b

    .line 28
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 30
    iget p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->k:F

    const v1, 0x4000c

    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 33
    iget p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->l:F

    const v1, 0x4000d

    .line 34
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 36
    iget p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->m:F

    const v1, 0x4000e

    .line 37
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 39
    iget p2, p0, Lcom/google/android/gms/maps/model/MarkerOptions;->n:F

    const v1, 0x4000f

    .line 40
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 42
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->w(Landroid/os/Parcel;I)V

    return-void
.end method
