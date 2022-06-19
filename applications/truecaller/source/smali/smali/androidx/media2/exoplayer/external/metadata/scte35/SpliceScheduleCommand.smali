.class public final Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand;
.super Landroidx/media2/exoplayer/external/metadata/scte35/SpliceCommand;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;,
        Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$c;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$a;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$a;-><init>()V

    sput-object v0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$a;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceCommand;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 4
    new-instance v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$c;

    invoke-direct {v2, p1}, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$c;-><init>(Landroid/os/Parcel;)V

    .line 5
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    .line 1
    iget-object p2, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 3
    iget-object v2, p0, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$c;

    .line 4
    iget-wide v3, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$c;->a:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$c;->b:Z

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 6
    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$c;->c:Z

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$c;->d:Z

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 8
    iget-object v3, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$c;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 9
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_0

    .line 10
    iget-object v5, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$c;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;

    .line 11
    iget v6, v5, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->a:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    iget-wide v5, v5, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$b;->b:J

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 13
    :cond_0
    iget-wide v3, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$c;->e:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 14
    iget-boolean v3, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$c;->g:Z

    int-to-byte v3, v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    .line 15
    iget-wide v3, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$c;->h:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 16
    iget v3, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$c;->i:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    iget v3, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$c;->j:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    iget v2, v2, Landroidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$c;->k:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
