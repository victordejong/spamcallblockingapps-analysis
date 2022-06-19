.class public final Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;
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
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\t\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0016\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J*\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\t\u001a\u00020\u00022\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u00d6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0004J\u001a\u0010\u0013\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\t\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0004R\"\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0008\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;",
        "",
        "",
        "component1",
        "()I",
        "",
        "Lcom/truecaller/insights/core/senderinfo/SenderBlockList;",
        "component2",
        "()Ljava/util/List;",
        "version",
        "senderPreferences",
        "copy",
        "(ILjava/util/List;)Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getVersion",
        "Ljava/util/List;",
        "getSenderPreferences",
        "<init>",
        "(ILjava/util/List;)V",
        "insights_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final senderPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/insights/core/senderinfo/SenderBlockList;",
            ">;"
        }
    .end annotation

    .annotation runtime Le/m/e/d0/b;
        value = "sender_preferences"
    .end annotation
.end field

.field private final version:I
    .annotation runtime Le/m/e/d0/b;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/core/senderinfo/SenderBlockList;",
            ">;)V"
        }
    .end annotation

    const-string v0, "senderPreferences"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;->version:I

    iput-object p2, p0, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;->senderPreferences:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;ILjava/util/List;ILjava/lang/Object;)Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget p1, p0, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;->version:I

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;->senderPreferences:Ljava/util/List;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;->copy(ILjava/util/List;)Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;->version:I

    return v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/core/senderinfo/SenderBlockList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;->senderPreferences:Ljava/util/List;

    return-object v0
.end method

.method public final copy(ILjava/util/List;)Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/core/senderinfo/SenderBlockList;",
            ">;)",
            "Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;"
        }
    .end annotation

    const-string v0, "senderPreferences"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;

    invoke-direct {v0, p1, p2}, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;

    iget v0, p0, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;->version:I

    iget v1, p1, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;->version:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;->senderPreferences:Ljava/util/List;

    iget-object p1, p1, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;->senderPreferences:Ljava/util/List;

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

.method public final getSenderPreferences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/insights/core/senderinfo/SenderBlockList;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;->senderPreferences:Ljava/util/List;

    return-object v0
.end method

.method public final getVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;->version:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;->version:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;->senderPreferences:Ljava/util/List;

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

    const-string v0, "SenderBlockPreference(version="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", senderPreferences="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/core/senderinfo/SenderBlockPreference;->senderPreferences:Ljava/util/List;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->l(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
