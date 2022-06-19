.class public final Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/callerid/v1/model/BusinessCard$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;",
        "Lcom/truecaller/api/services/callerid/v1/model/BusinessCard$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BADGES_FIELD_NUMBER:I = 0x8

.field public static final CITY_FIELD_NUMBER:I = 0x7

.field public static final COMPANY_FIELD_NUMBER:I = 0x6

.field public static final COUNTRYCODE_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

.field public static final FIRSTNAME_FIELD_NUMBER:I = 0x3

.field public static final JOBTITLE_FIELD_NUMBER:I = 0x5

.field public static final LASTNAME_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONENUMBER_FIELD_NUMBER:I = 0x1

.field public static final VIDEOS_FIELD_NUMBER:I = 0x9

.field private static final badges_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Lcom/truecaller/api/services/callerid/v1/model/Badge;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private badgesMemoizedSerializedSize:I

.field private badges_:Lcom/google/protobuf/Internal$IntList;

.field private city_:Ljava/lang/String;

.field private company_:Ljava/lang/String;

.field private countryCode_:Ljava/lang/String;

.field private firstName_:Ljava/lang/String;

.field private jobTitle_:Ljava/lang/String;

.field private lastName_:Ljava/lang/String;

.field private phoneNumber_:J

.field private videos_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/truecaller/api/services/callerid/v1/model/Video;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard$a;

    invoke-direct {v0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard$a;-><init>()V

    sput-object v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->badges_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    .line 2
    new-instance v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    invoke-direct {v0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;-><init>()V

    .line 3
    sput-object v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    .line 4
    const-class v1, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->countryCode_:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->firstName_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->lastName_:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->jobTitle_:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->company_:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->city_:Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->badges_:Lcom/google/protobuf/Internal$IntList;

    .line 9
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->videos_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static synthetic access$000()Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->setPhoneNumber(J)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->clearLastName()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->setLastNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->setJobTitle(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->clearJobTitle()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->setJobTitleBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->setCompany(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->clearCompany()V

    return-void
.end method

.method public static synthetic access$1700(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->setCompanyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->setCity(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->clearCity()V

    return-void
.end method

.method public static synthetic access$200(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->clearPhoneNumber()V

    return-void
.end method

.method public static synthetic access$2000(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->setCityBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2100(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;ILcom/truecaller/api/services/callerid/v1/model/Badge;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->setBadges(ILcom/truecaller/api/services/callerid/v1/model/Badge;)V

    return-void
.end method

.method public static synthetic access$2200(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;Lcom/truecaller/api/services/callerid/v1/model/Badge;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->addBadges(Lcom/truecaller/api/services/callerid/v1/model/Badge;)V

    return-void
.end method

.method public static synthetic access$2300(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->addAllBadges(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$2400(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->clearBadges()V

    return-void
.end method

.method public static synthetic access$2500(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->setBadgesValue(II)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->addBadgesValue(I)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->addAllBadgesValue(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$2800(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;ILcom/truecaller/api/services/callerid/v1/model/Video;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->setVideos(ILcom/truecaller/api/services/callerid/v1/model/Video;)V

    return-void
.end method

.method public static synthetic access$2900(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;Lcom/truecaller/api/services/callerid/v1/model/Video;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->addVideos(Lcom/truecaller/api/services/callerid/v1/model/Video;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->setCountryCode(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$3000(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;ILcom/truecaller/api/services/callerid/v1/model/Video;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->addVideos(ILcom/truecaller/api/services/callerid/v1/model/Video;)V

    return-void
.end method

.method public static synthetic access$3100(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->addAllVideos(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$3200(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->clearVideos()V

    return-void
.end method

.method public static synthetic access$3300(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->removeVideos(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->clearCountryCode()V

    return-void
.end method

.method public static synthetic access$500(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->setCountryCodeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->setFirstName(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->clearFirstName()V

    return-void
.end method

.method public static synthetic access$800(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->setFirstNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->setLastName(Ljava/lang/String;)V

    return-void
.end method

.method private addAllBadges(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/truecaller/api/services/callerid/v1/model/Badge;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->ensureBadgesIsMutable()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/callerid/v1/model/Badge;

    .line 3
    iget-object v1, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->badges_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {v0}, Lcom/truecaller/api/services/callerid/v1/model/Badge;->getNumber()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addAllBadgesValue(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->ensureBadgesIsMutable()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->badges_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v1, v0}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addAllVideos(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/truecaller/api/services/callerid/v1/model/Video;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->ensureVideosIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->videos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addBadges(Lcom/truecaller/api/services/callerid/v1/model/Badge;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->ensureBadgesIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->badges_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p1}, Lcom/truecaller/api/services/callerid/v1/model/Badge;->getNumber()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addBadgesValue(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->ensureBadgesIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->badges_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addVideos(ILcom/truecaller/api/services/callerid/v1/model/Video;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->ensureVideosIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->videos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addVideos(Lcom/truecaller/api/services/callerid/v1/model/Video;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->ensureVideosIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->videos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearBadges()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyIntList()Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->badges_:Lcom/google/protobuf/Internal$IntList;

    return-void
.end method

.method private clearCity()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->getDefaultInstance()Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->getCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->city_:Ljava/lang/String;

    return-void
.end method

.method private clearCompany()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->getDefaultInstance()Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->getCompany()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->company_:Ljava/lang/String;

    return-void
.end method

.method private clearCountryCode()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->getDefaultInstance()Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->countryCode_:Ljava/lang/String;

    return-void
.end method

.method private clearFirstName()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->getDefaultInstance()Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->getFirstName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->firstName_:Ljava/lang/String;

    return-void
.end method

.method private clearJobTitle()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->getDefaultInstance()Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->getJobTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->jobTitle_:Ljava/lang/String;

    return-void
.end method

.method private clearLastName()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->getDefaultInstance()Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->getLastName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->lastName_:Ljava/lang/String;

    return-void
.end method

.method private clearPhoneNumber()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->phoneNumber_:J

    return-void
.end method

.method private clearVideos()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->videos_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureBadgesIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->badges_:Lcom/google/protobuf/Internal$IntList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$IntList;)Lcom/google/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->badges_:Lcom/google/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureVideosIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->videos_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->videos_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    return-object v0
.end method

.method public static newBuilder()Lcom/truecaller/api/services/callerid/v1/model/BusinessCard$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;)Lcom/truecaller/api/services/callerid/v1/model/BusinessCard$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeVideos(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->ensureVideosIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->videos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setBadges(ILcom/truecaller/api/services/callerid/v1/model/Badge;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->ensureBadgesIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->badges_:Lcom/google/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/truecaller/api/services/callerid/v1/model/Badge;->getNumber()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setBadgesValue(II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->ensureBadgesIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->badges_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setCity(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->city_:Ljava/lang/String;

    return-void
.end method

.method private setCityBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->city_:Ljava/lang/String;

    return-void
.end method

.method private setCompany(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->company_:Ljava/lang/String;

    return-void
.end method

.method private setCompanyBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->company_:Ljava/lang/String;

    return-void
.end method

.method private setCountryCode(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->countryCode_:Ljava/lang/String;

    return-void
.end method

.method private setCountryCodeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->countryCode_:Ljava/lang/String;

    return-void
.end method

.method private setFirstName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->firstName_:Ljava/lang/String;

    return-void
.end method

.method private setFirstNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->firstName_:Ljava/lang/String;

    return-void
.end method

.method private setJobTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->jobTitle_:Ljava/lang/String;

    return-void
.end method

.method private setJobTitleBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->jobTitle_:Ljava/lang/String;

    return-void
.end method

.method private setLastName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->lastName_:Ljava/lang/String;

    return-void
.end method

.method private setLastNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->lastName_:Ljava/lang/String;

    return-void
.end method

.method private setPhoneNumber(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->phoneNumber_:J

    return-void
.end method

.method private setVideos(ILcom/truecaller/api/services/callerid/v1/model/Video;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->ensureVideosIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->videos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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
    sget-object p1, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "phoneNumber_"

    aput-object v0, p1, p3

    const-string p3, "countryCode_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "firstName_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "lastName_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "jobTitle_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "company_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "city_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "badges_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "videos_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    .line 11
    const-class p3, Lcom/truecaller/api/services/callerid/v1/model/Video;

    aput-object p3, p1, p2

    const-string p2, "\u0000\t\u0000\u0000\u0001\t\t\u0000\u0002\u0000\u0001\u0002\u0002\u0208\u0003\u0208\u0004\u0208\u0005\u0208\u0006\u0208\u0007\u0208\u0008,\t\u001b"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard$b;-><init>(Lcom/truecaller/api/services/callerid/v1/model/BusinessCard$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;

    invoke-direct {p1}, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;-><init>()V

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

.method public getBadges(I)Lcom/truecaller/api/services/callerid/v1/model/Badge;
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->badges_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->badges_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v1, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/callerid/v1/model/Badge;

    return-object p1
.end method

.method public getBadgesCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->badges_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBadgesList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/api/services/callerid/v1/model/Badge;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->badges_:Lcom/google/protobuf/Internal$IntList;

    sget-object v2, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->badges_converter_:Lcom/google/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/google/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/google/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getBadgesValue(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->badges_:Lcom/google/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getBadgesValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->badges_:Lcom/google/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->city_:Ljava/lang/String;

    return-object v0
.end method

.method public getCityBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->city_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->company_:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->company_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->countryCode_:Ljava/lang/String;

    return-object v0
.end method

.method public getCountryCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->countryCode_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->firstName_:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->firstName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getJobTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->jobTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getJobTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->jobTitle_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->lastName_:Ljava/lang/String;

    return-object v0
.end method

.method public getLastNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->lastName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->phoneNumber_:J

    return-wide v0
.end method

.method public getVideos(I)Lcom/truecaller/api/services/callerid/v1/model/Video;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->videos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/callerid/v1/model/Video;

    return-object p1
.end method

.method public getVideosCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->videos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getVideosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/api/services/callerid/v1/model/Video;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->videos_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getVideosOrBuilder(I)Le/a/t2/a/a/a/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->videos_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t2/a/a/a/c/b;

    return-object p1
.end method

.method public getVideosOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Le/a/t2/a/a/a/c/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/callerid/v1/model/BusinessCard;->videos_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method
