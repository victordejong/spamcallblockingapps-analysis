.class public final Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$b;,
        Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$ValueCase;,
        Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$MentionOnly;,
        Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Whitelisted;,
        Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Muted;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;",
        "Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

.field public static final MENTION_ONLY_FIELD_NUMBER:I = 0x3

.field public static final MUTED_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final REF_PHONE_NUMBER_FIELD_NUMBER:I = 0x64

.field public static final WHITELISTED_FIELD_NUMBER:I = 0x2


# instance fields
.field private refPhoneNumber_:J

.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    return-void
.end method

.method public static synthetic access$1000(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Muted;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->setMuted(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Muted;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Muted;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->mergeMuted(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Muted;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->clearMuted()V

    return-void
.end method

.method public static synthetic access$1300(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Whitelisted;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->setWhitelisted(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Whitelisted;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Whitelisted;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->mergeWhitelisted(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Whitelisted;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->clearWhitelisted()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$MentionOnly;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->setMentionOnly(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$MentionOnly;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$MentionOnly;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->mergeMentionOnly(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$MentionOnly;)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->clearMentionOnly()V

    return-void
.end method

.method public static synthetic access$600()Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    return-object v0
.end method

.method public static synthetic access$700(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->clearValue()V

    return-void
.end method

.method public static synthetic access$800(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->setRefPhoneNumber(J)V

    return-void
.end method

.method public static synthetic access$900(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->clearRefPhoneNumber()V

    return-void
.end method

.method private clearMentionOnly()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearMuted()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearRefPhoneNumber()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->refPhoneNumber_:J

    return-void
.end method

.method private clearValue()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    return-void
.end method

.method private clearWhitelisted()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    return-object v0
.end method

.method private mergeMentionOnly(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$MentionOnly;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$MentionOnly;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$MentionOnly;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$MentionOnly;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$MentionOnly;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$MentionOnly;)Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$MentionOnly$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$MentionOnly$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    return-void
.end method

.method private mergeMuted(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Muted;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Muted;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Muted;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Muted;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Muted;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Muted;)Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Muted$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Muted$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    return-void
.end method

.method private mergeWhitelisted(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Whitelisted;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Whitelisted;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Whitelisted;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Whitelisted;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Whitelisted;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Whitelisted;)Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Whitelisted$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Whitelisted$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;)Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setMentionOnly(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$MentionOnly;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    return-void
.end method

.method private setMuted(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Muted;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    return-void
.end method

.method private setRefPhoneNumber(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->refPhoneNumber_:J

    return-void
.end method

.method private setWhitelisted(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Whitelisted;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "value_"

    aput-object v0, p1, p3

    const-string p3, "valueCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 11
    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Muted;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Whitelisted;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$MentionOnly;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "refPhoneNumber_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0001\u0000\u0001d\u0004\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000d\u0002"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$b;-><init>(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;-><init>()V

    return-object p1

    nop

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

.method public getMentionOnly()Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$MentionOnly;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$MentionOnly;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$MentionOnly;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$MentionOnly;

    move-result-object v0

    return-object v0
.end method

.method public getMuted()Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Muted;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Muted;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Muted;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Muted;

    move-result-object v0

    return-object v0
.end method

.method public getRefPhoneNumber()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->refPhoneNumber_:J

    return-wide v0
.end method

.method public getValueCase()Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$ValueCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$ValueCase;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public getWhitelisted()Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Whitelisted;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Whitelisted;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Whitelisted;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$Whitelisted;

    move-result-object v0

    return-object v0
.end method

.method public hasMentionOnly()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasMuted()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasWhitelisted()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
