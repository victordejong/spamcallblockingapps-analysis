.class public final Lcom/truecaller/voip/api/CallInfoDto;
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
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J*\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\t\u001a\u00020\u00022\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001a\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\"\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0008R\u001c\u0010\t\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0004\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/truecaller/voip/api/CallInfoDto;",
        "",
        "",
        "component1",
        "()J",
        "",
        "Lcom/truecaller/voip/api/CallInfoPeerDto;",
        "component2",
        "()Ljava/util/Set;",
        "voipIdExpiryEpochSeconds",
        "peers",
        "copy",
        "(JLjava/util/Set;)Lcom/truecaller/voip/api/CallInfoDto;",
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
        "Ljava/util/Set;",
        "getPeers",
        "J",
        "getVoipIdExpiryEpochSeconds",
        "<init>",
        "(JLjava/util/Set;)V",
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
.field private final peers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/truecaller/voip/api/CallInfoPeerDto;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "users"
    .end annotation
.end field

.field private final voipIdExpiryEpochSeconds:J
    .annotation runtime Le/m/e/d0/b;
        value = "voipIdExpiry"
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Lcom/truecaller/voip/api/CallInfoPeerDto;",
            ">;)V"
        }
    .end annotation

    const-string v0, "peers"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/truecaller/voip/api/CallInfoDto;->voipIdExpiryEpochSeconds:J

    iput-object p3, p0, Lcom/truecaller/voip/api/CallInfoDto;->peers:Ljava/util/Set;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/voip/api/CallInfoDto;JLjava/util/Set;ILjava/lang/Object;)Lcom/truecaller/voip/api/CallInfoDto;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-wide p1, p0, Lcom/truecaller/voip/api/CallInfoDto;->voipIdExpiryEpochSeconds:J

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-object p3, p0, Lcom/truecaller/voip/api/CallInfoDto;->peers:Ljava/util/Set;

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/truecaller/voip/api/CallInfoDto;->copy(JLjava/util/Set;)Lcom/truecaller/voip/api/CallInfoDto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/voip/api/CallInfoDto;->voipIdExpiryEpochSeconds:J

    return-wide v0
.end method

.method public final component2()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/truecaller/voip/api/CallInfoPeerDto;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/voip/api/CallInfoDto;->peers:Ljava/util/Set;

    return-object v0
.end method

.method public final copy(JLjava/util/Set;)Lcom/truecaller/voip/api/CallInfoDto;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Set<",
            "Lcom/truecaller/voip/api/CallInfoPeerDto;",
            ">;)",
            "Lcom/truecaller/voip/api/CallInfoDto;"
        }
    .end annotation

    const-string v0, "peers"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/voip/api/CallInfoDto;

    invoke-direct {v0, p1, p2, p3}, Lcom/truecaller/voip/api/CallInfoDto;-><init>(JLjava/util/Set;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/voip/api/CallInfoDto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/voip/api/CallInfoDto;

    iget-wide v0, p0, Lcom/truecaller/voip/api/CallInfoDto;->voipIdExpiryEpochSeconds:J

    iget-wide v2, p1, Lcom/truecaller/voip/api/CallInfoDto;->voipIdExpiryEpochSeconds:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/voip/api/CallInfoDto;->peers:Ljava/util/Set;

    iget-object p1, p1, Lcom/truecaller/voip/api/CallInfoDto;->peers:Ljava/util/Set;

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

.method public final getPeers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/truecaller/voip/api/CallInfoPeerDto;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/api/CallInfoDto;->peers:Ljava/util/Set;

    return-object v0
.end method

.method public final getVoipIdExpiryEpochSeconds()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/voip/api/CallInfoDto;->voipIdExpiryEpochSeconds:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/voip/api/CallInfoDto;->voipIdExpiryEpochSeconds:J

    invoke-static {v0, v1}, Ld;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/voip/api/CallInfoDto;->peers:Ljava/util/Set;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "CallInfoDto(voipIdExpiryEpochSeconds="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/truecaller/voip/api/CallInfoDto;->voipIdExpiryEpochSeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", peers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/voip/api/CallInfoDto;->peers:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
