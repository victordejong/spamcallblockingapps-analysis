.class public abstract Lcom/truecaller/data/entity/RowEntity;
.super Lcom/truecaller/data/entity/Entity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RT:",
        "Lcom/truecaller/data/dto/ContactDto$Row;",
        ">",
        "Lcom/truecaller/data/entity/Entity;"
    }
.end annotation


# instance fields
.field public final mRow:Lcom/truecaller/data/dto/ContactDto$Row;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/truecaller/data/entity/Entity;-><init>(Landroid/os/Parcel;)V

    .line 4
    const-class v0, Lcom/truecaller/data/dto/ContactDto$Row;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/dto/ContactDto$Row;

    iput-object p1, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/data/dto/ContactDto$Row;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/data/entity/Entity;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDataPhonebookId()Ljava/lang/Long;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    iget-wide v0, v0, Lcom/truecaller/data/dto/ContactDto$Row;->phonebookId:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    iget-wide v0, v0, Lcom/truecaller/data/dto/ContactDto$Row;->rowId:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getSource()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    iget v0, v0, Lcom/truecaller/data/dto/ContactDto$Row;->source:I

    return v0
.end method

.method public getTcId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    iget-object v0, v0, Lcom/truecaller/data/dto/ContactDto$Row;->tcId:Ljava/lang/String;

    return-object v0
.end method

.method public isPrimary()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    iget-boolean v0, v0, Lcom/truecaller/data/dto/ContactDto$Row;->isPrimary:Z

    return v0
.end method

.method public final row()Lcom/truecaller/data/dto/ContactDto$Row;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    return-object v0
.end method

.method public setDataPhonebookId(Ljava/lang/Long;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    if-nez p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    iput-wide v1, v0, Lcom/truecaller/data/dto/ContactDto$Row;->phonebookId:J

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    if-nez p1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    iput-wide v1, v0, Lcom/truecaller/data/dto/ContactDto$Row;->rowId:J

    return-void
.end method

.method public setIsPrimary(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    iput-boolean p1, v0, Lcom/truecaller/data/dto/ContactDto$Row;->isPrimary:Z

    return-void
.end method

.method public setSource(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    iput p1, v0, Lcom/truecaller/data/dto/ContactDto$Row;->source:I

    return-void
.end method

.method public setTcId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    iput-object p1, v0, Lcom/truecaller/data/dto/ContactDto$Row;->tcId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{row="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/truecaller/data/entity/Entity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/data/entity/RowEntity;->mRow:Lcom/truecaller/data/dto/ContactDto$Row;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
