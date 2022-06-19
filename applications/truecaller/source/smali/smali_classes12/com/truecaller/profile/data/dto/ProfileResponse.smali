.class public final Lcom/truecaller/profile/data/dto/ProfileResponse;
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
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u000e\u0008\u0087\u0008\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0012\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\'\u0010(J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0012\u0010\u0008\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\u0007J\u0012\u0010\n\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0012\u0010\r\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eJJ\u0010\u0014\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00022\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0012\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u000cH\u00c6\u0001\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0007J\u0010\u0010\u0018\u001a\u00020\u0017H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001a\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u001b\u0010\u0013\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u001e\u001a\u0004\u0008\u001f\u0010\u000eR\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010 \u001a\u0004\u0008!\u0010\u0007R\u001b\u0010\u0012\u001a\u0004\u0018\u00010\t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\"\u001a\u0004\u0008#\u0010\u000bR\u0019\u0010\u000f\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010$\u001a\u0004\u0008%\u0010\u0004R\u001b\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010 \u001a\u0004\u0008&\u0010\u0007\u00a8\u0006)"
    }
    d2 = {
        "Lcom/truecaller/profile/data/dto/ProfileResponse;",
        "",
        "",
        "component1",
        "()J",
        "",
        "component2",
        "()Ljava/lang/String;",
        "component3",
        "Lcom/truecaller/profile/data/dto/PersonalDataResponse;",
        "component4",
        "()Lcom/truecaller/profile/data/dto/PersonalDataResponse;",
        "Lcom/truecaller/profile/data/dto/BusinessDataResponse;",
        "component5",
        "()Lcom/truecaller/profile/data/dto/BusinessDataResponse;",
        "userId",
        "firstName",
        "lastName",
        "personalData",
        "businessData",
        "copy",
        "(JLjava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/PersonalDataResponse;Lcom/truecaller/profile/data/dto/BusinessDataResponse;)Lcom/truecaller/profile/data/dto/ProfileResponse;",
        "toString",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Lcom/truecaller/profile/data/dto/BusinessDataResponse;",
        "getBusinessData",
        "Ljava/lang/String;",
        "getLastName",
        "Lcom/truecaller/profile/data/dto/PersonalDataResponse;",
        "getPersonalData",
        "J",
        "getUserId",
        "getFirstName",
        "<init>",
        "(JLjava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/PersonalDataResponse;Lcom/truecaller/profile/data/dto/BusinessDataResponse;)V",
        "profile_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final businessData:Lcom/truecaller/profile/data/dto/BusinessDataResponse;

.field private final firstName:Ljava/lang/String;

.field private final lastName:Ljava/lang/String;

.field private final personalData:Lcom/truecaller/profile/data/dto/PersonalDataResponse;

.field private final userId:J


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/PersonalDataResponse;Lcom/truecaller/profile/data/dto/BusinessDataResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->userId:J

    iput-object p3, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->firstName:Ljava/lang/String;

    iput-object p4, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->lastName:Ljava/lang/String;

    iput-object p5, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->personalData:Lcom/truecaller/profile/data/dto/PersonalDataResponse;

    iput-object p6, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->businessData:Lcom/truecaller/profile/data/dto/BusinessDataResponse;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/profile/data/dto/ProfileResponse;JLjava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/PersonalDataResponse;Lcom/truecaller/profile/data/dto/BusinessDataResponse;ILjava/lang/Object;)Lcom/truecaller/profile/data/dto/ProfileResponse;
    .locals 7

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-wide p1, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->userId:J

    :cond_0
    move-wide v1, p1

    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    iget-object p3, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->firstName:Ljava/lang/String;

    :cond_1
    move-object v3, p3

    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    iget-object p4, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->lastName:Ljava/lang/String;

    :cond_2
    move-object v4, p4

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    iget-object p5, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->personalData:Lcom/truecaller/profile/data/dto/PersonalDataResponse;

    :cond_3
    move-object v5, p5

    and-int/lit8 p1, p7, 0x10

    if-eqz p1, :cond_4

    iget-object p6, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->businessData:Lcom/truecaller/profile/data/dto/BusinessDataResponse;

    :cond_4
    move-object v6, p6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/truecaller/profile/data/dto/ProfileResponse;->copy(JLjava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/PersonalDataResponse;Lcom/truecaller/profile/data/dto/BusinessDataResponse;)Lcom/truecaller/profile/data/dto/ProfileResponse;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->userId:J

    return-wide v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/truecaller/profile/data/dto/PersonalDataResponse;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->personalData:Lcom/truecaller/profile/data/dto/PersonalDataResponse;

    return-object v0
.end method

.method public final component5()Lcom/truecaller/profile/data/dto/BusinessDataResponse;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->businessData:Lcom/truecaller/profile/data/dto/BusinessDataResponse;

    return-object v0
.end method

.method public final copy(JLjava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/PersonalDataResponse;Lcom/truecaller/profile/data/dto/BusinessDataResponse;)Lcom/truecaller/profile/data/dto/ProfileResponse;
    .locals 8

    new-instance v7, Lcom/truecaller/profile/data/dto/ProfileResponse;

    move-object v0, v7

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/truecaller/profile/data/dto/ProfileResponse;-><init>(JLjava/lang/String;Ljava/lang/String;Lcom/truecaller/profile/data/dto/PersonalDataResponse;Lcom/truecaller/profile/data/dto/BusinessDataResponse;)V

    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/profile/data/dto/ProfileResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/profile/data/dto/ProfileResponse;

    iget-wide v0, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->userId:J

    iget-wide v2, p1, Lcom/truecaller/profile/data/dto/ProfileResponse;->userId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->firstName:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/profile/data/dto/ProfileResponse;->firstName:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->lastName:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/profile/data/dto/ProfileResponse;->lastName:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->personalData:Lcom/truecaller/profile/data/dto/PersonalDataResponse;

    iget-object v1, p1, Lcom/truecaller/profile/data/dto/ProfileResponse;->personalData:Lcom/truecaller/profile/data/dto/PersonalDataResponse;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->businessData:Lcom/truecaller/profile/data/dto/BusinessDataResponse;

    iget-object p1, p1, Lcom/truecaller/profile/data/dto/ProfileResponse;->businessData:Lcom/truecaller/profile/data/dto/BusinessDataResponse;

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

.method public final getBusinessData()Lcom/truecaller/profile/data/dto/BusinessDataResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->businessData:Lcom/truecaller/profile/data/dto/BusinessDataResponse;

    return-object v0
.end method

.method public final getFirstName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLastName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPersonalData()Lcom/truecaller/profile/data/dto/PersonalDataResponse;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->personalData:Lcom/truecaller/profile/data/dto/PersonalDataResponse;

    return-object v0
.end method

.method public final getUserId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->userId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->userId:J

    invoke-static {v0, v1}, Ld;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->firstName:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->lastName:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->personalData:Lcom/truecaller/profile/data/dto/PersonalDataResponse;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/PersonalDataResponse;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->businessData:Lcom/truecaller/profile/data/dto/BusinessDataResponse;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/truecaller/profile/data/dto/BusinessDataResponse;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ProfileResponse(userId="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", firstName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lastName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", personalData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->personalData:Lcom/truecaller/profile/data/dto/PersonalDataResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", businessData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/profile/data/dto/ProfileResponse;->businessData:Lcom/truecaller/profile/data/dto/BusinessDataResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
