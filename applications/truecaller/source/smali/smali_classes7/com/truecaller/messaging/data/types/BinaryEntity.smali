.class public Lcom/truecaller/messaging/data/types/BinaryEntity;
.super Lcom/truecaller/messaging/data/types/Entity;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final i:Landroid/net/Uri;

.field public final j:Z

.field public final k:J

.field public l:I

.field public final m:I

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public final u:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/messaging/data/types/BinaryEntity$a;

    invoke-direct {v0}, Lcom/truecaller/messaging/data/types/BinaryEntity$a;-><init>()V

    sput-object v0, Lcom/truecaller/messaging/data/types/BinaryEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ILandroid/net/Uri;JZII)V
    .locals 1

    and-int/lit8 v0, p10, 0x1

    if-eqz v0, :cond_0

    const-wide/16 p1, -0x1

    :cond_0
    and-int/lit8 v0, p10, 0x4

    if-eqz v0, :cond_1

    const/4 p4, 0x0

    :cond_1
    and-int/lit8 p10, p10, 0x40

    if-eqz p10, :cond_2

    const/4 p9, -0x1

    :cond_2
    const-string p10, "type"

    .line 1
    invoke-static {p3, p10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p10, "content"

    invoke-static {p5, p10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/truecaller/messaging/data/types/Entity;-><init>(JLjava/lang/String;I)V

    const/16 p1, 0x8

    .line 3
    iput p1, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->m:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->n:Z

    .line 5
    sget-object p1, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    iget-object p2, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/truecaller/messaging/data/types/Entity$a;->f(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->o:Z

    .line 6
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/truecaller/messaging/data/types/Entity$a;->l(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->p:Z

    .line 7
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/truecaller/messaging/data/types/Entity$a;->k(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->q:Z

    .line 8
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/truecaller/messaging/data/types/Entity$a;->c(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->r:Z

    .line 9
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/truecaller/messaging/data/types/Entity$a;->e(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->s:Z

    .line 10
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/truecaller/messaging/data/types/Entity$a;->d(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->t:Z

    .line 11
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/truecaller/messaging/data/types/Entity$a;->h(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->u:Z

    .line 12
    iput-object p5, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    .line 13
    iput-boolean p8, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->j:Z

    .line 14
    iput-wide p6, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    .line 15
    iput p9, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->l:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0, p1}, Lcom/truecaller/messaging/data/types/Entity;-><init>(Landroid/os/Parcel;)V

    const/16 v0, 0x8

    .line 17
    iput v0, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->m:I

    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->n:Z

    .line 19
    sget-object v1, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    iget-object v2, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/truecaller/messaging/data/types/Entity$a;->f(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->o:Z

    .line 20
    iget-object v2, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/truecaller/messaging/data/types/Entity$a;->l(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->p:Z

    .line 21
    iget-object v2, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/truecaller/messaging/data/types/Entity$a;->k(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->q:Z

    .line 22
    iget-object v2, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/truecaller/messaging/data/types/Entity$a;->c(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->r:Z

    .line 23
    iget-object v2, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/truecaller/messaging/data/types/Entity$a;->e(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->s:Z

    .line 24
    iget-object v2, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/truecaller/messaging/data/types/Entity$a;->d(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->t:Z

    .line 25
    iget-object v2, p0, Lcom/truecaller/messaging/data/types/Entity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/truecaller/messaging/data/types/Entity$a;->h(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->u:Z

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "Uri.parse(source.readString())"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->j:Z

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->l:I

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
    iget v0, p0, Lcom/truecaller/messaging/data/types/Entity;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "entity_info2"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "entity_info1"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "entity_info3"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->m:I

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->r:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/truecaller/messaging/data/types/Entity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    check-cast p1, Lcom/truecaller/messaging/data/types/BinaryEntity;

    iget-object p1, p1, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->n:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->t:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->s:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/truecaller/messaging/data/types/Entity;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->o:Z

    return v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->u:Z

    return v0
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->q:Z

    return v0
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->p:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/truecaller/messaging/data/types/Entity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->i:Landroid/net/Uri;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-boolean p2, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->j:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-wide v0, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget p2, p0, Lcom/truecaller/messaging/data/types/BinaryEntity;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
