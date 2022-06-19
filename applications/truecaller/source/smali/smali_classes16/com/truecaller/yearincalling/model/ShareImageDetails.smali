.class public final Lcom/truecaller/yearincalling/model/ShareImageDetails;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/yearincalling/model/ShareImageDetails$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/yearincalling/model/ShareImageDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:Ljava/lang/CharSequence;

.field public final c:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/yearincalling/model/ShareImageDetails$a;

    invoke-direct {v0}, Lcom/truecaller/yearincalling/model/ShareImageDetails$a;-><init>()V

    sput-object v0, Lcom/truecaller/yearincalling/model/ShareImageDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/truecaller/yearincalling/model/ShareImageDetails;->a:I

    iput-object p2, p0, Lcom/truecaller/yearincalling/model/ShareImageDetails;->b:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/truecaller/yearincalling/model/ShareImageDetails;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 0

    and-int/lit8 p3, p4, 0x4

    const/4 p3, 0x0

    const-string p4, "value"

    .line 1
    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/truecaller/yearincalling/model/ShareImageDetails;->a:I

    iput-object p2, p0, Lcom/truecaller/yearincalling/model/ShareImageDetails;->b:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/truecaller/yearincalling/model/ShareImageDetails;->c:Ljava/lang/String;

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

    instance-of v0, p1, Lcom/truecaller/yearincalling/model/ShareImageDetails;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/yearincalling/model/ShareImageDetails;

    iget v0, p0, Lcom/truecaller/yearincalling/model/ShareImageDetails;->a:I

    iget v1, p1, Lcom/truecaller/yearincalling/model/ShareImageDetails;->a:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/yearincalling/model/ShareImageDetails;->b:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/truecaller/yearincalling/model/ShareImageDetails;->b:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/yearincalling/model/ShareImageDetails;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/yearincalling/model/ShareImageDetails;->c:Ljava/lang/String;

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

    iget v0, p0, Lcom/truecaller/yearincalling/model/ShareImageDetails;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/yearincalling/model/ShareImageDetails;->b:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/yearincalling/model/ShareImageDetails;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ShareImageDetails(resId="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/truecaller/yearincalling/model/ShareImageDetails;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/yearincalling/model/ShareImageDetails;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", auxValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/yearincalling/model/ShareImageDetails;->c:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p0, Lcom/truecaller/yearincalling/model/ShareImageDetails;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/truecaller/yearincalling/model/ShareImageDetails;->b:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/truecaller/yearincalling/model/ShareImageDetails;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
