.class public final Lcom/truecaller/messaging/data/types/TextEntity;
.super Lcom/truecaller/messaging/data/types/Entity;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/messaging/data/types/TextEntity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final i:Ljava/lang/String;

.field public final j:Z

.field public final k:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/messaging/data/types/TextEntity$a;

    invoke-direct {v0}, Lcom/truecaller/messaging/data/types/TextEntity$a;-><init>()V

    sput-object v0, Lcom/truecaller/messaging/data/types/TextEntity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ILjava/lang/String;Z)V
    .locals 1

    const-string v0, "type"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/truecaller/messaging/data/types/Entity;-><init>(JLjava/lang/String;I)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/truecaller/messaging/data/types/TextEntity;->k:Z

    .line 3
    iput-object p5, p0, Lcom/truecaller/messaging/data/types/TextEntity;->i:Ljava/lang/String;

    .line 4
    iput-boolean p6, p0, Lcom/truecaller/messaging/data/types/TextEntity;->j:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ls1/z/c/f;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Lcom/truecaller/messaging/data/types/Entity;-><init>(Landroid/os/Parcel;)V

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/TextEntity;->k:Z

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/truecaller/messaging/data/types/TextEntity;->i:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcom/truecaller/messaging/data/types/TextEntity;->j:Z

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

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "entity_type"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/messaging/data/types/TextEntity;->i:Ljava/lang/String;

    const-string v1, "entity_info1"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/TextEntity;->j:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "entity_info2"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/truecaller/messaging/data/types/Entity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/truecaller/messaging/data/types/TextEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/messaging/data/types/TextEntity;->i:Ljava/lang/String;

    check-cast p1, Lcom/truecaller/messaging/data/types/TextEntity;

    iget-object v1, p1, Lcom/truecaller/messaging/data/types/TextEntity;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/TextEntity;->j:Z

    iget-boolean p1, p1, Lcom/truecaller/messaging/data/types/TextEntity;->j:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/truecaller/messaging/data/types/Entity;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/truecaller/messaging/data/types/TextEntity;->i:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget-boolean v1, p0, Lcom/truecaller/messaging/data/types/TextEntity;->j:Z

    invoke-static {v1}, Lb;->a(Z)I

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

    const/4 v0, 0x0

    return v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/messaging/data/types/TextEntity;->k:Z

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
    .locals 1

    const-string v0, "dest"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcom/truecaller/messaging/data/types/Entity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/messaging/data/types/TextEntity;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-boolean p2, p0, Lcom/truecaller/messaging/data/types/TextEntity;->j:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
