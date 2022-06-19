.class public final Lcom/truecaller/messaging/data/types/DocumentEntity;
.super Lcom/truecaller/messaging/data/types/BinaryEntity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/data/types/DocumentEntity$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/truecaller/messaging/data/types/DocumentEntity$a;


# instance fields
.field public final v:Ljava/lang/String;

.field public final w:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/messaging/data/types/DocumentEntity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/messaging/data/types/DocumentEntity$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/messaging/data/types/DocumentEntity;->CREATOR:Lcom/truecaller/messaging/data/types/DocumentEntity$a;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ILandroid/net/Uri;ZJLjava/lang/String;)V
    .locals 13

    move-object v11, p0

    move-object/from16 v12, p9

    const-string v0, "type"

    move-object/from16 v3, p3

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    move-object/from16 v5, p5

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileName"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x0

    const/16 v10, 0x40

    move-object v0, p0

    move-wide v1, p1

    move/from16 v4, p4

    move-wide/from16 v6, p7

    move/from16 v8, p6

    .line 1
    invoke-direct/range {v0 .. v10}, Lcom/truecaller/messaging/data/types/BinaryEntity;-><init>(JLjava/lang/String;ILandroid/net/Uri;JZII)V

    const/4 v0, 0x5

    .line 2
    iput v0, v11, Lcom/truecaller/messaging/data/types/DocumentEntity;->w:I

    .line 3
    iput-object v12, v11, Lcom/truecaller/messaging/data/types/DocumentEntity;->v:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/truecaller/messaging/data/types/BinaryEntity;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x5

    .line 5
    iput v0, p0, Lcom/truecaller/messaging/data/types/DocumentEntity;->w:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/truecaller/messaging/data/types/DocumentEntity;->v:Ljava/lang/String;

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
    iget v0, p0, Lcom/truecaller/messaging/data/types/DocumentEntity;->w:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "entity_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/DocumentEntity;->v:Ljava/lang/String;

    const-string v1, "entity_info4"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/data/types/DocumentEntity;->w:I

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
    invoke-super {p0, p1}, Lcom/truecaller/messaging/data/types/BinaryEntity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/truecaller/messaging/data/types/DocumentEntity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/messaging/data/types/DocumentEntity;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/DocumentEntity;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/truecaller/messaging/data/types/DocumentEntity;->v:Ljava/lang/String;

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
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/truecaller/messaging/data/types/BinaryEntity;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/DocumentEntity;->v:Ljava/lang/String;

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
    invoke-super {p0, p1, p2}, Lcom/truecaller/messaging/data/types/BinaryEntity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/DocumentEntity;->v:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
