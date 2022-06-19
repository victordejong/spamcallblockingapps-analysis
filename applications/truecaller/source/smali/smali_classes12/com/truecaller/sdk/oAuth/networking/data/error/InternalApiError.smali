.class public final Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;
.super Le/a/v4/s0/l/e/b/a;
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\u0008\u0087\u0008\u0018\u00002\u00020\u0001B!\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u0008\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u0010\u0010\t\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\u0007J\u0012\u0010\n\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\n\u0010\u0007J0\u0010\u000e\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00052\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0007J\u0010\u0010\u0011\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0011\u0010\u0004J\u001a\u0010\u0015\u001a\u00020\u00142\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0012H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0004R\u0019\u0010\u000c\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0007R\u001b\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u0019\u001a\u0004\u0008\u001b\u0010\u0007\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;",
        "Le/a/v4/s0/l/e/b/a;",
        "",
        "errorCode",
        "()I",
        "",
        "errorMessage",
        "()Ljava/lang/String;",
        "component1",
        "component2",
        "component3",
        "status",
        "message",
        "details",
        "copy",
        "(ILjava/lang/String;Ljava/lang/String;)Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;",
        "toString",
        "hashCode",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "I",
        "getStatus",
        "Ljava/lang/String;",
        "getMessage",
        "getDetails",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/String;)V",
        "sdk-internal_release"
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

.field private final message:Ljava/lang/String;

.field private final status:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 1
    invoke-direct {p0, v0, v1, v2, v1}, Le/a/v4/s0/l/e/b/a;-><init>(ILjava/lang/String;ILs1/z/c/f;)V

    iput p1, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->status:I

    iput-object p2, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->message:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->details:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;ILjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->status:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->message:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->details:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->copy(ILjava/lang/String;Ljava/lang/String;)Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->status:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->details:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;)Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;
    .locals 1

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;

    invoke-direct {v0, p1, p2, p3}, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;

    iget v0, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->status:I

    iget v1, p1, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->status:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->message:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->details:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->details:Ljava/lang/String;

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

.method public errorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->status:I

    return v0
.end method

.method public errorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->details:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->message:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public final getDetails()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->details:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->status:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->status:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->message:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->details:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "InternalApiError(status="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/sdk/oAuth/networking/data/error/InternalApiError;->details:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
