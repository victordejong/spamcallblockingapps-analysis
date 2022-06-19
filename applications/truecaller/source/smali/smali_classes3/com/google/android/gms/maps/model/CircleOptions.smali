.class public final Lcom/google/android/gms/maps/model/CircleOptions;
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
            "Lcom/google/android/gms/maps/model/CircleOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public b:D
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public c:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public d:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public e:I
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

.field public i:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/maps/model/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/CircleOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->a:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->b:D

    const/high16 v1, 0x41200000    # 10.0f

    .line 4
    iput v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->c:F

    const/high16 v1, -0x1000000

    .line 5
    iput v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->d:I

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->e:I

    const/4 v2, 0x0

    .line 7
    iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->f:F

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->g:Z

    .line 9
    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->h:Z

    .line 10
    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/maps/model/LatLng;DFIIFZZLjava/util/List;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # D
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p5    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p6    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p7    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p8    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p9    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "DFIIFZZ",
            "Ljava/util/List<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->a:Lcom/google/android/gms/maps/model/LatLng;

    const-wide/16 v1, 0x0

    .line 13
    iput-wide v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->b:D

    const/high16 v1, 0x41200000    # 10.0f

    .line 14
    iput v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->c:F

    const/high16 v1, -0x1000000

    .line 15
    iput v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->d:I

    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->e:I

    const/4 v2, 0x0

    .line 17
    iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->f:F

    const/4 v2, 0x1

    .line 18
    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->g:Z

    .line 19
    iput-boolean v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->h:Z

    .line 20
    iput-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->i:Ljava/util/List;

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->a:Lcom/google/android/gms/maps/model/LatLng;

    .line 22
    iput-wide p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->b:D

    .line 23
    iput p4, p0, Lcom/google/android/gms/maps/model/CircleOptions;->c:F

    .line 24
    iput p5, p0, Lcom/google/android/gms/maps/model/CircleOptions;->d:I

    .line 25
    iput p6, p0, Lcom/google/android/gms/maps/model/CircleOptions;->e:I

    .line 26
    iput p7, p0, Lcom/google/android/gms/maps/model/CircleOptions;->f:F

    .line 27
    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/CircleOptions;->g:Z

    .line 28
    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/CircleOptions;->h:Z

    .line 29
    iput-object p10, p0, Lcom/google/android/gms/maps/model/CircleOptions;->i:Ljava/util/List;

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
    iget-object v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->a:Lcom/google/android/gms/maps/model/LatLng;

    const/4 v3, 0x0

    .line 3
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->p(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 4
    iget-wide v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->b:D

    const p2, 0x80003

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 7
    iget p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->c:F

    const v1, 0x40004

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 10
    iget p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->d:I

    const v1, 0x40005

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->e:I

    const v1, 0x40006

    .line 14
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->f:F

    const v1, 0x40007

    .line 17
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 19
    iget-boolean p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->g:Z

    const v1, 0x40008

    .line 20
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-boolean p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->h:Z

    const v1, 0x40009

    .line 23
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/16 p2, 0xa

    .line 25
    iget-object v1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->i:Ljava/util/List;

    .line 26
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->u(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 27
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->w(Landroid/os/Parcel;I)V

    return-void
.end method
