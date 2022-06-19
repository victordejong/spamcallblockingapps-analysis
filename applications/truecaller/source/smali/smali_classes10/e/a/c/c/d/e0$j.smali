.class public Le/a/c/c/d/e0$j;
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
        "Lcom/truecaller/insights/models/pdo/ParsedDataObject;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/c/d/e0;


# direct methods
.method public constructor <init>(Le/a/c/c/d/e0;Ln3/c0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/e0$j;->a:Le/a/c/c/d/e0;

    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMessageID()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 4
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getD()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 6
    :goto_0
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getK()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 7
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getK()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 9
    :goto_1
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getP()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 10
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getP()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 12
    :goto_2
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getC()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 13
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 14
    :cond_3
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getC()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 15
    :goto_3
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getO()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-nez v0, :cond_4

    .line 16
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_4

    .line 17
    :cond_4
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getO()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 18
    :goto_4
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getF()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_5

    .line 19
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_5

    .line 20
    :cond_5
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getF()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 21
    :goto_5
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getG()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 22
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_6

    .line 23
    :cond_6
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getG()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 24
    :goto_6
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getS()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_7

    .line 25
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_7

    .line 26
    :cond_7
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getS()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 27
    :goto_7
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAccountModelId()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0xa

    if-nez v0, :cond_8

    .line 28
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_8

    .line 29
    :cond_8
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAccountModelId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 30
    :goto_8
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal1()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    if-nez v0, :cond_9

    .line 31
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_9

    .line 32
    :cond_9
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal1()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 33
    :goto_9
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal2()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc

    if-nez v0, :cond_a

    .line 34
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_a

    .line 35
    :cond_a
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal2()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 36
    :goto_a
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal3()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    if-nez v0, :cond_b

    .line 37
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_b

    .line 38
    :cond_b
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal3()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 39
    :goto_b
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal4()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xe

    if-nez v0, :cond_c

    .line 40
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_c

    .line 41
    :cond_c
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal4()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 42
    :goto_c
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal5()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    if-nez v0, :cond_d

    .line 43
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_d

    .line 44
    :cond_d
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getVal5()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 45
    :goto_d
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDatetime()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    if-nez v0, :cond_e

    .line 46
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_e

    .line 47
    :cond_e
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDatetime()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 48
    :goto_e
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x11

    if-nez v0, :cond_f

    .line 49
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_f

    .line 50
    :cond_f
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 51
    :goto_f
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDate()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x12

    if-nez v0, :cond_10

    .line 52
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_10

    .line 53
    :cond_10
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 54
    :goto_10
    iget-object v0, p0, Le/a/c/c/d/e0$j;->a:Le/a/c/c/d/e0;

    .line 55
    iget-object v0, v0, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    .line 56
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getMsgDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x13

    if-nez v0, :cond_11

    .line 57
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_11

    .line 58
    :cond_11
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 59
    :goto_11
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal1()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14

    if-nez v0, :cond_12

    .line 60
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_12

    .line 61
    :cond_12
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal1()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 62
    :goto_12
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal2()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x15

    if-nez v0, :cond_13

    .line 63
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_13

    .line 64
    :cond_13
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal2()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 65
    :goto_13
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal3()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x16

    if-nez v0, :cond_14

    .line 66
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_14

    .line 67
    :cond_14
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal3()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 68
    :goto_14
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal4()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x17

    if-nez v0, :cond_15

    .line 69
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_15

    .line 70
    :cond_15
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal4()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 71
    :goto_15
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal5()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x18

    if-nez v0, :cond_16

    .line 72
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_16

    .line 73
    :cond_16
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDffVal5()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 74
    :goto_16
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getActive()Z

    move-result v0

    const/16 v1, 0x19

    int-to-long v2, v0

    .line 75
    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 76
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getState()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1a

    if-nez v0, :cond_17

    .line 77
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_17

    .line 78
    :cond_17
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 79
    :goto_17
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getSyntheticRecordId()Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x1b

    if-nez v0, :cond_18

    .line 80
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_18

    .line 81
    :cond_18
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getSyntheticRecordId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 82
    :goto_18
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getDeleted()Z

    move-result v0

    const/16 v1, 0x1c

    int-to-long v2, v0

    .line 83
    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 84
    iget-object v0, p0, Le/a/c/c/d/e0$j;->a:Le/a/c/c/d/e0;

    .line 85
    iget-object v0, v0, Le/a/c/c/d/e0;->c:Le/a/c/c0/g;

    .line 86
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getCreatedAt()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x1d

    if-nez v0, :cond_19

    .line 87
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_19

    .line 88
    :cond_19
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    :goto_19
    const/16 v0, 0x1e

    .line 89
    invoke-virtual {p2}, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->getSpamCategory()I

    move-result p2

    int-to-long v1, p2

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `parsed_data_object_table` (`messageID`,`d`,`k`,`p`,`c`,`o`,`f`,`g`,`s`,`account_model_id`,`val1`,`val2`,`val3`,`val4`,`val5`,`datetime`,`address`,`date`,`msg_date`,`dff_val1`,`dff_val2`,`dff_val3`,`dff_val4`,`dff_val5`,`active`,`state`,`synthetic_record_id`,`deleted`,`created_at`,`spam_category`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
