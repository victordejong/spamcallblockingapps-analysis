.class public final Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J*\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\t\u001a\u00020\u00022\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001a\u0010\u0014\u001a\u00020\u00022\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0004R\u001f\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u0008\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;",
        "",
        "",
        "component1",
        "()Z",
        "",
        "Lcom/truecaller/callhero_assistant/data/Voice;",
        "component2",
        "()Ljava/util/List;",
        "success",
        "voices",
        "copy",
        "(ZLjava/util/List;)Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "",
        "hashCode",
        "()I",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Z",
        "getSuccess",
        "Ljava/util/List;",
        "getVoices",
        "<init>",
        "(ZLjava/util/List;)V",
        "callhero_assistant_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final success:Z

.field private final voices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/callhero_assistant/data/Voice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/truecaller/callhero_assistant/data/Voice;",
            ">;)V"
        }
    .end annotation

    const-string v0, "voices"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;->success:Z

    iput-object p2, p0, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;->voices:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;ZLjava/util/List;ILjava/lang/Object;)Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-boolean p1, p0, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;->success:Z

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;->voices:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;->copy(ZLjava/util/List;)Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;->success:Z

    return v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/callhero_assistant/data/Voice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;->voices:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ZLjava/util/List;)Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/truecaller/callhero_assistant/data/Voice;",
            ">;)",
            "Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;"
        }
    .end annotation

    const-string v0, "voices"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;

    invoke-direct {v0, p1, p2}, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;-><init>(ZLjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;

    iget-boolean v0, p0, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;->success:Z

    iget-boolean v1, p1, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;->success:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;->voices:Ljava/util/List;

    iget-object p1, p1, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;->voices:Ljava/util/List;

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

.method public final getSuccess()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;->success:Z

    return v0
.end method

.method public final getVoices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/callhero_assistant/data/Voice;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;->voices:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;->success:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;->voices:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ListVoicesResponseDto(success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", voices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;->voices:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
