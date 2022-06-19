.class public final Lcom/truecaller/voip/manager/VoipMsgExtras;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008#\u0008\u0087\u0008\u0018\u00002\u00020\u0001BQ\u0012\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0002\u00a2\u0006\u0004\u0008)\u0010*J\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000cJ\u0010\u0010\u000f\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u000cJZ\u0010\u0017\u001a\u00020\u00002\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\u0007J\u0010\u0010\u001a\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u000cJ\u001a\u0010\u001c\u001a\u00020\u00082\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u001b\u0010\u0010\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u001e\u001a\u0004\u0008\u001f\u0010\u0004R\u0019\u0010\u0013\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010 \u001a\u0004\u0008!\u0010\u000cR\u0019\u0010\u0015\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010 \u001a\u0004\u0008\"\u0010\u000cR\u0019\u0010\u0014\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010 \u001a\u0004\u0008#\u0010\u000cR\u0019\u0010\u0016\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010 \u001a\u0004\u0008$\u0010\u000cR\u0019\u0010\u0012\u001a\u00020\u00088\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010%\u001a\u0004\u0008&\u0010\nR\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\'\u001a\u0004\u0008(\u0010\u0007\u00a8\u0006+"
    }
    d2 = {
        "Lcom/truecaller/voip/manager/VoipMsgExtras;",
        "",
        "",
        "component1",
        "()Ljava/lang/Integer;",
        "",
        "component2",
        "()Ljava/lang/String;",
        "",
        "component3",
        "()Z",
        "component4",
        "()I",
        "component5",
        "component6",
        "component7",
        "uid",
        "channelId",
        "muted",
        "userCount",
        "errorCode",
        "state",
        "reason",
        "copy",
        "(Ljava/lang/Integer;Ljava/lang/String;ZIIII)Lcom/truecaller/voip/manager/VoipMsgExtras;",
        "toString",
        "hashCode",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/Integer;",
        "getUid",
        "I",
        "getUserCount",
        "getState",
        "getErrorCode",
        "getReason",
        "Z",
        "getMuted",
        "Ljava/lang/String;",
        "getChannelId",
        "<init>",
        "(Ljava/lang/Integer;Ljava/lang/String;ZIIII)V",
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
.field private final channelId:Ljava/lang/String;

.field private final errorCode:I

.field private final muted:Z

.field private final reason:I

.field private final state:I

.field private final uid:Ljava/lang/Integer;

.field private final userCount:I


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x7f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/truecaller/voip/manager/VoipMsgExtras;-><init>(Ljava/lang/Integer;Ljava/lang/String;ZIIIIILs1/z/c/f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;ZIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->uid:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->channelId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->muted:Z

    iput p4, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->userCount:I

    iput p5, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->errorCode:I

    iput p6, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->state:I

    iput p7, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->reason:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/String;ZIIIIILs1/z/c/f;)V
    .locals 5

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p9, v0

    goto :goto_0

    :cond_0
    move-object p9, p1

    :goto_0
    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    and-int/lit8 p1, p8, 0x4

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    move v1, p2

    goto :goto_2

    :cond_2
    move v1, p3

    :goto_2
    and-int/lit8 p1, p8, 0x8

    if-eqz p1, :cond_3

    move v2, p2

    goto :goto_3

    :cond_3
    move v2, p4

    :goto_3
    and-int/lit8 p1, p8, 0x10

    if-eqz p1, :cond_4

    move v3, p2

    goto :goto_4

    :cond_4
    move v3, p5

    :goto_4
    and-int/lit8 p1, p8, 0x20

    if-eqz p1, :cond_5

    move v4, p2

    goto :goto_5

    :cond_5
    move v4, p6

    :goto_5
    and-int/lit8 p1, p8, 0x40

    if-eqz p1, :cond_6

    move p8, p2

    goto :goto_6

    :cond_6
    move p8, p7

    :goto_6
    move-object p1, p0

    move-object p2, p9

    move-object p3, v0

    move p4, v1

    move p5, v2

    move p6, v3

    move p7, v4

    .line 2
    invoke-direct/range {p1 .. p8}, Lcom/truecaller/voip/manager/VoipMsgExtras;-><init>(Ljava/lang/Integer;Ljava/lang/String;ZIIII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/voip/manager/VoipMsgExtras;Ljava/lang/Integer;Ljava/lang/String;ZIIIIILjava/lang/Object;)Lcom/truecaller/voip/manager/VoipMsgExtras;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->uid:Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->channelId:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->muted:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->userCount:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->errorCode:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->state:I

    :cond_5
    move v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget p7, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->reason:I

    :cond_6
    move v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    move p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/truecaller/voip/manager/VoipMsgExtras;->copy(Ljava/lang/Integer;Ljava/lang/String;ZIIII)Lcom/truecaller/voip/manager/VoipMsgExtras;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->uid:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->muted:Z

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->userCount:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->errorCode:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->state:I

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->reason:I

    return v0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/String;ZIIII)Lcom/truecaller/voip/manager/VoipMsgExtras;
    .locals 9

    new-instance v8, Lcom/truecaller/voip/manager/VoipMsgExtras;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/truecaller/voip/manager/VoipMsgExtras;-><init>(Ljava/lang/Integer;Ljava/lang/String;ZIIII)V

    return-object v8
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/voip/manager/VoipMsgExtras;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/voip/manager/VoipMsgExtras;

    iget-object v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->uid:Ljava/lang/Integer;

    iget-object v1, p1, Lcom/truecaller/voip/manager/VoipMsgExtras;->uid:Ljava/lang/Integer;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->channelId:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/voip/manager/VoipMsgExtras;->channelId:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->muted:Z

    iget-boolean v1, p1, Lcom/truecaller/voip/manager/VoipMsgExtras;->muted:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->userCount:I

    iget v1, p1, Lcom/truecaller/voip/manager/VoipMsgExtras;->userCount:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->errorCode:I

    iget v1, p1, Lcom/truecaller/voip/manager/VoipMsgExtras;->errorCode:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->state:I

    iget v1, p1, Lcom/truecaller/voip/manager/VoipMsgExtras;->state:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->reason:I

    iget p1, p1, Lcom/truecaller/voip/manager/VoipMsgExtras;->reason:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->channelId:Ljava/lang/String;

    return-object v0
.end method

.method public final getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->errorCode:I

    return v0
.end method

.method public final getMuted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->muted:Z

    return v0
.end method

.method public final getReason()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->reason:I

    return v0
.end method

.method public final getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->state:I

    return v0
.end method

.method public final getUid()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->uid:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUserCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->userCount:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->uid:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->channelId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->muted:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :cond_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->userCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->errorCode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->state:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->reason:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "VoipMsgExtras(uid="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->uid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", channelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->channelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", muted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->muted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", userCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->userCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/voip/manager/VoipMsgExtras;->reason:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
