.class public final Lcom/truecaller/messaging/ForwardContentItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/ForwardContentItem$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/messaging/ForwardContentItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Lcom/truecaller/messaging/data/types/BinaryEntity;

.field public final d:I

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Mention;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/truecaller/messaging/data/types/ImForwardInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/messaging/ForwardContentItem$a;

    invoke-direct {v0}, Lcom/truecaller/messaging/ForwardContentItem$a;-><init>()V

    sput-object v0, Lcom/truecaller/messaging/ForwardContentItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLcom/truecaller/messaging/data/types/BinaryEntity;ILjava/util/List;Lcom/truecaller/messaging/data/types/ImForwardInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/truecaller/messaging/data/types/BinaryEntity;",
            "I",
            "Ljava/util/List<",
            "Lcom/truecaller/messaging/data/types/Mention;",
            ">;",
            "Lcom/truecaller/messaging/data/types/ImForwardInfo;",
            ")V"
        }
    .end annotation

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/messaging/ForwardContentItem;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/truecaller/messaging/ForwardContentItem;->b:Z

    iput-object p3, p0, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    iput p4, p0, Lcom/truecaller/messaging/ForwardContentItem;->d:I

    iput-object p5, p0, Lcom/truecaller/messaging/ForwardContentItem;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/truecaller/messaging/ForwardContentItem;->f:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZLcom/truecaller/messaging/data/types/BinaryEntity;ILjava/util/List;Lcom/truecaller/messaging/data/types/ImForwardInfo;I)V
    .locals 7

    and-int/lit8 p6, p7, 0x20

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/truecaller/messaging/ForwardContentItem;-><init>(Ljava/lang/String;ZLcom/truecaller/messaging/data/types/BinaryEntity;ILjava/util/List;Lcom/truecaller/messaging/data/types/ImForwardInfo;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/messaging/ForwardContentItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/messaging/ForwardContentItem;

    iget-object v0, p0, Lcom/truecaller/messaging/ForwardContentItem;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/messaging/ForwardContentItem;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/messaging/ForwardContentItem;->b:Z

    iget-boolean v1, p1, Lcom/truecaller/messaging/ForwardContentItem;->b:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    iget-object v1, p1, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/truecaller/messaging/ForwardContentItem;->d:I

    iget v1, p1, Lcom/truecaller/messaging/ForwardContentItem;->d:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/messaging/ForwardContentItem;->e:Ljava/util/List;

    iget-object v1, p1, Lcom/truecaller/messaging/ForwardContentItem;->e:Ljava/util/List;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/messaging/ForwardContentItem;->f:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    iget-object p1, p1, Lcom/truecaller/messaging/ForwardContentItem;->f:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/messaging/ForwardContentItem;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/truecaller/messaging/ForwardContentItem;->b:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/BinaryEntity;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/truecaller/messaging/ForwardContentItem;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/messaging/ForwardContentItem;->e:Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/messaging/ForwardContentItem;->f:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/ImForwardInfo;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ForwardContentItem(text="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/messaging/ForwardContentItem;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isRichText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/messaging/ForwardContentItem;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mediaContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/messaging/ForwardContentItem;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mentions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/messaging/ForwardContentItem;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imForwardInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/messaging/ForwardContentItem;->f:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string v0, "parcel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/messaging/ForwardContentItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/truecaller/messaging/ForwardContentItem;->b:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/truecaller/messaging/ForwardContentItem;->c:Lcom/truecaller/messaging/data/types/BinaryEntity;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v0, p0, Lcom/truecaller/messaging/ForwardContentItem;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/truecaller/messaging/ForwardContentItem;->e:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/data/types/Mention;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    iget-object v0, p0, Lcom/truecaller/messaging/ForwardContentItem;->f:Lcom/truecaller/messaging/data/types/ImForwardInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
