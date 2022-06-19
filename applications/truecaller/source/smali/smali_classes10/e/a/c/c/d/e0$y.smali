.class public Le/a/c/c/d/e0$y;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/e0;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Lcom/truecaller/insights/models/pdo/SmsBackup;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/c/d/e0;


# direct methods
.method public constructor <init>(Le/a/c/c/d/e0;Ln3/c0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/e0$y;->a:Le/a/c/c/d/e0;

    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lcom/truecaller/insights/models/pdo/SmsBackup;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getMessageID()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 4
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 7
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 9
    :goto_1
    iget-object v0, p0, Le/a/c/c/d/e0$y;->a:Le/a/c/c/d/e0;

    .line 10
    iget-object v0, v0, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    .line 11
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 12
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 14
    :goto_2
    iget-object v0, p0, Le/a/c/c/d/e0$y;->a:Le/a/c/c/d/e0;

    .line 15
    iget-object v0, v0, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    .line 16
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getTransport()Lcom/truecaller/insights/commons/model/Transport;

    move-result-object v1

    .line 17
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transport"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Lcom/truecaller/insights/commons/model/Transport;->getValue()I

    move-result v0

    const/4 v1, 0x5

    int-to-long v2, v0

    .line 19
    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 20
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getParseFailed()Z

    move-result v0

    const/4 v1, 0x6

    int-to-long v2, v0

    .line 21
    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 22
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_3

    .line 23
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 24
    :cond_3
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_3
    const/16 v0, 0x8

    .line 25
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getRetryCount()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    .line 26
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getDeleted()Z

    move-result v0

    const/16 v1, 0x9

    int-to-long v2, v0

    .line 27
    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 28
    iget-object v0, p0, Le/a/c/c/d/e0$y;->a:Le/a/c/c/d/e0;

    .line 29
    iget-object v0, v0, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    .line 30
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_4

    .line 31
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_4

    .line 32
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 33
    :goto_4
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getUpdateCategory()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_5

    .line 34
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_5

    .line 35
    :cond_5
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getUpdateCategory()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 36
    :goto_5
    iget-object v0, p0, Le/a/c/c/d/e0$y;->a:Le/a/c/c/d/e0;

    .line 37
    iget-object v0, v0, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    .line 38
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getClassifiedBy()Lcom/truecaller/insights/models/pdo/ClassifierType;

    move-result-object v1

    .line 39
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "classifierType"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1}, Lcom/truecaller/insights/models/pdo/ClassifierType;->getValue()I

    move-result v0

    const/16 v1, 0xc

    int-to-long v2, v0

    .line 41
    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    const/16 v0, 0xd

    .line 42
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getConversationId()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    const/16 v0, 0xe

    .line 43
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getSpamCategory()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    const/16 v0, 0xf

    .line 44
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getConfidenceScore()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->T0(ID)V

    const/16 v0, 0x10

    .line 45
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/SmsBackup;->getNoOfWords()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `sms_backup_table` (`messageID`,`address`,`message`,`date`,`transport`,`parseFailed`,`errorMessage`,`retryCount`,`deleted`,`created_at`,`updateCategory`,`classified_by`,`conversationId`,`spam_category`,`confidence_score`,`no_of_words`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
