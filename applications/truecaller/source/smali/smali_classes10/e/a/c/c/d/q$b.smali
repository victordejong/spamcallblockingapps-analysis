.class public Le/a/c/c/d/q$b;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/q;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/c/d/q;


# direct methods
.method public constructor <init>(Le/a/c/c/d/q;Ln3/c0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/q$b;->a:Le/a/c/c/d/q;

    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p2}, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p2}, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->getFromCategory()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p2}, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->getFromCategory()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 8
    :goto_1
    invoke-virtual {p2}, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->getToCategory()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 10
    :cond_2
    invoke-virtual {p2}, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->getToCategory()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_2
    const/4 v0, 0x4

    .line 11
    invoke-virtual {p2}, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->getReTrainModelVersion()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    const/4 v0, 0x5

    .line 12
    invoke-virtual {p2}, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->getId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    .line 13
    iget-object v0, p0, Le/a/c/c/d/q$b;->a:Le/a/c/c/d/q;

    .line 14
    iget-object v0, v0, Le/a/c/c/d/q;->d:Le/a/c/c0/g;

    .line 15
    invoke-virtual {p2}, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->getCreatedAt()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {v0, p2}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p2

    const/4 v0, 0x6

    if-nez p2, :cond_3

    .line 16
    invoke-interface {p1, v0}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 17
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    :goto_3
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `reclassified_message` (`message_body`,`from_category`,`to_category`,`model_version`,`id`,`created_at`) VALUES (?,?,?,?,nullif(?, 0),?)"

    return-object v0
.end method
