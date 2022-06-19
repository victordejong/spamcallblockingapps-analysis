.class public final Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J.\u0010\u000c\u001a\u00020\u00002\u0008\u0008\u0002\u0010\t\u001a\u00020\u00022\u0008\u0008\u0002\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u000f\u0010\u0007J\u001a\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0004R\u0019\u0010\n\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0007R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0014\u001a\u0004\u0008\u0018\u0010\u0004\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;",
        "",
        "",
        "component1",
        "()Ljava/lang/String;",
        "",
        "component2",
        "()I",
        "component3",
        "fieldName",
        "errorType",
        "details",
        "copy",
        "(Ljava/lang/String;ILjava/lang/String;)Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getFieldName",
        "I",
        "getErrorType",
        "getDetails",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final details:Ljava/lang/String;

.field private final errorType:I

.field private final fieldName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "fieldName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "details"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->fieldName:Ljava/lang/String;

    iput p2, p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->errorType:I

    iput-object p3, p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->details:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;Ljava/lang/String;ILjava/lang/String;ILjava/lang/Object;)Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->fieldName:Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->errorType:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->details:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->copy(Ljava/lang/String;ILjava/lang/String;)Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->errorType:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->details:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;ILjava/lang/String;)Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;
    .locals 1

    const-string v0, "fieldName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "details"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;

    invoke-direct {v0, p1, p2, p3}, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->fieldName:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->fieldName:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->errorType:I

    iget v1, p1, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->errorType:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->details:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->details:Ljava/lang/String;

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

.method public final getDetails()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->details:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->errorType:I

    return v0
.end method

.method public final getFieldName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->fieldName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->errorType:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->details:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "BusinessAPIError(fieldName="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", errorType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->errorType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/bizmon/newBusiness/data/BusinessAPIError;->details:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
