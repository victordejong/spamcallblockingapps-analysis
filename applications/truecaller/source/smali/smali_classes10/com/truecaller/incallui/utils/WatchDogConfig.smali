.class public final Lcom/truecaller/incallui/utils/WatchDogConfig;
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0008\u0081\u0008\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0002\u00a2\u0006\u0004\u0008 \u0010!J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0008H\u00c6\u0003\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J8\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00022\u0008\u0008\u0002\u0010\r\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0013\u001a\u00020\u0012H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u0005H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0015\u0010\u0007J\u001a\u0010\u0017\u001a\u00020\u00022\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R\u0019\u0010\u000f\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u0004R\u0019\u0010\r\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u0007R\u0019\u0010\u000e\u001a\u00020\u00088\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u001d\u001a\u0004\u0008\u001e\u0010\nR\u0019\u0010\u000c\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0019\u001a\u0004\u0008\u001f\u0010\u0004\u00a8\u0006\""
    }
    d2 = {
        "Lcom/truecaller/incallui/utils/WatchDogConfig;",
        "",
        "",
        "component1",
        "()Z",
        "",
        "component2",
        "()I",
        "",
        "component3",
        "()J",
        "component4",
        "enabled",
        "maxFailureCount",
        "disableAfterFailureDuration",
        "listenMultiSimDevices",
        "copy",
        "(ZIJZ)Lcom/truecaller/incallui/utils/WatchDogConfig;",
        "",
        "toString",
        "()Ljava/lang/String;",
        "hashCode",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Z",
        "getListenMultiSimDevices",
        "I",
        "getMaxFailureCount",
        "J",
        "getDisableAfterFailureDuration",
        "getEnabled",
        "<init>",
        "(ZIJZ)V",
        "incallui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final disableAfterFailureDuration:J

.field private final enabled:Z

.field private final listenMultiSimDevices:Z

.field private final maxFailureCount:I


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/truecaller/incallui/utils/WatchDogConfig;-><init>(ZIJZILs1/z/c/f;)V

    return-void
.end method

.method public constructor <init>(ZIJZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->enabled:Z

    iput p2, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->maxFailureCount:I

    iput-wide p3, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->disableAfterFailureDuration:J

    iput-boolean p5, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->listenMultiSimDevices:Z

    return-void
.end method

.method public synthetic constructor <init>(ZIJZILs1/z/c/f;)V
    .locals 4

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move p7, v0

    goto :goto_0

    :cond_0
    move p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    const-wide/16 p3, 0x0

    :cond_2
    move-wide v2, p3

    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move p6, v0

    goto :goto_2

    :cond_3
    move p6, p5

    :goto_2
    move-object p1, p0

    move p2, p7

    move p3, v1

    move-wide p4, v2

    .line 2
    invoke-direct/range {p1 .. p6}, Lcom/truecaller/incallui/utils/WatchDogConfig;-><init>(ZIJZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/incallui/utils/WatchDogConfig;ZIJZILjava/lang/Object;)Lcom/truecaller/incallui/utils/WatchDogConfig;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-boolean p1, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->enabled:Z

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget p2, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->maxFailureCount:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-wide p3, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->disableAfterFailureDuration:J

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p5, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->listenMultiSimDevices:Z

    :cond_3
    move v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move-wide p5, v0

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/truecaller/incallui/utils/WatchDogConfig;->copy(ZIJZ)Lcom/truecaller/incallui/utils/WatchDogConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->enabled:Z

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->maxFailureCount:I

    return v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->disableAfterFailureDuration:J

    return-wide v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->listenMultiSimDevices:Z

    return v0
.end method

.method public final copy(ZIJZ)Lcom/truecaller/incallui/utils/WatchDogConfig;
    .locals 7

    new-instance v6, Lcom/truecaller/incallui/utils/WatchDogConfig;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/truecaller/incallui/utils/WatchDogConfig;-><init>(ZIJZ)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/incallui/utils/WatchDogConfig;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/incallui/utils/WatchDogConfig;

    iget-boolean v0, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->enabled:Z

    iget-boolean v1, p1, Lcom/truecaller/incallui/utils/WatchDogConfig;->enabled:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->maxFailureCount:I

    iget v1, p1, Lcom/truecaller/incallui/utils/WatchDogConfig;->maxFailureCount:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->disableAfterFailureDuration:J

    iget-wide v2, p1, Lcom/truecaller/incallui/utils/WatchDogConfig;->disableAfterFailureDuration:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->listenMultiSimDevices:Z

    iget-boolean p1, p1, Lcom/truecaller/incallui/utils/WatchDogConfig;->listenMultiSimDevices:Z

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

.method public final getDisableAfterFailureDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->disableAfterFailureDuration:J

    return-wide v0
.end method

.method public final getEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->enabled:Z

    return v0
.end method

.method public final getListenMultiSimDevices()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->listenMultiSimDevices:Z

    return v0
.end method

.method public final getMaxFailureCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->maxFailureCount:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->enabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->maxFailureCount:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->disableAfterFailureDuration:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->listenMultiSimDevices:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "WatchDogConfig(enabled="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", maxFailureCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->maxFailureCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", disableAfterFailureDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->disableAfterFailureDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", listenMultiSimDevices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/incallui/utils/WatchDogConfig;->listenMultiSimDevices:Z

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->o(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
