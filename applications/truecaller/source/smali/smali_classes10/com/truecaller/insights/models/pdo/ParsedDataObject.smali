.class public Lcom/truecaller/insights/models/pdo/ParsedDataObject;
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
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0002\u00085\n\u0002\u0010\t\n\u0002\u0008-\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008w\u0010xJ\u001a\u0010\u0004\u001a\u00020\u00032\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\u0096\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\"\u0010\n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\"\u0010\u0010\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u000b\u001a\u0004\u0008\u0011\u0010\r\"\u0004\u0008\u0012\u0010\u000fR\"\u0010\u0013\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u000b\u001a\u0004\u0008\u0014\u0010\r\"\u0004\u0008\u0015\u0010\u000fR\"\u0010\u0017\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\"\u0010\u001d\u001a\u00020\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010\u0008\"\u0004\u0008 \u0010!R\"\u0010\"\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u000b\u001a\u0004\u0008#\u0010\r\"\u0004\u0008$\u0010\u000fR\"\u0010%\u001a\u00020\u00168\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008%\u0010\u0018\u001a\u0004\u0008&\u0010\u001a\"\u0004\u0008\'\u0010\u001cR\"\u0010(\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008(\u0010\u000b\u001a\u0004\u0008)\u0010\r\"\u0004\u0008*\u0010\u000fR\"\u0010+\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008+\u0010\u000b\u001a\u0004\u0008,\u0010\r\"\u0004\u0008-\u0010\u000fR\"\u0010.\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008.\u0010\u000b\u001a\u0004\u0008/\u0010\r\"\u0004\u00080\u0010\u000fR\"\u00101\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00081\u0010\u000b\u001a\u0004\u00082\u0010\r\"\u0004\u00083\u0010\u000fR\"\u00104\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00084\u0010\u000b\u001a\u0004\u00085\u0010\r\"\u0004\u00086\u0010\u000fR\"\u00107\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u00087\u0010\u000b\u001a\u0004\u00088\u0010\r\"\u0004\u00089\u0010\u000fR\"\u0010:\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008:\u0010\u000b\u001a\u0004\u0008;\u0010\r\"\u0004\u0008<\u0010\u000fR\"\u0010=\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008=\u0010>\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR\"\u0010C\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008C\u0010\u000b\u001a\u0004\u0008D\u0010\r\"\u0004\u0008E\u0010\u000fR\"\u0010F\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008F\u0010>\u001a\u0004\u0008G\u0010@\"\u0004\u0008H\u0010BR\"\u0010I\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008I\u0010\u000b\u001a\u0004\u0008J\u0010\r\"\u0004\u0008K\u0010\u000fR\"\u0010M\u001a\u00020L8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008M\u0010N\u001a\u0004\u0008O\u0010P\"\u0004\u0008Q\u0010RR\"\u0010S\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008S\u0010\u000b\u001a\u0004\u0008T\u0010\r\"\u0004\u0008U\u0010\u000fR\"\u0010V\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008V\u0010\u000b\u001a\u0004\u0008W\u0010\r\"\u0004\u0008X\u0010\u000fR\"\u0010Y\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008Y\u0010\u000b\u001a\u0004\u0008Z\u0010\r\"\u0004\u0008[\u0010\u000fR\"\u0010\\\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008\\\u0010\u000b\u001a\u0004\u0008]\u0010\r\"\u0004\u0008^\u0010\u000fR$\u0010_\u001a\u0004\u0018\u00010L8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008_\u0010`\u001a\u0004\u0008a\u0010b\"\u0004\u0008c\u0010dR\"\u0010e\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008e\u0010\u000b\u001a\u0004\u0008f\u0010\r\"\u0004\u0008g\u0010\u000fR\"\u0010h\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008h\u0010\u000b\u001a\u0004\u0008i\u0010\r\"\u0004\u0008j\u0010\u000fR\"\u0010k\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008k\u0010\u000b\u001a\u0004\u0008l\u0010\r\"\u0004\u0008m\u0010\u000fR\"\u0010n\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008n\u0010\u000b\u001a\u0004\u0008o\u0010\r\"\u0004\u0008p\u0010\u000fR$\u0010q\u001a\u0004\u0018\u00010L8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008q\u0010`\u001a\u0004\u0008r\u0010b\"\u0004\u0008s\u0010dR\"\u0010t\u001a\u00020\t8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0012\n\u0004\u0008t\u0010\u000b\u001a\u0004\u0008u\u0010\r\"\u0004\u0008v\u0010\u000f\u00a8\u0006y"
    }
    d2 = {
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
        "g",
        "Ljava/lang/String;",
        "getG",
        "()Ljava/lang/String;",
        "setG",
        "(Ljava/lang/String;)V",
        "state",
        "getState",
        "setState",
        "p",
        "getP",
        "setP",
        "Ljava/util/Date;",
        "createdAt",
        "Ljava/util/Date;",
        "getCreatedAt",
        "()Ljava/util/Date;",
        "setCreatedAt",
        "(Ljava/util/Date;)V",
        "spamCategory",
        "I",
        "getSpamCategory",
        "setSpamCategory",
        "(I)V",
        "val2",
        "getVal2",
        "setVal2",
        "msgDate",
        "getMsgDate",
        "setMsgDate",
        "val1",
        "getVal1",
        "setVal1",
        "dffVal3",
        "getDffVal3",
        "setDffVal3",
        "address",
        "getAddress",
        "setAddress",
        "dffVal5",
        "getDffVal5",
        "setDffVal5",
        "c",
        "getC",
        "setC",
        "f",
        "getF",
        "setF",
        "datetime",
        "getDatetime",
        "setDatetime",
        "deleted",
        "Z",
        "getDeleted",
        "()Z",
        "setDeleted",
        "(Z)V",
        "dffVal1",
        "getDffVal1",
        "setDffVal1",
        "active",
        "getActive",
        "setActive",
        "dffVal4",
        "getDffVal4",
        "setDffVal4",
        "",
        "messageID",
        "J",
        "getMessageID",
        "()J",
        "setMessageID",
        "(J)V",
        "val3",
        "getVal3",
        "setVal3",
        "val5",
        "getVal5",
        "setVal5",
        "s",
        "getS",
        "setS",
        "o",
        "getO",
        "setO",
        "syntheticRecordId",
        "Ljava/lang/Long;",
        "getSyntheticRecordId",
        "()Ljava/lang/Long;",
        "setSyntheticRecordId",
        "(Ljava/lang/Long;)V",
        "k",
        "getK",
        "setK",
        "d",
        "getD",
        "setD",
        "date",
        "getDate",
        "setDate",
        "val4",
        "getVal4",
        "setVal4",
        "accountModelId",
        "getAccountModelId",
        "setAccountModelId",
        "dffVal2",
        "getDffVal2",
        "setDffVal2",
        "<init>",
        "()V",
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
.field private accountModelId:Ljava/lang/Long;
    .annotation runtime Le/m/e/d0/b;
        value = "account_model_id"
    .end annotation
.end field

.field private active:Z
    .annotation runtime Le/m/e/d0/b;
        value = "active"
    .end annotation
.end field

.field private address:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "address"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "c"
    .end annotation
.end field

.field private createdAt:Ljava/util/Date;
    .annotation runtime Le/m/e/d0/b;
        value = "created_at"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "d"
    .end annotation
.end field

.field private date:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "date"
    .end annotation
.end field

.field private datetime:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "datetime"
    .end annotation
.end field

.field private deleted:Z
    .annotation runtime Le/m/e/d0/b;
        value = "deleted"
    .end annotation
.end field

.field private dffVal1:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "dffVal1"
    .end annotation
.end field

.field private dffVal2:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "dffVal2"
    .end annotation
.end field

.field private dffVal3:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "dffVal3"
    .end annotation
.end field

.field private dffVal4:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "dffVal4"
    .end annotation
.end field

.field private dffVal5:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "dffVal5"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "f"
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "g"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "k"
    .end annotation
.end field

.field private messageID:J
    .annotation runtime Le/m/e/d0/b;
        value = "messageID"
    .end annotation
.end field

.field private msgDate:Ljava/util/Date;
    .annotation runtime Le/m/e/d0/b;
        value = "msg_date"
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "o"
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "p"
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "s"
    .end annotation
.end field

.field private spamCategory:I
    .annotation runtime Le/m/e/d0/b;
        value = "spam_category"
    .end annotation
.end field

.field private state:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "state"
    .end annotation
.end field

.field private syntheticRecordId:Ljava/lang/Long;
    .annotation runtime Le/m/e/d0/b;
        value = "synthetic_record_id"
    .end annotation
.end field

.field private val1:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "val1"
    .end annotation
.end field

.field private val2:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "val2"
    .end annotation
.end field

.field private val3:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "val3"
    .end annotation
.end field

.field private val4:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "val4"
    .end annotation
.end field

.field private val5:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        value = "val5"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->d:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->k:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->p:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->c:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->o:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->f:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->g:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->s:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val1:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val2:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val3:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val4:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val5:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->datetime:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->address:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->date:Ljava/lang/String;

    .line 18
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->msgDate:Ljava/util/Date;

    .line 19
    iput-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal1:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal2:Ljava/lang/String;

    .line 21
    iput-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal3:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal4:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal5:Ljava/lang/String;

    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->active:Z

    const-string v1, "ORIGINAL"

    .line 25
    iput-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->state:Ljava/lang/String;

    .line 26
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->createdAt:Ljava/util/Date;

    .line 27
    iput v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->spamCategory:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type com.truecaller.insights.models.pdo.ParsedDataObject"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;

    .line 3
    iget-wide v3, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->messageID:J

    iget-wide v5, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->messageID:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 4
    :cond_3
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_4

    return v2

    .line 5
    :cond_4
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->k:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_5

    return v2

    .line 6
    :cond_5
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->p:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->p:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_6

    return v2

    .line 7
    :cond_6
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_7

    return v2

    .line 8
    :cond_7
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->o:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->o:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_8

    return v2

    .line 9
    :cond_8
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->f:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->f:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_9

    return v2

    .line 10
    :cond_9
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->g:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_a

    return v2

    .line 11
    :cond_a
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->s:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->s:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_b

    return v2

    .line 12
    :cond_b
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->accountModelId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->accountModelId:Ljava/lang/Long;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_c

    return v2

    .line 13
    :cond_c
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val1:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val1:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_d

    return v2

    .line 14
    :cond_d
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val2:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val2:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_e

    return v2

    .line 15
    :cond_e
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val3:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val3:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_f

    return v2

    .line 16
    :cond_f
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val4:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val4:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_10

    return v2

    .line 17
    :cond_10
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val5:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val5:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_11

    return v2

    .line 18
    :cond_11
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->datetime:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->datetime:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_12

    return v2

    .line 19
    :cond_12
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->address:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->address:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_13

    return v2

    .line 20
    :cond_13
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->msgDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->msgDate:Ljava/util/Date;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_14

    return v2

    .line 21
    :cond_14
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->date:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->date:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_15

    return v2

    .line 22
    :cond_15
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal1:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal1:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_16

    return v2

    .line 23
    :cond_16
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal2:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal2:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_17

    return v2

    .line 24
    :cond_17
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal3:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal3:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_18

    return v2

    .line 25
    :cond_18
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal4:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal4:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_19

    return v2

    .line 26
    :cond_19
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal5:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal5:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_1a

    return v2

    .line 27
    :cond_1a
    iget-boolean v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->active:Z

    iget-boolean v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->active:Z

    if-eq v1, v3, :cond_1b

    return v2

    .line 28
    :cond_1b
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->state:Ljava/lang/String;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->state:Ljava/lang/String;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_1c

    return v2

    .line 29
    :cond_1c
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->syntheticRecordId:Ljava/lang/Long;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->syntheticRecordId:Ljava/lang/Long;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_1d

    return v2

    .line 30
    :cond_1d
    iget-boolean v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->deleted:Z

    iget-boolean v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->deleted:Z

    if-eq v1, v3, :cond_1e

    return v2

    .line 31
    :cond_1e
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->createdAt:Ljava/util/Date;

    iget-object v3, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->createdAt:Ljava/util/Date;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_1f

    return v2

    .line 32
    :cond_1f
    iget v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->spamCategory:I

    iget p1, p1, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->spamCategory:I

    if-eq v1, p1, :cond_20

    return v2

    :cond_20
    return v0
.end method

.method public final getAccountModelId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->accountModelId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->active:Z

    return v0
.end method

.method public final getAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->address:Ljava/lang/String;

    return-object v0
.end method

.method public final getC()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreatedAt()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public final getD()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->date:Ljava/lang/String;

    return-object v0
.end method

.method public final getDatetime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->datetime:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeleted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->deleted:Z

    return v0
.end method

.method public final getDffVal1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal1:Ljava/lang/String;

    return-object v0
.end method

.method public final getDffVal2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal2:Ljava/lang/String;

    return-object v0
.end method

.method public final getDffVal3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal3:Ljava/lang/String;

    return-object v0
.end method

.method public final getDffVal4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal4:Ljava/lang/String;

    return-object v0
.end method

.method public final getDffVal5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal5:Ljava/lang/String;

    return-object v0
.end method

.method public final getF()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getG()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getK()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessageID()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->messageID:J

    return-wide v0
.end method

.method public final getMsgDate()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->msgDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getO()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final getP()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final getS()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final getSpamCategory()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->spamCategory:I

    return v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final getSyntheticRecordId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->syntheticRecordId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getVal1()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val1:Ljava/lang/String;

    return-object v0
.end method

.method public final getVal2()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val2:Ljava/lang/String;

    return-object v0
.end method

.method public final getVal3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val3:Ljava/lang/String;

    return-object v0
.end method

.method public final getVal4()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val4:Ljava/lang/String;

    return-object v0
.end method

.method public final getVal5()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val5:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->messageID:J

    invoke-static {v0, v1}, Ld;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->d:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->k:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->p:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 6
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->o:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 7
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->f:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->g:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->s:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 10
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->accountModelId:Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ld;->a(J)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val1:Ljava/lang/String;

    const/16 v3, 0x1f

    invoke-static {v1, v0, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 12
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val2:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 13
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val3:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 14
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val4:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 15
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val5:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 16
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->datetime:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 17
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->address:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 18
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->msgDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 19
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->date:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 20
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal1:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 21
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal2:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 22
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal3:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 23
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal4:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 24
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal5:Ljava/lang/String;

    invoke-static {v1, v0, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 25
    iget-boolean v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->active:Z

    invoke-static {v1}, Lb;->a(Z)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 26
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->state:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 27
    iget-object v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->syntheticRecordId:Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 28
    iget-boolean v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->deleted:Z

    invoke-static {v1}, Lb;->a(Z)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 29
    iget-object v0, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->createdAt:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 30
    iget v1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->spamCategory:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setAccountModelId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->accountModelId:Ljava/lang/Long;

    return-void
.end method

.method public final setActive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->active:Z

    return-void
.end method

.method public final setAddress(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->address:Ljava/lang/String;

    return-void
.end method

.method public final setC(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->c:Ljava/lang/String;

    return-void
.end method

.method public final setCreatedAt(Ljava/util/Date;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->createdAt:Ljava/util/Date;

    return-void
.end method

.method public final setD(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->d:Ljava/lang/String;

    return-void
.end method

.method public final setDate(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->date:Ljava/lang/String;

    return-void
.end method

.method public final setDatetime(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->datetime:Ljava/lang/String;

    return-void
.end method

.method public final setDeleted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->deleted:Z

    return-void
.end method

.method public final setDffVal1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal1:Ljava/lang/String;

    return-void
.end method

.method public final setDffVal2(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal2:Ljava/lang/String;

    return-void
.end method

.method public final setDffVal3(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal3:Ljava/lang/String;

    return-void
.end method

.method public final setDffVal4(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal4:Ljava/lang/String;

    return-void
.end method

.method public final setDffVal5(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->dffVal5:Ljava/lang/String;

    return-void
.end method

.method public final setF(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->f:Ljava/lang/String;

    return-void
.end method

.method public final setG(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->g:Ljava/lang/String;

    return-void
.end method

.method public final setK(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->k:Ljava/lang/String;

    return-void
.end method

.method public final setMessageID(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->messageID:J

    return-void
.end method

.method public final setMsgDate(Ljava/util/Date;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->msgDate:Ljava/util/Date;

    return-void
.end method

.method public final setO(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->o:Ljava/lang/String;

    return-void
.end method

.method public final setP(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->p:Ljava/lang/String;

    return-void
.end method

.method public final setS(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->s:Ljava/lang/String;

    return-void
.end method

.method public final setSpamCategory(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->spamCategory:I

    return-void
.end method

.method public final setState(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->state:Ljava/lang/String;

    return-void
.end method

.method public final setSyntheticRecordId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->syntheticRecordId:Ljava/lang/Long;

    return-void
.end method

.method public final setVal1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val1:Ljava/lang/String;

    return-void
.end method

.method public final setVal2(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val2:Ljava/lang/String;

    return-void
.end method

.method public final setVal3(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val3:Ljava/lang/String;

    return-void
.end method

.method public final setVal4(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val4:Ljava/lang/String;

    return-void
.end method

.method public final setVal5(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/insights/models/pdo/ParsedDataObject;->val5:Ljava/lang/String;

    return-void
.end method
