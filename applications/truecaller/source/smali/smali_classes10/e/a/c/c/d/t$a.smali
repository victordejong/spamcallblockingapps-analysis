.class public Le/a/c/c/d/t$a;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/t;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/c/d/t;


# direct methods
.method public constructor <init>(Le/a/c/c/d/t;Ln3/c0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/t$a;->a:Le/a/c/c/d/t;

    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->getParentId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->getChildId()J

    move-result-wide v0

    const/4 v2, 0x2

    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 4
    invoke-virtual {p2}, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->getLinkType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->getLinkType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 7
    :goto_0
    iget-object v0, p0, Le/a/c/c/d/t$a;->a:Le/a/c/c/d/t;

    .line 8
    iget-object v0, v0, Le/a/c/c/d/t;->b:Le/a/c/c0/g;

    .line 9
    invoke-virtual {p2}, Lcom/truecaller/insights/models/enrichment/linking/LinkPruneMap;->getCreatedAt()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {v0, p2}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p2

    const/4 v0, 0x4

    if-nez p2, :cond_1

    .line 10
    invoke-interface {p1, v0}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    :goto_1
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `link_prune_table` (`parent_id`,`child_id`,`link_type`,`created_at`) VALUES (?,?,?,?)"

    return-object v0
.end method
