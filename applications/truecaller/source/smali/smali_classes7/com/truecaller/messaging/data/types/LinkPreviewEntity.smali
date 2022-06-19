.class public Lcom/truecaller/messaging/data/types/LinkPreviewEntity;
.super Lcom/truecaller/messaging/data/types/BinaryEntity;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/messaging/data/types/LinkPreviewEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:I

.field public final C:Z

.field public final v:I

.field public final w:I

.field public final x:Landroid/net/Uri;

.field public final y:Ljava/lang/String;

.field public final z:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity$a;

    invoke-direct {v0}, Lcom/truecaller/messaging/data/types/LinkPreviewEntity$a;-><init>()V

    sput-object v0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IIIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object v11, p0

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    const-string v0, "type"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v0, "Uri.parse(\"\")"

    invoke-static {v5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x40

    move-object v0, p0

    move-wide/from16 v1, p1

    move/from16 v4, p4

    move-wide/from16 v6, p7

    invoke-direct/range {v0 .. v10}, Lcom/truecaller/messaging/data/types/BinaryEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;JZII)V

    const/4 v0, 0x7

    .line 3
    iput v0, v11, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->B:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, v11, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->C:Z

    move/from16 v0, p5

    .line 5
    iput v0, v11, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->v:I

    move/from16 v0, p6

    .line 6
    iput v0, v11, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->w:I

    move-object/from16 v0, p9

    .line 7
    iput-object v0, v11, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->x:Landroid/net/Uri;

    .line 8
    iput-object v12, v11, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->y:Ljava/lang/String;

    .line 9
    iput-object v13, v11, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->z:Ljava/lang/String;

    .line 10
    iput-object v14, v11, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->A:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;IIIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16

    and-int/lit8 v0, p13, 0x1

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    move-wide v4, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p1

    :goto_0
    and-int/lit8 v0, p13, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v7, v0

    goto :goto_1

    :cond_1
    move/from16 v7, p4

    :goto_1
    and-int/lit8 v0, p13, 0x8

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    move v8, v3

    goto :goto_2

    :cond_2
    move/from16 v8, p5

    :goto_2
    and-int/lit8 v0, p13, 0x10

    if-eqz v0, :cond_3

    move v9, v3

    goto :goto_3

    :cond_3
    move/from16 v9, p6

    :goto_3
    and-int/lit8 v0, p13, 0x20

    if-eqz v0, :cond_4

    move-wide v10, v1

    goto :goto_4

    :cond_4
    move-wide/from16 v10, p7

    :goto_4
    and-int/lit8 v0, p13, 0x40

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    move-object v12, v0

    goto :goto_5

    :cond_5
    move-object/from16 v12, p9

    :goto_5
    move-object/from16 v3, p0

    move-object/from16 v6, p3

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    .line 1
    invoke-direct/range {v3 .. v15}, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;-><init>(JLjava/lang/String;IIIJLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/truecaller/messaging/data/types/BinaryEntity;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x7

    .line 12
    iput v0, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->B:I

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->C:Z

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->v:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->w:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->x:Landroid/net/Uri;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->y:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->z:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    move-object v1, p1

    :cond_2
    iput-object v1, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->A:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c(Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "contentValues"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->B:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "entity_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "entity_info1"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget v0, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->v:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "entity_info2"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    iget v0, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "entity_info3"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->x:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    const-string v1, "entity_info5"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->A:Ljava/lang/String;

    const-string v1, "entity_info7"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->y:Ljava/lang/String;

    const-string v1, "entity_info4"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->z:Ljava/lang/String;

    const-string v1, "entity_info6"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->B:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/truecaller/messaging/data/types/BinaryEntity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;

    iget-object v0, p1, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->y:Ljava/lang/String;

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->y:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->z:Ljava/lang/String;

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->z:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->x:Landroid/net/Uri;

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->x:Landroid/net/Uri;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->A:Ljava/lang/String;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/truecaller/messaging/data/types/BinaryEntity;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->y:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->z:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->x:Landroid/net/Uri;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->A:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->C:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/truecaller/messaging/data/types/BinaryEntity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->v:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->w:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->x:Landroid/net/Uri;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, ""

    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->y:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->z:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/LinkPreviewEntity;->A:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
