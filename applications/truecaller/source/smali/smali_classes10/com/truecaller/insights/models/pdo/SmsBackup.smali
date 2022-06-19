.class public Lcom/truecaller/insights/models/pdo/SmsBackup;
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
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u000f\n\u0002\u0010\u0007\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0003\u0008\u0017\u0018\u00002\u00020\u0001B\t\u0008\u0016\u00a2\u0006\u0004\u0008R\u0010SBC\u0008\u0016\u0012\u0006\u0010U\u001a\u00020T\u0012\u0008\u0010+\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010V\u001a\u00020.\u0012\u0008\u0010F\u001a\u0004\u0018\u00010E\u0012\u0008\u0010O\u001a\u0004\u0018\u00010\u001d\u0012\n\u0008\u0002\u0010X\u001a\u0004\u0018\u00010W\u00a2\u0006\u0004\u0008R\u0010YR\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0011\u001a\u00020\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\"\u0010\u0017\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0004\u001a\u0004\u0008\u0018\u0010\u0006\"\u0004\u0008\u0019\u0010\u0008R\"\u0010\u001a\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u000b\u001a\u0004\u0008\u001b\u0010\r\"\u0004\u0008\u001c\u0010\u000fR\"\u0010\u001e\u001a\u00020\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R\"\u0010%\u001a\u00020$8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010&\u001a\u0004\u0008\'\u0010(\"\u0004\u0008)\u0010*R$\u0010+\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010\u000b\u001a\u0004\u0008,\u0010\r\"\u0004\u0008-\u0010\u000fR\"\u0010/\u001a\u00020.8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008/\u00100\u001a\u0004\u00081\u00102\"\u0004\u00083\u00104R\"\u00106\u001a\u0002058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00086\u00107\u001a\u0004\u00088\u00109\"\u0004\u0008:\u0010;R\"\u0010<\u001a\u00020$8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008<\u0010&\u001a\u0004\u0008=\u0010(\"\u0004\u0008>\u0010*R\"\u0010?\u001a\u00020\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008?\u0010\u001f\u001a\u0004\u0008@\u0010!\"\u0004\u0008A\u0010#R\"\u0010B\u001a\u0002058\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008B\u00107\u001a\u0004\u0008C\u00109\"\u0004\u0008D\u0010;R\"\u0010F\u001a\u00020E8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008F\u0010G\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010KR\"\u0010L\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008L\u0010\u000b\u001a\u0004\u0008M\u0010\r\"\u0004\u0008N\u0010\u000fR\"\u0010O\u001a\u00020\u001d8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008O\u0010\u001f\u001a\u0004\u0008P\u0010!\"\u0004\u0008Q\u0010#\u00a8\u0006Z"
    }
    d2 = {
        "Lcom/truecaller/insights/models/pdo/SmsBackup;",
        "",
        "",
        "deleted",
        "Z",
        "getDeleted",
        "()Z",
        "setDeleted",
        "(Z)V",
        "",
        "message",
        "Ljava/lang/String;",
        "getMessage",
        "()Ljava/lang/String;",
        "setMessage",
        "(Ljava/lang/String;)V",
        "Lcom/truecaller/insights/commons/model/Transport;",
        "transport",
        "Lcom/truecaller/insights/commons/model/Transport;",
        "getTransport",
        "()Lcom/truecaller/insights/commons/model/Transport;",
        "setTransport",
        "(Lcom/truecaller/insights/commons/model/Transport;)V",
        "parseFailed",
        "getParseFailed",
        "setParseFailed",
        "errorMessage",
        "getErrorMessage",
        "setErrorMessage",
        "",
        "retryCount",
        "I",
        "getRetryCount",
        "()I",
        "setRetryCount",
        "(I)V",
        "Ljava/util/Date;",
        "createdAt",
        "Ljava/util/Date;",
        "getCreatedAt",
        "()Ljava/util/Date;",
        "setCreatedAt",
        "(Ljava/util/Date;)V",
        "updateCategory",
        "getUpdateCategory",
        "setUpdateCategory",
        "Lcom/truecaller/insights/models/pdo/ClassifierType;",
        "classifiedBy",
        "Lcom/truecaller/insights/models/pdo/ClassifierType;",
        "getClassifiedBy",
        "()Lcom/truecaller/insights/models/pdo/ClassifierType;",
        "setClassifiedBy",
        "(Lcom/truecaller/insights/models/pdo/ClassifierType;)V",
        "",
        "conversationId",
        "J",
        "getConversationId",
        "()J",
        "setConversationId",
        "(J)V",
        "date",
        "getDate",
        "setDate",
        "spamCategory",
        "getSpamCategory",
        "setSpamCategory",
        "messageID",
        "getMessageID",
        "setMessageID",
        "",
        "confidenceScore",
        "F",
        "getConfidenceScore",
        "()F",
        "setConfidenceScore",
        "(F)V",
        "address",
        "getAddress",
        "setAddress",
        "noOfWords",
        "getNoOfWords",
        "setNoOfWords",
        "<init>",
        "()V",
        "Le/a/c/h/m/c;",
        "smsMessage",
        "classifierType",
        "",
        "error",
        "(Le/a/c/h/m/c;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Throwable;)V",
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
.field private address:Ljava/lang/String;

.field private classifiedBy:Lcom/truecaller/insights/models/pdo/ClassifierType;

.field private confidenceScore:F

.field private conversationId:J

.field private createdAt:Ljava/util/Date;

.field private date:Ljava/util/Date;

.field private deleted:Z

.field private errorMessage:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private messageID:J

.field private noOfWords:I

.field private parseFailed:Z

.field private retryCount:I

.field private spamCategory:I

.field private transport:Lcom/truecaller/insights/commons/model/Transport;

.field private updateCategory:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->messageID:J

    const-string v2, ""

    .line 3
    iput-object v2, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->address:Ljava/lang/String;

    .line 4
    iput-object v2, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->message:Ljava/lang/String;

    .line 5
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->date:Ljava/util/Date;

    .line 6
    sget-object v3, Lcom/truecaller/insights/commons/model/Transport;->SMS:Lcom/truecaller/insights/commons/model/Transport;

    iput-object v3, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->transport:Lcom/truecaller/insights/commons/model/Transport;

    .line 7
    iput-object v2, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->errorMessage:Ljava/lang/String;

    .line 8
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->createdAt:Ljava/util/Date;

    .line 9
    sget-object v2, Lcom/truecaller/insights/models/pdo/ClassifierType;->DEFAULT:Lcom/truecaller/insights/models/pdo/ClassifierType;

    iput-object v2, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->classifiedBy:Lcom/truecaller/insights/models/pdo/ClassifierType;

    .line 10
    iput-wide v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->conversationId:J

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->spamCategory:I

    return-void
.end method

.method public constructor <init>(Le/a/c/h/m/c;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Throwable;)V
    .locals 4

    const-string v0, "smsMessage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classifierType"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 14
    iput-wide v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->messageID:J

    const-string v2, ""

    .line 15
    iput-object v2, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->address:Ljava/lang/String;

    .line 16
    iput-object v2, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->message:Ljava/lang/String;

    .line 17
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    iput-object v3, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->date:Ljava/util/Date;

    .line 18
    sget-object v3, Lcom/truecaller/insights/commons/model/Transport;->SMS:Lcom/truecaller/insights/commons/model/Transport;

    iput-object v3, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->transport:Lcom/truecaller/insights/commons/model/Transport;

    .line 19
    iput-object v2, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->errorMessage:Ljava/lang/String;

    .line 20
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    iput-object v2, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->createdAt:Ljava/util/Date;

    .line 21
    sget-object v2, Lcom/truecaller/insights/models/pdo/ClassifierType;->DEFAULT:Lcom/truecaller/insights/models/pdo/ClassifierType;

    iput-object v2, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->classifiedBy:Lcom/truecaller/insights/models/pdo/ClassifierType;

    .line 22
    iput-wide v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->conversationId:J

    const/4 v0, 0x1

    .line 23
    iput v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->spamCategory:I

    .line 24
    iget-wide v1, p1, Le/a/c/h/m/c;->a:J

    .line 25
    iput-wide v1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->messageID:J

    .line 26
    iget-object v1, p1, Le/a/c/h/m/c;->b:Ljava/lang/String;

    .line 27
    iput-object v1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->address:Ljava/lang/String;

    .line 28
    iget-object v1, p1, Le/a/c/h/m/c;->c:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->message:Ljava/lang/String;

    .line 30
    iget-object v1, p1, Le/a/c/h/m/c;->d:Ljava/util/Date;

    .line 31
    iput-object v1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->date:Ljava/util/Date;

    .line 32
    sget-object v1, Lcom/truecaller/insights/commons/model/Transport;->Companion:Lcom/truecaller/insights/commons/model/Transport$a;

    .line 33
    iget v2, p1, Le/a/c/h/m/c;->f:I

    .line 34
    invoke-virtual {v1, v2}, Lcom/truecaller/insights/commons/model/Transport$a;->a(I)Lcom/truecaller/insights/commons/model/Transport;

    move-result-object v1

    iput-object v1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->transport:Lcom/truecaller/insights/commons/model/Transport;

    .line 35
    iput-object p2, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->updateCategory:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->classifiedBy:Lcom/truecaller/insights/models/pdo/ClassifierType;

    .line 37
    iget-wide p2, p1, Le/a/c/h/m/c;->e:J

    .line 38
    iput-wide p2, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->conversationId:J

    if-eqz p6, :cond_1

    .line 39
    iput-boolean v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->parseFailed:Z

    .line 40
    invoke-virtual {p6}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "Null error message"

    :goto_0
    iput-object p2, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->errorMessage:Ljava/lang/String;

    .line 41
    :cond_1
    iget p1, p1, Le/a/c/h/m/c;->h:I

    .line 42
    iput p1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->spamCategory:I

    if-eqz p4, :cond_3

    .line 43
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 44
    :cond_2
    invoke-virtual {p4}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 45
    :goto_2
    iput p1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->confidenceScore:F

    if-eqz p5, :cond_4

    .line 46
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_4
    const/4 p1, 0x0

    :goto_3
    iput p1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->noOfWords:I

    return-void
.end method

.method public synthetic constructor <init>(Le/a/c/h/m/c;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Throwable;ILs1/z/c/f;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    :cond_0
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/truecaller/insights/models/pdo/SmsBackup;-><init>(Le/a/c/h/m/c;Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getClassifiedBy()Lcom/truecaller/insights/models/pdo/ClassifierType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->classifiedBy:Lcom/truecaller/insights/models/pdo/ClassifierType;

    return-object v0
.end method

.method public final getConfidenceScore()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->confidenceScore:F

    return v0
.end method

.method public final getConversationId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->conversationId:J

    return-wide v0
.end method

.method public final getCreatedAt()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public final getDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->date:Ljava/util/Date;

    return-object v0
.end method

.method public final getDeleted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->deleted:Z

    return v0
.end method

.method public final getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->errorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessageID()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->messageID:J

    return-wide v0
.end method

.method public final getNoOfWords()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->noOfWords:I

    return v0
.end method

.method public final getParseFailed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->parseFailed:Z

    return v0
.end method

.method public final getRetryCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->retryCount:I

    return v0
.end method

.method public final getSpamCategory()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->spamCategory:I

    return v0
.end method

.method public final getTransport()Lcom/truecaller/insights/commons/model/Transport;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->transport:Lcom/truecaller/insights/commons/model/Transport;

    return-object v0
.end method

.method public final getUpdateCategory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->updateCategory:Ljava/lang/String;

    return-object v0
.end method

.method public final setAddress(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->address:Ljava/lang/String;

    return-void
.end method

.method public final setClassifiedBy(Lcom/truecaller/insights/models/pdo/ClassifierType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->classifiedBy:Lcom/truecaller/insights/models/pdo/ClassifierType;

    return-void
.end method

.method public final setConfidenceScore(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->confidenceScore:F

    return-void
.end method

.method public final setConversationId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->conversationId:J

    return-void
.end method

.method public final setCreatedAt(Ljava/util/Date;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->createdAt:Ljava/util/Date;

    return-void
.end method

.method public final setDate(Ljava/util/Date;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->date:Ljava/util/Date;

    return-void
.end method

.method public final setDeleted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->deleted:Z

    return-void
.end method

.method public final setErrorMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->errorMessage:Ljava/lang/String;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->message:Ljava/lang/String;

    return-void
.end method

.method public final setMessageID(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->messageID:J

    return-void
.end method

.method public final setNoOfWords(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->noOfWords:I

    return-void
.end method

.method public final setParseFailed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->parseFailed:Z

    return-void
.end method

.method public final setRetryCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->retryCount:I

    return-void
.end method

.method public final setSpamCategory(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->spamCategory:I

    return-void
.end method

.method public final setTransport(Lcom/truecaller/insights/commons/model/Transport;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->transport:Lcom/truecaller/insights/commons/model/Transport;

    return-void
.end method

.method public final setUpdateCategory(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/SmsBackup;->updateCategory:Ljava/lang/String;

    return-void
.end method
