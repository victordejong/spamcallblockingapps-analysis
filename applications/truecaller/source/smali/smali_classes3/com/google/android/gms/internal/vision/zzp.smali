.class public final Lcom/google/android/gms/internal/vision/zzp;
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
            "Lcom/google/android/gms/internal/vision/zzp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public height:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public id:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public rotation:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public width:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field

.field public zzar:J
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/vision/zzp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIJI)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p3    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p4    # J
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p6    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 3
    iput p1, p0, Lcom/google/android/gms/internal/vision/zzp;->width:I

    .line 4
    iput p2, p0, Lcom/google/android/gms/internal/vision/zzp;->height:I

    .line 5
    iput p3, p0, Lcom/google/android/gms/internal/vision/zzp;->id:I

    .line 6
    iput-wide p4, p0, Lcom/google/android/gms/internal/vision/zzp;->zzar:J

    .line 7
    iput p6, p0, Lcom/google/android/gms/internal/vision/zzp;->rotation:I

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/vision/Frame;)Lcom/google/android/gms/internal/vision/zzp;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/vision/zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/vision/zzp;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/vision/Frame;->a:Lcom/google/android/gms/vision/Frame$Metadata;

    .line 3
    iget v1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->a:I

    .line 4
    iput v1, v0, Lcom/google/android/gms/internal/vision/zzp;->width:I

    .line 5
    iget v1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->b:I

    .line 6
    iput v1, v0, Lcom/google/android/gms/internal/vision/zzp;->height:I

    .line 7
    iget v1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->e:I

    .line 8
    iput v1, v0, Lcom/google/android/gms/internal/vision/zzp;->rotation:I

    .line 9
    iget v1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->c:I

    .line 10
    iput v1, v0, Lcom/google/android/gms/internal/vision/zzp;->id:I

    .line 11
    iget-wide v1, p0, Lcom/google/android/gms/vision/Frame$Metadata;->d:J

    .line 12
    iput-wide v1, v0, Lcom/google/android/gms/internal/vision/zzp;->zzar:J

    return-object v0
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/16 p2, 0x4f45

    .line 1
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->v(Landroid/os/Parcel;I)I

    move-result p2

    .line 2
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzp;->width:I

    const v1, 0x40002

    .line 3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzp;->height:I

    const v1, 0x40003

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzp;->id:I

    const v1, 0x40004

    .line 9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-wide v0, p0, Lcom/google/android/gms/internal/vision/zzp;->zzar:J

    const v2, 0x80005

    .line 12
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    iget v0, p0, Lcom/google/android/gms/internal/vision/zzp;->rotation:I

    const v1, 0x40006

    .line 15
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->w(Landroid/os/Parcel;I)V

    return-void
.end method
