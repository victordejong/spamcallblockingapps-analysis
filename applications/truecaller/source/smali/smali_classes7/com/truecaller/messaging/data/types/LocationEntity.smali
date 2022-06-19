.class public final Lcom/truecaller/messaging/data/types/LocationEntity;
.super Lcom/truecaller/messaging/data/types/BinaryEntity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/data/types/LocationEntity$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/truecaller/messaging/data/types/LocationEntity$a;


# instance fields
.field public final v:Ljava/lang/String;

.field public final w:D

.field public final x:D

.field public final y:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/messaging/data/types/LocationEntity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/messaging/data/types/LocationEntity$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/messaging/data/types/LocationEntity;->CREATOR:Lcom/truecaller/messaging/data/types/LocationEntity$a;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ILandroid/net/Uri;JLjava/lang/String;DD)V
    .locals 12

    move-object v11, p0

    const-string v0, "type"

    move-object v3, p3

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "previewUri"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x40

    move-object v0, p0

    move-wide v1, p1

    move/from16 v4, p4

    move-wide/from16 v6, p6

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/truecaller/messaging/data/types/BinaryEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;JZII)V

    const/16 v0, 0x9

    .line 2
    iput v0, v11, Lcom/truecaller/messaging/data/types/LocationEntity;->y:I

    move-object/from16 v0, p8

    .line 3
    iput-object v0, v11, Lcom/truecaller/messaging/data/types/LocationEntity;->v:Ljava/lang/String;

    move-wide/from16 v0, p9

    .line 4
    iput-wide v0, v11, Lcom/truecaller/messaging/data/types/LocationEntity;->w:D

    move-wide/from16 v0, p11

    .line 5
    iput-wide v0, v11, Lcom/truecaller/messaging/data/types/LocationEntity;->x:D

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/truecaller/messaging/data/types/BinaryEntity;-><init>(Landroid/os/Parcel;)V

    const/16 v0, 0x9

    .line 7
    iput v0, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->y:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->v:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->w:D

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->x:D

    return-void
.end method


# virtual methods
.method public final A()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->x:D

    return-wide v0
.end method

.method public c(Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "contentValues"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget v0, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->y:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "entity_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    iget v0, p0, Lcom/truecaller/messaging/data/types/Entity;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "entity_info2"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "entity_info3"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "entity_info1"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->v:Ljava/lang/String;

    const-string v1, "entity_info4"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->w:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "entity_info5"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 9
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->x:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "entity_info6"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->y:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/truecaller/messaging/data/types/BinaryEntity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/truecaller/messaging/data/types/LocationEntity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/messaging/data/types/LocationEntity;

    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/LocationEntity;->w:D

    iget-wide v2, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->w:D

    cmpg-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/truecaller/messaging/data/types/LocationEntity;->x:D

    iget-wide v2, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->x:D

    cmpg-double v0, v0, v2

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/LocationEntity;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->v:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->v:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-wide v1, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->w:D

    invoke-static {v1, v2}, Lc;->a(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-wide v1, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->x:D

    invoke-static {v1, v2}, Lc;->a(D)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/truecaller/messaging/data/types/BinaryEntity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->w:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 4
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->x:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->v:Ljava/lang/String;

    return-object v0
.end method

.method public final z()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/LocationEntity;->w:D

    return-wide v0
.end method
