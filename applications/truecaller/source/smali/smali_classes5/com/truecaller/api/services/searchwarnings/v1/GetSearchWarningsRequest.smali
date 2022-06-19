.class public final Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;",
        "Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BADGES_FIELD_NUMBER:I = 0x9

.field public static final CARRIER_FIELD_NUMBER:I = 0x4

.field public static final COUNTRYCODE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

.field public static final FRAUDINESS_FIELD_NUMBER:I = 0x6

.field public static final ISSPAMMER_FIELD_NUMBER:I = 0x8

.field public static final NAME_FIELD_NUMBER:I = 0x7

.field public static final NUMBERTYPE_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUERY_FIELD_NUMBER:I = 0x1

.field public static final USERCOUNTRY_FIELD_NUMBER:I = 0x2

.field public static final USERPHONE_FIELD_NUMBER:I = 0xa


# instance fields
.field private badges_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private carrier_:Ljava/lang/String;

.field private countryCode_:Ljava/lang/String;

.field private fraudiness_:D

.field private isSpammer_:Z

.field private name_:Ljava/lang/String;

.field private numberType_:Ljava/lang/String;

.field private query_:Ljava/lang/String;

.field private userCountry_:Ljava/lang/String;

.field private userPhone_:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    invoke-direct {v0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    .line 3
    const-class v1, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->query_:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->userCountry_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->countryCode_:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->carrier_:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->numberType_:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->name_:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->badges_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static synthetic access$000()Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->setQuery(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->setCarrier(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->clearCarrier()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->setCarrierBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->setNumberType(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->clearNumberType()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->setNumberTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;D)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->setFraudiness(D)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->clearFraudiness()V

    return-void
.end method

.method public static synthetic access$1800(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->clearName()V

    return-void
.end method

.method public static synthetic access$200(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->clearQuery()V

    return-void
.end method

.method public static synthetic access$2000(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2100(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->setIsSpammer(Z)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->clearIsSpammer()V

    return-void
.end method

.method public static synthetic access$2300(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->setBadges(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2400(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->addBadges(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2500(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->addAllBadges(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->clearBadges()V

    return-void
.end method

.method public static synthetic access$2700(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->addBadgesBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->setUserPhone(J)V

    return-void
.end method

.method public static synthetic access$2900(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->clearUserPhone()V

    return-void
.end method

.method public static synthetic access$300(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->setQueryBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->setUserCountry(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->clearUserCountry()V

    return-void
.end method

.method public static synthetic access$600(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->setUserCountryBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->setCountryCode(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->clearCountryCode()V

    return-void
.end method

.method public static synthetic access$900(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->setCountryCodeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private addAllBadges(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->ensureBadgesIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->badges_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addBadges(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->ensureBadgesIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->badges_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addBadgesBytes(Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->ensureBadgesIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->badges_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearBadges()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->badges_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearCarrier()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->getDefaultInstance()Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->getCarrier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->carrier_:Ljava/lang/String;

    return-void
.end method

.method private clearCountryCode()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->getDefaultInstance()Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->countryCode_:Ljava/lang/String;

    return-void
.end method

.method private clearFraudiness()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->fraudiness_:D

    return-void
.end method

.method private clearIsSpammer()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->isSpammer_:Z

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->getDefaultInstance()Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearNumberType()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->getDefaultInstance()Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->getNumberType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->numberType_:Ljava/lang/String;

    return-void
.end method

.method private clearQuery()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->getDefaultInstance()Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->query_:Ljava/lang/String;

    return-void
.end method

.method private clearUserCountry()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->getDefaultInstance()Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->getUserCountry()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->userCountry_:Ljava/lang/String;

    return-void
.end method

.method private clearUserPhone()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->userPhone_:J

    return-void
.end method

.method private ensureBadgesIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->badges_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->badges_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    return-object v0
.end method

.method public static newBuilder()Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;)Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBadges(ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->ensureBadgesIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->badges_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setCarrier(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->carrier_:Ljava/lang/String;

    return-void
.end method

.method private setCarrierBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->carrier_:Ljava/lang/String;

    return-void
.end method

.method private setCountryCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->countryCode_:Ljava/lang/String;

    return-void
.end method

.method private setCountryCodeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->countryCode_:Ljava/lang/String;

    return-void
.end method

.method private setFraudiness(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->fraudiness_:D

    return-void
.end method

.method private setIsSpammer(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->isSpammer_:Z

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNumberType(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->numberType_:Ljava/lang/String;

    return-void
.end method

.method private setNumberTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->numberType_:Ljava/lang/String;

    return-void
.end method

.method private setQuery(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->query_:Ljava/lang/String;

    return-void
.end method

.method private setQueryBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->query_:Ljava/lang/String;

    return-void
.end method

.method private setUserCountry(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->userCountry_:Ljava/lang/String;

    return-void
.end method

.method private setUserCountryBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->userCountry_:Ljava/lang/String;

    return-void
.end method

.method private setUserPhone(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->userPhone_:J

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 9
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 10
    :pswitch_3
    sget-object p1, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "query_"

    aput-object v0, p1, p3

    const-string p3, "userCountry_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "countryCode_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "carrier_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "numberType_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "fraudiness_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "name_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "isSpammer_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "badges_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "userPhone_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\n\u0000\u0000\u0001\n\n\u0000\u0001\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208\u0005\u0208\u0006\u0000\u0007\u0208\u0008\u0007\t\u021a\n\u0002"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest$b;-><init>(Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;

    invoke-direct {p1}, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getBadges(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->badges_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getBadgesBytes(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->badges_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getBadgesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->badges_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBadgesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->badges_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCarrier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->carrier_:Ljava/lang/String;

    return-object v0
.end method

.method public getCarrierBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->carrier_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->countryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->countryCode_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFraudiness()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->fraudiness_:D

    return-wide v0
.end method

.method public getIsSpammer()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->isSpammer_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumberType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->numberType_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->numberType_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->query_:Ljava/lang/String;

    return-object v0
.end method

.method public getQueryBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->query_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUserCountry()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->userCountry_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserCountryBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->userCountry_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUserPhone()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSearchWarningsRequest;->userPhone_:J

    return-wide v0
.end method
