.class public final Lcom/truecaller/voip/api/VoipNumberDto;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J$\u0010\u0008\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0019\u0010\u0006\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0004R\u001c\u0010\u0007\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0014\u001a\u0004\u0008\u0016\u0010\u0004\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/truecaller/voip/api/VoipNumberDto;",
        "",
        "",
        "component1",
        "()J",
        "component2",
        "phone",
        "expiryEpochSeconds",
        "copy",
        "(JJ)Lcom/truecaller/voip/api/VoipNumberDto;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "J",
        "getPhone",
        "getExpiryEpochSeconds",
        "<init>",
        "(JJ)V",
        "voip_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final expiryEpochSeconds:J
    .annotation runtime Le/m/e/d0/b;
        value = "expiry"
    .end annotation
.end field

.field private final phone:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/truecaller/voip/api/VoipNumberDto;->phone:J

    iput-wide p3, p0, Lcom/truecaller/voip/api/VoipNumberDto;->expiryEpochSeconds:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/voip/api/VoipNumberDto;JJILjava/lang/Object;)Lcom/truecaller/voip/api/VoipNumberDto;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-wide p1, p0, Lcom/truecaller/voip/api/VoipNumberDto;->phone:J

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    iget-wide p3, p0, Lcom/truecaller/voip/api/VoipNumberDto;->expiryEpochSeconds:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/truecaller/voip/api/VoipNumberDto;->copy(JJ)Lcom/truecaller/voip/api/VoipNumberDto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/voip/api/VoipNumberDto;->phone:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/voip/api/VoipNumberDto;->expiryEpochSeconds:J

    return-wide v0
.end method

.method public final copy(JJ)Lcom/truecaller/voip/api/VoipNumberDto;
    .locals 1

    new-instance v0, Lcom/truecaller/voip/api/VoipNumberDto;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/truecaller/voip/api/VoipNumberDto;-><init>(JJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/voip/api/VoipNumberDto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/voip/api/VoipNumberDto;

    iget-wide v0, p0, Lcom/truecaller/voip/api/VoipNumberDto;->phone:J

    iget-wide v2, p1, Lcom/truecaller/voip/api/VoipNumberDto;->phone:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/truecaller/voip/api/VoipNumberDto;->expiryEpochSeconds:J

    iget-wide v2, p1, Lcom/truecaller/voip/api/VoipNumberDto;->expiryEpochSeconds:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getExpiryEpochSeconds()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/voip/api/VoipNumberDto;->expiryEpochSeconds:J

    return-wide v0
.end method

.method public final getPhone()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/voip/api/VoipNumberDto;->phone:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/truecaller/voip/api/VoipNumberDto;->phone:J

    invoke-static {v0, v1}, Ld;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/truecaller/voip/api/VoipNumberDto;->expiryEpochSeconds:J

    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "VoipNumberDto(phone="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/truecaller/voip/api/VoipNumberDto;->phone:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", expiryEpochSeconds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/voip/api/VoipNumberDto;->expiryEpochSeconds:J

    const-string v3, ")"

    invoke-static {v0, v1, v2, v3}, Le/d/c/a/a;->K2(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
