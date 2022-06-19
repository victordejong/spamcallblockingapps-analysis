.class public final Lcom/truecaller/messaging/data/types/VCardEntity;
.super Lcom/truecaller/messaging/data/types/BinaryEntity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/data/types/VCardEntity$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/truecaller/messaging/data/types/VCardEntity$a;


# instance fields
.field public final v:Ljava/lang/String;

.field public final w:I

.field public final x:Landroid/net/Uri;

.field public final y:I

.field public final z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/messaging/data/types/VCardEntity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/messaging/data/types/VCardEntity$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/messaging/data/types/VCardEntity;->CREATOR:Lcom/truecaller/messaging/data/types/VCardEntity$a;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ILjava/lang/String;ZJLjava/lang/String;ILandroid/net/Uri;)V
    .locals 13

    move-object v11, p0

    move-object/from16 v12, p9

    const-string v0, "type"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactName"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v0, "Uri.parse(content)"

    invoke-static {v5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/16 v10, 0x40

    move-object v0, p0

    move-wide v1, p1

    move/from16 v4, p4

    move-wide/from16 v6, p7

    move/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Lcom/truecaller/messaging/data/types/BinaryEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;JZII)V

    const/4 v0, 0x6

    .line 2
    iput v0, v11, Lcom/truecaller/messaging/data/types/VCardEntity;->y:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, v11, Lcom/truecaller/messaging/data/types/VCardEntity;->z:Z

    .line 4
    iput-object v12, v11, Lcom/truecaller/messaging/data/types/VCardEntity;->v:Ljava/lang/String;

    move/from16 v0, p10

    .line 5
    iput v0, v11, Lcom/truecaller/messaging/data/types/VCardEntity;->w:I

    move-object/from16 v0, p11

    .line 6
    iput-object v0, v11, Lcom/truecaller/messaging/data/types/VCardEntity;->x:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/truecaller/messaging/data/types/BinaryEntity;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x6

    .line 8
    iput v0, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->y:I

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->z:Z

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->v:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->w:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->x:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public c(Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "contentValues"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/truecaller/messaging/data/types/BinaryEntity;->c(Landroid/content/ContentValues;)V

    .line 2
    iget v0, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->y:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "entity_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->x:Landroid/net/Uri;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "entity_info4"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->v:Ljava/lang/String;

    const-string v1, "entity_info5"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->w:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "entity_info6"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->y:I

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

    instance-of v0, p1, Lcom/truecaller/messaging/data/types/VCardEntity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/messaging/data/types/VCardEntity;

    iget-object v0, p1, Lcom/truecaller/messaging/data/types/VCardEntity;->v:Ljava/lang/String;

    iget-object v1, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/truecaller/messaging/data/types/VCardEntity;->w:I

    iget v1, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->w:I

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/VCardEntity;->x:Landroid/net/Uri;

    iget-object v0, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->x:Landroid/net/Uri;

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
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->v:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget v1, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->w:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->x:Landroid/net/Uri;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->z:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/truecaller/messaging/data/types/BinaryEntity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->w:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->x:Landroid/net/Uri;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final y()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/VCardEntity;->x:Landroid/net/Uri;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
