.class public final Lcom/truecaller/spamcategories/SpamCategoryResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/spamcategories/SpamCategoryResult$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/spamcategories/SpamCategoryResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/Long;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Z

.field public final f:Z

.field public final g:Lcom/truecaller/contactfeedback/model/Profile;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/spamcategories/SpamCategoryResult$a;

    invoke-direct {v0}, Lcom/truecaller/spamcategories/SpamCategoryResult$a;-><init>()V

    sput-object v0, Lcom/truecaller/spamcategories/SpamCategoryResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/truecaller/spamcategories/SpamCategoryResult;-><init>(Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;ZZLcom/truecaller/contactfeedback/model/Profile;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;ZZLcom/truecaller/contactfeedback/model/Profile;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->a:Ljava/lang/Long;

    iput-object p2, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->c:Z

    iput-object p4, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->e:Z

    iput-boolean p6, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->f:Z

    iput-object p7, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->g:Lcom/truecaller/contactfeedback/model/Profile;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;ZZLcom/truecaller/contactfeedback/model/Profile;I)V
    .locals 7

    and-int/lit8 v0, p8, 0x1

    const/4 v0, 0x0

    and-int/lit8 v1, p8, 0x2

    const/4 v1, 0x0

    and-int/lit8 v2, p8, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, p3

    :goto_0
    and-int/lit8 v4, p8, 0x8

    const/4 v4, 0x0

    and-int/lit8 v5, p8, 0x10

    if-eqz v5, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, p5

    :goto_1
    and-int/lit8 v6, p8, 0x20

    if-eqz v6, :cond_2

    goto :goto_2

    :cond_2
    move v3, p6

    :goto_2
    and-int/lit8 v6, p8, 0x40

    const/4 v6, 0x0

    move-object p1, p0

    move-object p2, v0

    move-object p3, v1

    move p4, v2

    move-object p5, v4

    move p6, v5

    move p7, v3

    move-object p8, v6

    .line 2
    invoke-direct/range {p1 .. p8}, Lcom/truecaller/spamcategories/SpamCategoryResult;-><init>(Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;ZZLcom/truecaller/contactfeedback/model/Profile;)V

    return-void
.end method

.method public static a(Lcom/truecaller/spamcategories/SpamCategoryResult;Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;ZZLcom/truecaller/contactfeedback/model/Profile;I)Lcom/truecaller/spamcategories/SpamCategoryResult;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p8, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/truecaller/spamcategories/SpamCategoryResult;->a:Ljava/lang/Long;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    and-int/lit8 v3, p8, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/truecaller/spamcategories/SpamCategoryResult;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, p8, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lcom/truecaller/spamcategories/SpamCategoryResult;->c:Z

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, p8, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/truecaller/spamcategories/SpamCategoryResult;->d:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, v2

    :goto_3
    and-int/lit8 v6, p8, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lcom/truecaller/spamcategories/SpamCategoryResult;->e:Z

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, p8, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/truecaller/spamcategories/SpamCategoryResult;->f:Z

    goto :goto_5

    :cond_5
    move v7, p6

    :goto_5
    and-int/lit8 v8, p8, 0x40

    if-eqz v8, :cond_6

    iget-object v2, v0, Lcom/truecaller/spamcategories/SpamCategoryResult;->g:Lcom/truecaller/contactfeedback/model/Profile;

    .line 1
    :cond_6
    new-instance v0, Lcom/truecaller/spamcategories/SpamCategoryResult;

    move-object p0, v0

    move-object p1, v1

    move-object p2, v3

    move p3, v4

    move-object p4, v5

    move p5, v6

    move p6, v7

    move-object/from16 p7, v2

    invoke-direct/range {p0 .. p7}, Lcom/truecaller/spamcategories/SpamCategoryResult;-><init>(Ljava/lang/Long;Ljava/lang/String;ZLjava/lang/String;ZZLcom/truecaller/contactfeedback/model/Profile;)V

    return-object v0
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

    instance-of v0, p1, Lcom/truecaller/spamcategories/SpamCategoryResult;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/spamcategories/SpamCategoryResult;

    iget-object v0, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->a:Ljava/lang/Long;

    iget-object v1, p1, Lcom/truecaller/spamcategories/SpamCategoryResult;->a:Ljava/lang/Long;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/spamcategories/SpamCategoryResult;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->c:Z

    iget-boolean v1, p1, Lcom/truecaller/spamcategories/SpamCategoryResult;->c:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->d:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/spamcategories/SpamCategoryResult;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->e:Z

    iget-boolean v1, p1, Lcom/truecaller/spamcategories/SpamCategoryResult;->e:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->f:Z

    iget-boolean v1, p1, Lcom/truecaller/spamcategories/SpamCategoryResult;->f:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->g:Lcom/truecaller/contactfeedback/model/Profile;

    iget-object p1, p1, Lcom/truecaller/spamcategories/SpamCategoryResult;->g:Lcom/truecaller/contactfeedback/model/Profile;

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
    .locals 4

    iget-object v0, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->a:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->b:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->c:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->d:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->e:Z

    if-eqz v2, :cond_4

    move v2, v3

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->f:Z

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    move v3, v2

    :goto_3
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->g:Lcom/truecaller/contactfeedback/model/Profile;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/truecaller/contactfeedback/model/Profile;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "SpamCategoryResult(categoryId="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isBusiness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", comment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasComment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasSuggestedName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", currentProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->g:Lcom/truecaller/contactfeedback/model/Profile;

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

    iget-object v0, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->a:Ljava/lang/Long;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->c:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->e:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->f:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/truecaller/spamcategories/SpamCategoryResult;->g:Lcom/truecaller/contactfeedback/model/Profile;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
