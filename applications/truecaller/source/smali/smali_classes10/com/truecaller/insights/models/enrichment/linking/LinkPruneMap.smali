.class public final Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0007\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u001a\u0010\u001bR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\"\u0010\u0017\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u000b\u001a\u0004\u0008\u0018\u0010\r\"\u0004\u0008\u0019\u0010\u000f\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;",
        "",
        "",
        "linkType",
        "Ljava/lang/String;",
        "getLinkType",
        "()Ljava/lang/String;",
        "setLinkType",
        "(Ljava/lang/String;)V",
        "",
        "parentId",
        "J",
        "getParentId",
        "()J",
        "setParentId",
        "(J)V",
        "Ljava/util/Date;",
        "createdAt",
        "Ljava/util/Date;",
        "getCreatedAt",
        "()Ljava/util/Date;",
        "setCreatedAt",
        "(Ljava/util/Date;)V",
        "childId",
        "getChildId",
        "setChildId",
        "<init>",
        "(JJLjava/lang/String;Ljava/util/Date;)V",
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
.field private childId:J

.field private createdAt:Ljava/util/Date;

.field private linkType:Ljava/lang/String;

.field private parentId:J


# direct methods
.method public constructor <init>()V
    .locals 9

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xf

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;-><init>(JJLjava/lang/String;Ljava/util/Date;ILs1/z/c/f;)V

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/util/Date;)V
    .locals 1

    const-string v0, "linkType"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->parentId:J

    iput-wide p3, p0, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->childId:J

    iput-object p5, p0, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->linkType:Ljava/lang/String;

    iput-object p6, p0, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->createdAt:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(JJLjava/lang/String;Ljava/util/Date;ILs1/z/c/f;)V
    .locals 4

    and-int/lit8 p8, p7, 0x1

    const-wide/16 v0, -0x1

    if-eqz p8, :cond_0

    move-wide v2, v0

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 p1, p7, 0x2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-wide v0, p3

    :goto_1
    and-int/lit8 p1, p7, 0x4

    if-eqz p1, :cond_2

    const-string p5, "NO_LINK"

    :cond_2
    move-object p8, p5

    and-int/lit8 p1, p7, 0x8

    if-eqz p1, :cond_3

    .line 2
    new-instance p6, Ljava/util/Date;

    invoke-direct {p6}, Ljava/util/Date;-><init>()V

    :cond_3
    move-object p7, p6

    move-object p1, p0

    move-wide p2, v2

    move-wide p4, v0

    move-object p6, p8

    invoke-direct/range {p1 .. p7}, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;-><init>(JJLjava/lang/String;Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method public final getChildId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->childId:J

    return-wide v0
.end method

.method public final getCreatedAt()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public final getLinkType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->linkType:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->parentId:J

    return-wide v0
.end method

.method public final setChildId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->childId:J

    return-void
.end method

.method public final setCreatedAt(Ljava/util/Date;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->createdAt:Ljava/util/Date;

    return-void
.end method

.method public final setLinkType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->linkType:Ljava/lang/String;

    return-void
.end method

.method public final setParentId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->parentId:J

    return-void
.end method
