.class public final Lcom/truecaller/insights/models/smartcards/ActionStateEntity;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0008\u0087\u0008\u0018\u00002\u00020\u0001BQ\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0006\u0012\u0006\u0010\u0015\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0006\u00a2\u0006\u0004\u0008.\u0010/J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0010\u0010\n\u001a\u00020\tH\u00c6\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\u0008J\u0010\u0010\u000e\u001a\u00020\rH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\rH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0006H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0008J`\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0015\u001a\u00020\t2\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0017\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\r2\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0006H\u00c6\u0001\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u0006H\u00d6\u0001\u00a2\u0006\u0004\u0008\u001c\u0010\u0008J\u0010\u0010\u001d\u001a\u00020\tH\u00d6\u0001\u00a2\u0006\u0004\u0008\u001d\u0010\u000bJ\u001a\u0010 \u001a\u00020\u001f2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008 \u0010!R\u001c\u0010\u0016\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\"\u001a\u0004\u0008#\u0010\u0008R\u001c\u0010\u0013\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010$\u001a\u0004\u0008%\u0010\u0004R\u001c\u0010\u0017\u001a\u00020\r8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010&\u001a\u0004\u0008\'\u0010\u000fR\u001c\u0010\u0012\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010$\u001a\u0004\u0008(\u0010\u0004R\u001c\u0010\u0019\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\"\u001a\u0004\u0008)\u0010\u0008R\u001c\u0010\u0014\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\"\u001a\u0004\u0008*\u0010\u0008R\u001c\u0010\u0018\u001a\u00020\r8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010&\u001a\u0004\u0008+\u0010\u000fR\u001c\u0010\u0015\u001a\u00020\t8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010,\u001a\u0004\u0008-\u0010\u000b\u00a8\u00060"
    }
    d2 = {
        "Lcom/truecaller/insights/models/smartcards/ActionStateEntity;",
        "",
        "",
        "component1",
        "()J",
        "component2",
        "",
        "component3",
        "()Ljava/lang/String;",
        "",
        "component4",
        "()I",
        "component5",
        "Ljava/util/Date;",
        "component6",
        "()Ljava/util/Date;",
        "component7",
        "component8",
        "id",
        "entityId",
        "domain",
        "state",
        "origin",
        "createdAt",
        "updatesAt",
        "extra",
        "copy",
        "(JJLjava/lang/String;ILjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lcom/truecaller/insights/models/smartcards/ActionStateEntity;",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getOrigin",
        "J",
        "getEntityId",
        "Ljava/util/Date;",
        "getCreatedAt",
        "getId",
        "getExtra",
        "getDomain",
        "getUpdatesAt",
        "I",
        "getState",
        "<init>",
        "(JJLjava/lang/String;ILjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V",
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
.field private final createdAt:Ljava/util/Date;

.field private final domain:Ljava/lang/String;

.field private final entityId:J

.field private final extra:Ljava/lang/String;

.field private final id:J

.field private final origin:Ljava/lang/String;

.field private final state:I

.field private final updatesAt:Ljava/util/Date;


# direct methods
.method public constructor <init>(JJLjava/lang/String;ILjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V
    .locals 1

    const-string v0, "domain"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesAt"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->id:J

    iput-wide p3, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->entityId:J

    iput-object p5, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->domain:Ljava/lang/String;

    iput p6, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->state:I

    iput-object p7, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->origin:Ljava/lang/String;

    iput-object p8, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->createdAt:Ljava/util/Date;

    iput-object p9, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->updatesAt:Ljava/util/Date;

    iput-object p10, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->extra:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JJLjava/lang/String;ILjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;ILs1/z/c/f;)V
    .locals 14

    move/from16 v0, p11

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x0

    move-wide v4, v1

    goto :goto_0

    :cond_0
    move-wide v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    .line 2
    sget-object v1, Lcom/truecaller/insights/models/DomainOrigin;->SMS:Lcom/truecaller/insights/models/DomainOrigin;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object/from16 v10, p7

    :goto_1
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_2

    .line 3
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    move-object v11, v1

    goto :goto_2

    :cond_2
    move-object/from16 v11, p8

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    .line 4
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    move-object v12, v1

    goto :goto_3

    :cond_3
    move-object/from16 v12, p9

    :goto_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    const-string v0, ""

    move-object v13, v0

    goto :goto_4

    :cond_4
    move-object/from16 v13, p10

    :goto_4
    move-object v3, p0

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    .line 5
    invoke-direct/range {v3 .. v13}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;-><init>(JJLjava/lang/String;ILjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/insights/models/smartcards/ActionStateEntity;JJLjava/lang/String;ILjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;)Lcom/truecaller/insights/models/smartcards/ActionStateEntity;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->id:J

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->entityId:J

    goto :goto_1

    :cond_1
    move-wide v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->domain:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v6, p5

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    iget v7, v0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->state:I

    goto :goto_3

    :cond_3
    move/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->origin:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->createdAt:Ljava/util/Date;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->updatesAt:Ljava/util/Date;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->extra:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v1, p10

    :goto_7
    move-wide p1, v2

    move-wide p3, v4

    move-object/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->copy(JJLjava/lang/String;ILjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lcom/truecaller/insights/models/smartcards/ActionStateEntity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->id:J

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->entityId:J

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->state:I

    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public final component7()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->updatesAt:Ljava/util/Date;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(JJLjava/lang/String;ILjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)Lcom/truecaller/insights/models/smartcards/ActionStateEntity;
    .locals 12

    const-string v0, "domain"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "origin"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updatesAt"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extra"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;

    move-object v1, v0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v7, p6

    invoke-direct/range {v1 .. v11}, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;-><init>(JJLjava/lang/String;ILjava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;

    iget-wide v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->id:J

    iget-wide v2, p1, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->entityId:J

    iget-wide v2, p1, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->entityId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->domain:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->domain:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->state:I

    iget v1, p1, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->state:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->origin:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->origin:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->createdAt:Ljava/util/Date;

    iget-object v1, p1, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->createdAt:Ljava/util/Date;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->updatesAt:Ljava/util/Date;

    iget-object v1, p1, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->updatesAt:Ljava/util/Date;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->extra:Ljava/lang/String;

    iget-object p1, p1, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->extra:Ljava/lang/String;

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

.method public final getCreatedAt()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public final getDomain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public final getEntityId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->entityId:J

    return-wide v0
.end method

.method public final getExtra()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->id:J

    return-wide v0
.end method

.method public final getOrigin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->origin:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->state:I

    return v0
.end method

.method public final getUpdatesAt()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->updatesAt:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-wide v0, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->id:J

    invoke-static {v0, v1}, Ld;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->entityId:J

    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->domain:Ljava/lang/String;

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

    iget v1, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->state:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->origin:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->createdAt:Ljava/util/Date;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->updatesAt:Ljava/util/Date;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->extra:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_4
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ActionStateEntity(id="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", entityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->entityId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", origin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->origin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", updatesAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->updatesAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", extra="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/smartcards/ActionStateEntity;->extra:Ljava/lang/String;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
