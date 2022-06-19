.class public final Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;
.super Landroidx/media2/exoplayer/external/metadata/scte35/SpliceCommand;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:J

.field public final c:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand$a;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand$a;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceCommand;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;->a:J

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;->b:J

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    new-array p2, p2, [B

    iput-object p2, p0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;->c:[B

    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;->a:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;->c:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/scte35/PrivateCommand;->c:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
