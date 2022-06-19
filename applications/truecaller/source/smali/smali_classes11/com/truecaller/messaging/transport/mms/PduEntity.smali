.class public Lcom/truecaller/messaging/transport/mms/PduEntity;
.super Lcom/truecaller/messaging/data/types/BinaryEntity;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/messaging/transport/mms/PduEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Ljava/lang/String;

.field public final v:I

.field public final w:Ljava/lang/String;

.field public final x:Ljava/lang/String;

.field public final y:Ljava/lang/String;

.field public final z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/messaging/transport/mms/PduEntity$a;

    invoke-direct {v0}, Lcom/truecaller/messaging/transport/mms/PduEntity$a;-><init>()V

    sput-object v0, Lcom/truecaller/messaging/transport/mms/PduEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/truecaller/messaging/transport/mms/PduEntity$a;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/truecaller/messaging/data/types/BinaryEntity;-><init>(Landroid/os/Parcel;)V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/PduEntity;->v:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/PduEntity;->w:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/PduEntity;->x:Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/PduEntity;->y:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/PduEntity;->z:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/messaging/transport/mms/PduEntity;->A:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Le/d/b/a/b/o;Landroid/net/Uri;I)V
    .locals 12

    .line 15
    invoke-virtual {p1}, Le/d/b/a/b/o;->d()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    invoke-static {v0}, Ln3/g0/y;->Z1([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "application/octet-stream"

    :goto_0
    const-string v1, "image/jpg"

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "image/jpeg"

    :cond_1
    move-object v4, v0

    int-to-long v7, p3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x44

    const-wide/16 v2, -0x1

    move-object v1, p0

    move-object v6, p2

    .line 18
    invoke-direct/range {v1 .. v11}, Lcom/truecaller/messaging/data/types/BinaryEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;JZII)V

    .line 19
    invoke-virtual {p1}, Le/d/b/a/b/o;->a()I

    move-result p2

    iput p2, p0, Lcom/truecaller/messaging/transport/mms/PduEntity;->v:I

    .line 20
    invoke-virtual {p1}, Le/d/b/a/b/o;->e()[B

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 21
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_1

    :cond_2
    move-object v0, p3

    :goto_1
    iput-object v0, p0, Lcom/truecaller/messaging/transport/mms/PduEntity;->w:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Le/d/b/a/b/o;->f()[B

    move-result-object p2

    if-eqz p2, :cond_3

    .line 23
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_2

    :cond_3
    move-object v0, p3

    :goto_2
    iput-object v0, p0, Lcom/truecaller/messaging/transport/mms/PduEntity;->x:Ljava/lang/String;

    .line 24
    iget-object p2, p1, Le/d/b/a/b/o;->a:Landroid/util/SparseArray;

    const/16 v0, 0xc5

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    if-eqz p2, :cond_4

    .line 25
    invoke-static {p2}, Ln3/g0/y;->Z1([B)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_4
    move-object p2, p3

    :goto_3
    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/PduEntity;->y:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Le/d/b/a/b/o;->b()[B

    move-result-object p2

    if-eqz p2, :cond_5

    .line 27
    invoke-static {p2}, Ln3/g0/y;->Z1([B)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_5
    move-object p2, p3

    :goto_4
    iput-object p2, p0, Lcom/truecaller/messaging/transport/mms/PduEntity;->z:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Le/d/b/a/b/o;->c()[B

    move-result-object p1

    if-eqz p1, :cond_6

    .line 29
    invoke-static {p1}, Ln3/g0/y;->Z1([B)Ljava/lang/String;

    move-result-object p3

    :cond_6
    iput-object p3, p0, Lcom/truecaller/messaging/transport/mms/PduEntity;->A:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v11, p0

    move v0, p3

    int-to-long v6, v0

    const-wide/16 v1, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x45

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/truecaller/messaging/data/types/BinaryEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;JZII)V

    move/from16 v0, p4

    .line 2
    iput v0, v11, Lcom/truecaller/messaging/transport/mms/PduEntity;->v:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, v11, Lcom/truecaller/messaging/transport/mms/PduEntity;->w:Ljava/lang/String;

    .line 4
    iput-object v0, v11, Lcom/truecaller/messaging/transport/mms/PduEntity;->x:Ljava/lang/String;

    .line 5
    iput-object v0, v11, Lcom/truecaller/messaging/transport/mms/PduEntity;->y:Ljava/lang/String;

    move-object/from16 v0, p8

    .line 6
    iput-object v0, v11, Lcom/truecaller/messaging/transport/mms/PduEntity;->z:Ljava/lang/String;

    move-object/from16 v0, p9

    .line 7
    iput-object v0, v11, Lcom/truecaller/messaging/transport/mms/PduEntity;->A:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public w()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/truecaller/messaging/data/types/BinaryEntity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Lcom/truecaller/messaging/transport/mms/PduEntity;->v:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object p2, p0, Lcom/truecaller/messaging/transport/mms/PduEntity;->w:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/truecaller/messaging/transport/mms/PduEntity;->x:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/truecaller/messaging/transport/mms/PduEntity;->y:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/truecaller/messaging/transport/mms/PduEntity;->z:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/truecaller/messaging/transport/mms/PduEntity;->A:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
