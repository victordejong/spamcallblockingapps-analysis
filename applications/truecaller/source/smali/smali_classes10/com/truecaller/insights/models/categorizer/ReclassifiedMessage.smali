.class public final Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;
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
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0011\u0008\u0087\u0008\u0018\u00002\u00020\u0001B=\u0012\u0006\u0010\u0010\u001a\u00020\u0002\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0006\u0010\u0012\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\r\u00a2\u0006\u0004\u0008*\u0010+J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0010\u0010\u0008\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJL\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0014\u001a\u00020\n2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\rH\u00c6\u0001\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0018\u0010\u0004J\u0010\u0010\u0019\u001a\u00020\u0007H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0019\u0010\tJ\u001a\u0010\u001c\u001a\u00020\u001b2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u001c\u0010\u0010\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u001e\u001a\u0004\u0008\u001f\u0010\u0004R\u001c\u0010\u0011\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u001e\u001a\u0004\u0008 \u0010\u0004R\u001c\u0010\u0012\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u001e\u001a\u0004\u0008!\u0010\u0004R\u001c\u0010\u0014\u001a\u00020\n8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\"\u001a\u0004\u0008#\u0010\u000cR\u001c\u0010\u0013\u001a\u00020\u00078\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010$\u001a\u0004\u0008%\u0010\tR\"\u0010\u0015\u001a\u00020\r8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0015\u0010&\u001a\u0004\u0008\'\u0010\u000f\"\u0004\u0008(\u0010)\u00a8\u0006,"
    }
    d2 = {
        "Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;",
        "",
        "",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "component3",
        "",
        "component4",
        "()I",
        "",
        "component5",
        "()J",
        "Ljava/util/Date;",
        "component6",
        "()Ljava/util/Date;",
        "messageBody",
        "fromCategory",
        "toCategory",
        "reTrainModelVersion",
        "id",
        "createdAt",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Date;)Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;",
        "toString",
        "hashCode",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "Ljava/lang/String;",
        "getMessageBody",
        "getFromCategory",
        "getToCategory",
        "J",
        "getId",
        "I",
        "getReTrainModelVersion",
        "Ljava/util/Date;",
        "getCreatedAt",
        "setCreatedAt",
        "(Ljava/util/Date;)V",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Date;)V",
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
.field private createdAt:Ljava/util/Date;

.field private final fromCategory:Ljava/lang/String;

.field private final id:J

.field private final messageBody:Ljava/lang/String;

.field private final reTrainModelVersion:I

.field private final toCategory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Date;)V
    .locals 1

    const-string v0, "messageBody"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromCategory"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toCategory"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->messageBody:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->fromCategory:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->toCategory:Ljava/lang/String;

    iput p4, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->reTrainModelVersion:I

    iput-wide p5, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->id:J

    iput-object p7, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->createdAt:Ljava/util/Date;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Date;ILs1/z/c/f;)V
    .locals 9

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    move-wide v6, v0

    goto :goto_1

    :cond_1
    move-wide v6, p5

    :goto_1
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    move-object v8, v0

    goto :goto_2

    :cond_2
    move-object/from16 v8, p7

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Date;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Date;ILjava/lang/Object;)Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget-object p1, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->messageBody:Ljava/lang/String;

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->fromCategory:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->toCategory:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->reTrainModelVersion:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-wide p5, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->id:J

    :cond_4
    move-wide v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p7, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->createdAt:Ljava/util/Date;

    :cond_5
    move-object v4, p7

    move-object p2, p0

    move-object p3, p1

    move-object p4, p9

    move-object p5, v0

    move p6, v1

    move-wide p7, v2

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Date;)Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->messageBody:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->fromCategory:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->toCategory:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->reTrainModelVersion:I

    return v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->id:J

    return-wide v0
.end method

.method public final component6()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Date;)Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;
    .locals 9

    const-string v0, "messageBody"

    move-object v2, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromCategory"

    move-object v3, p2

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toCategory"

    move-object v4, p3

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "createdAt"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;

    move-object v1, v0

    move v5, p4

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJLjava/util/Date;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;

    iget-object v0, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->messageBody:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->messageBody:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->fromCategory:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->fromCategory:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->toCategory:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->toCategory:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->reTrainModelVersion:I

    iget v1, p1, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->reTrainModelVersion:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->id:J

    iget-wide v2, p1, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->createdAt:Ljava/util/Date;

    iget-object p1, p1, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->createdAt:Ljava/util/Date;

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
    iget-object v0, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public final getFromCategory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->fromCategory:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->id:J

    return-wide v0
.end method

.method public final getMessageBody()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->messageBody:Ljava/lang/String;

    return-object v0
.end method

.method public final getReTrainModelVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->reTrainModelVersion:I

    return v0
.end method

.method public final getToCategory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->toCategory:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->messageBody:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->fromCategory:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->toCategory:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->reTrainModelVersion:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->id:J

    invoke-static {v2, v3}, Ld;->a(J)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->createdAt:Ljava/util/Date;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public final setCreatedAt(Ljava/util/Date;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->createdAt:Ljava/util/Date;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ReclassifiedMessage(messageBody="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->messageBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fromCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->fromCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", toCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->toCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reTrainModelVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->reTrainModelVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", createdAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/categorizer/ReclassifiedMessage;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
