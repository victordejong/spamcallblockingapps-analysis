.class public final Lcom/truecaller/messaging/data/types/GifEntity;
.super Lcom/truecaller/messaging/data/types/ImageEntity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/data/types/GifEntity$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/truecaller/messaging/data/types/GifEntity$a;


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:I

.field public final C:Z

.field public final D:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/messaging/data/types/GifEntity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/messaging/data/types/GifEntity$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/messaging/data/types/GifEntity;->CREATOR:Lcom/truecaller/messaging/data/types/GifEntity$a;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ILjava/lang/String;IIZJLandroid/net/Uri;Ljava/lang/String;)V
    .locals 14

    move-object v12, p0

    move-object/from16 v13, p12

    const-string v0, "type"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    move-object/from16 v1, p5

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "thumbnailUri"

    move-object/from16 v11, p11

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {v13, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v0, "Uri.parse(content)"

    invoke-static {v5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    move-wide v1, p1

    move/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p9

    move/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lcom/truecaller/messaging/data/types/ImageEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;IIJZLandroid/net/Uri;)V

    const/4 v0, 0x3

    .line 3
    iput v0, v12, Lcom/truecaller/messaging/data/types/GifEntity;->B:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, v12, Lcom/truecaller/messaging/data/types/GifEntity;->C:Z

    .line 5
    iget-object v1, v12, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const-string v2, "contentType"

    .line 6
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "tenor/gif"

    .line 7
    invoke-static {v2, v1, v0}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v0, v1

    .line 8
    iput-boolean v0, v12, Lcom/truecaller/messaging/data/types/GifEntity;->D:Z

    .line 9
    iput-object v13, v12, Lcom/truecaller/messaging/data/types/GifEntity;->A:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JLjava/lang/String;ILjava/lang/String;IIZJLandroid/net/Uri;Ljava/lang/String;I)V
    .locals 15

    and-int/lit8 v0, p13, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    move-wide v3, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v3, p1

    :goto_0
    and-int/lit8 v0, p13, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move/from16 v6, p4

    :goto_1
    and-int/lit8 v0, p13, 0x40

    if-eqz v0, :cond_2

    move v10, v1

    goto :goto_2

    :cond_2
    move/from16 v10, p8

    :goto_2
    move-object v2, p0

    move-object/from16 v5, p3

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-wide/from16 v11, p9

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    .line 1
    invoke-direct/range {v2 .. v14}, Lcom/truecaller/messaging/data/types/GifEntity;-><init>(JLjava/lang/String;ILjava/lang/String;IIZJLandroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const-string v0, "parcel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1}, Lcom/truecaller/messaging/data/types/ImageEntity;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x3

    .line 11
    iput v0, p0, Lcom/truecaller/messaging/data/types/GifEntity;->B:I

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/truecaller/messaging/data/types/GifEntity;->C:Z

    .line 13
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const-string v2, "contentType"

    .line 14
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "tenor/gif"

    .line 15
    invoke-static {v2, v1, v0}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    xor-int/2addr v0, v1

    .line 16
    iput-boolean v0, p0, Lcom/truecaller/messaging/data/types/GifEntity;->D:Z

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/messaging/data/types/GifEntity;->A:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c(Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "contentValues"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/truecaller/messaging/data/types/ImageEntity;->c(Landroid/content/ContentValues;)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget v0, p0, Lcom/truecaller/messaging/data/types/GifEntity;->B:I

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "entity_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/GifEntity;->A:Ljava/lang/String;

    const-string v1, "entity_info7"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/data/types/GifEntity;->B:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/truecaller/messaging/data/types/ImageEntity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/truecaller/messaging/data/types/GifEntity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/messaging/data/types/GifEntity;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/GifEntity;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/truecaller/messaging/data/types/GifEntity;->A:Ljava/lang/String;

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

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/GifEntity;->D:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/GifEntity;->C:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/truecaller/messaging/data/types/ImageEntity;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/GifEntity;->A:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/truecaller/messaging/data/types/ImageEntity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/GifEntity;->A:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/GifEntity;->A:Ljava/lang/String;

    return-object v0
.end method
