.class public final Lcom/truecaller/insights/models/pdo/ExtendedPdo;
.super Lcom/truecaller/insights/models/pdo/ParsedDataObject;
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
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u001f\u0008\u0087\u0008\u0018\u00002\u00020\u0001BO\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u001c\u001a\u00020\r\u0012\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u0010\u0012\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0008\u0003\u0010\u001f\u001a\u00020\u0014\u0012\u0008\u0008\u0002\u0010 \u001a\u00020\u0017\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u0007\u00a2\u0006\u0004\u00084\u00105J\u001a\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0096\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0010\u0010\u000e\u001a\u00020\rH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0012\u0010\u0013\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0012J\u0010\u0010\u0015\u001a\u00020\u0014H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0010\u0010\u0018\u001a\u00020\u0017H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\u0007H\u00c6\u0003\u00a2\u0006\u0004\u0008\u001a\u0010\tJX\u0010\"\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u001b\u001a\u00020\n2\u0008\u0008\u0002\u0010\u001c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00102\n\u0008\u0002\u0010\u001e\u001a\u0004\u0018\u00010\u00102\u0008\u0008\u0003\u0010\u001f\u001a\u00020\u00142\u0008\u0008\u0002\u0010 \u001a\u00020\u00172\u0008\u0008\u0002\u0010!\u001a\u00020\u0007H\u00c6\u0001\u00a2\u0006\u0004\u0008\"\u0010#J\u0010\u0010$\u001a\u00020\u0010H\u00d6\u0001\u00a2\u0006\u0004\u0008$\u0010\u0012R\u0013\u0010%\u001a\u00020\u00048F@\u0006\u00a2\u0006\u0006\u001a\u0004\u0008%\u0010&R\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u00108\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\'\u001a\u0004\u0008(\u0010\u0012R\u001c\u0010 \u001a\u00020\u00178\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008 \u0010)\u001a\u0004\u0008*\u0010\u0019R\u001c\u0010\u001c\u001a\u00020\r8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010+\u001a\u0004\u0008,\u0010\u000fR\u001c\u0010\u001f\u001a\u00020\u00148\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010-\u001a\u0004\u0008.\u0010\u0016R\u001c\u0010\u001d\u001a\u00020\u00108\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\'\u001a\u0004\u0008/\u0010\u0012R\u001c\u0010\u001b\u001a\u00020\n8\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001b\u00100\u001a\u0004\u00081\u0010\u000cR\u001c\u0010!\u001a\u00020\u00078\u0006@\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008!\u00102\u001a\u0004\u00083\u0010\t\u00a8\u00066"
    }
    d2 = {
        "Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
        "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
        "",
        "other",
        "",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "",
        "component1",
        "()J",
        "Lcom/truecaller/insights/commons/model/Transport;",
        "component2",
        "()Lcom/truecaller/insights/commons/model/Transport;",
        "",
        "component3",
        "()Ljava/lang/String;",
        "component4",
        "Lcom/truecaller/insights/models/pdo/ClassifierType;",
        "component5",
        "()Lcom/truecaller/insights/models/pdo/ClassifierType;",
        "",
        "component6",
        "()F",
        "component7",
        "conversationId",
        "transport",
        "message",
        "updateCategory",
        "classifiedBy",
        "confidenceScore",
        "noOfWords",
        "copy",
        "(JLcom/truecaller/insights/commons/model/Transport;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;FI)Lcom/truecaller/insights/models/pdo/ExtendedPdo;",
        "toString",
        "isIM",
        "()Z",
        "Ljava/lang/String;",
        "getUpdateCategory",
        "F",
        "getConfidenceScore",
        "Lcom/truecaller/insights/commons/model/Transport;",
        "getTransport",
        "Lcom/truecaller/insights/models/pdo/ClassifierType;",
        "getClassifiedBy",
        "getMessage",
        "J",
        "getConversationId",
        "I",
        "getNoOfWords",
        "<init>",
        "(JLcom/truecaller/insights/commons/model/Transport;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;FI)V",
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
.field private final classifiedBy:Lcom/truecaller/insights/models/pdo/ClassifierType;

.field private final confidenceScore:F
    .annotation runtime Le/m/e/d0/b;
        value = "confidence_score"
    .end annotation
.end field

.field private final conversationId:J
    .annotation runtime Le/m/e/d0/b;
        value = "conversationId"
    .end annotation
.end field

.field private final message:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "message"
    .end annotation
.end field

.field private final noOfWords:I
    .annotation runtime Le/m/e/d0/b;
        value = "no_of_words"
    .end annotation
.end field

.field private final transport:Lcom/truecaller/insights/commons/model/Transport;
    .annotation runtime Le/m/e/d0/b;
        value = "transport"
    .end annotation
.end field

.field private final updateCategory:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "updateCategory"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 11

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x7f

    const/4 v10, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;-><init>(JLcom/truecaller/insights/commons/model/Transport;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;FIILs1/z/c/f;)V

    return-void
.end method

.method public constructor <init>(JLcom/truecaller/insights/commons/model/Transport;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;FI)V
    .locals 1

    const-string v0, "transport"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classifiedBy"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;-><init>()V

    iput-wide p1, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->conversationId:J

    iput-object p3, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->transport:Lcom/truecaller/insights/commons/model/Transport;

    iput-object p4, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->message:Ljava/lang/String;

    iput-object p5, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->updateCategory:Ljava/lang/String;

    iput-object p6, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->classifiedBy:Lcom/truecaller/insights/models/pdo/ClassifierType;

    iput p7, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->confidenceScore:F

    iput p8, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->noOfWords:I

    return-void
.end method

.method public synthetic constructor <init>(JLcom/truecaller/insights/commons/model/Transport;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;FIILs1/z/c/f;)V
    .locals 8

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    .line 1
    sget-object v2, Lcom/truecaller/insights/commons/model/Transport;->SMS:Lcom/truecaller/insights/commons/model/Transport;

    goto :goto_1

    :cond_1
    move-object v2, p3

    :goto_1
    and-int/lit8 v3, p9, 0x4

    if-eqz v3, :cond_2

    const-string v3, ""

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v4, p9, 0x8

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    move-object v4, p5

    :goto_3
    and-int/lit8 v5, p9, 0x10

    if-eqz v5, :cond_4

    .line 2
    sget-object v5, Lcom/truecaller/insights/models/pdo/ClassifierType;->DEFAULT:Lcom/truecaller/insights/models/pdo/ClassifierType;

    goto :goto_4

    :cond_4
    move-object v5, p6

    :goto_4
    and-int/lit8 v6, p9, 0x20

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    goto :goto_5

    :cond_5
    move v6, p7

    :goto_5
    and-int/lit8 v7, p9, 0x40

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    goto :goto_6

    :cond_6
    move/from16 v7, p8

    :goto_6
    move-object p1, p0

    move-wide p2, v0

    move-object p4, v2

    move-object p5, v3

    move-object p6, v4

    move-object p7, v5

    move/from16 p8, v6

    move/from16 p9, v7

    .line 3
    invoke-direct/range {p1 .. p9}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;-><init>(JLcom/truecaller/insights/commons/model/Transport;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;FI)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/insights/models/pdo/ExtendedPdo;JLcom/truecaller/insights/commons/model/Transport;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;FIILjava/lang/Object;)Lcom/truecaller/insights/models/pdo/ExtendedPdo;
    .locals 9

    move-object v0, p0

    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_0

    iget-wide v1, v0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->conversationId:J

    goto :goto_0

    :cond_0
    move-wide v1, p1

    :goto_0
    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->transport:Lcom/truecaller/insights/commons/model/Transport;

    goto :goto_1

    :cond_1
    move-object v3, p3

    :goto_1
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->message:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p4

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->updateCategory:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p5

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->classifiedBy:Lcom/truecaller/insights/models/pdo/ClassifierType;

    goto :goto_4

    :cond_4
    move-object v6, p6

    :goto_4
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->confidenceScore:F

    goto :goto_5

    :cond_5
    move/from16 v7, p7

    :goto_5
    and-int/lit8 v8, p9, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->noOfWords:I

    goto :goto_6

    :cond_6
    move/from16 v8, p8

    :goto_6
    move-wide p1, v1

    move-object p3, v3

    move-object p4, v4

    move-object p5, v5

    move-object p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->copy(JLcom/truecaller/insights/commons/model/Transport;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;FI)Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    iget-wide v0, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->conversationId:J

    return-wide v0
.end method

.method public final component2()Lcom/truecaller/insights/commons/model/Transport;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->transport:Lcom/truecaller/insights/commons/model/Transport;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->updateCategory:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Lcom/truecaller/insights/models/pdo/ClassifierType;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->classifiedBy:Lcom/truecaller/insights/models/pdo/ClassifierType;

    return-object v0
.end method

.method public final component6()F
    .locals 1

    iget v0, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->confidenceScore:F

    return v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->noOfWords:I

    return v0
.end method

.method public final copy(JLcom/truecaller/insights/commons/model/Transport;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;FI)Lcom/truecaller/insights/models/pdo/ExtendedPdo;
    .locals 10

    const-string v0, "transport"

    move-object v4, p3

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    move-object v5, p4

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classifiedBy"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    move-object v1, v0

    move-wide v2, p1

    move-object v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/truecaller/insights/models/pdo/ExtendedPdo;-><init>(JLcom/truecaller/insights/commons/model/Transport;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;FI)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    const-class v1, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "null cannot be cast to non-null type com.truecaller.insights.models.pdo.ExtendedPdo"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;

    .line 3
    iget-wide v2, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->conversationId:J

    iget-wide v4, v0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->conversationId:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    return v1

    .line 4
    :cond_3
    invoke-super {p0, p1}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getClassifiedBy()Lcom/truecaller/insights/models/pdo/ClassifierType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->classifiedBy:Lcom/truecaller/insights/models/pdo/ClassifierType;

    return-object v0
.end method

.method public final getConfidenceScore()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->confidenceScore:F

    return v0
.end method

.method public final getConversationId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->conversationId:J

    return-wide v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getNoOfWords()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->noOfWords:I

    return v0
.end method

.method public final getTransport()Lcom/truecaller/insights/commons/model/Transport;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->transport:Lcom/truecaller/insights/commons/model/Transport;

    return-object v0
.end method

.method public final getUpdateCategory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->updateCategory:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-wide v1, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->conversationId:J

    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->message:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->updateCategory:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->classifiedBy:Lcom/truecaller/insights/models/pdo/ClassifierType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final isIM()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->transport:Lcom/truecaller/insights/commons/model/Transport;

    sget-object v1, Lcom/truecaller/insights/commons/model/Transport;->IM:Lcom/truecaller/insights/commons/model/Transport;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "ExtendedPdo(conversationId="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->conversationId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", transport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->transport:Lcom/truecaller/insights/commons/model/Transport;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updateCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->updateCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", classifiedBy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->classifiedBy:Lcom/truecaller/insights/models/pdo/ClassifierType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", confidenceScore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->confidenceScore:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", noOfWords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/insights/models/pdo/ExtendedPdo;->noOfWords:I

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
