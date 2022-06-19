.class public final Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;",
        "Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

.field public static final ENABLED_FEATURES_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;",
            ">;"
        }
    .end annotation
.end field

.field public static final WHITELISTED_CDNS_FIELD_NUMBER:I = 0x2


# instance fields
.field private enabledFeatures_:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;

.field private whitelistedCdns_:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$1100()Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    return-object v0
.end method

.method public static synthetic access$1200(Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->setEnabledFeatures(Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->mergeEnabledFeatures(Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->clearEnabledFeatures()V

    return-void
.end method

.method public static synthetic access$1500(Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->setWhitelistedCdns(Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->mergeWhitelistedCdns(Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->clearWhitelistedCdns()V

    return-void
.end method

.method private clearEnabledFeatures()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->enabledFeatures_:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;

    return-void
.end method

.method private clearWhitelistedCdns()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->whitelistedCdns_:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;

    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    return-object v0
.end method

.method private mergeEnabledFeatures(Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->enabledFeatures_:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;->getDefaultInstance()Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->enabledFeatures_:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;->newBuilder(Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;)Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->enabledFeatures_:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->enabledFeatures_:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;

    :goto_0
    return-void
.end method

.method private mergeWhitelistedCdns(Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->whitelistedCdns_:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;->getDefaultInstance()Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->whitelistedCdns_:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;->newBuilder(Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;)Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->whitelistedCdns_:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->whitelistedCdns_:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;)Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEnabledFeatures(Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->enabledFeatures_:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;

    return-void
.end method

.method private setWhitelistedCdns(Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->whitelistedCdns_:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "enabledFeatures_"

    aput-object v0, p1, p3

    const-string p3, "whitelistedCdns_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request$a;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request$a;-><init>(Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;-><init>()V

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

.method public getEnabledFeatures()Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->enabledFeatures_:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;->getDefaultInstance()Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getWhitelistedCdns()Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->whitelistedCdns_:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;->getDefaultInstance()Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasEnabledFeatures()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->enabledFeatures_:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$EnabledFeatures;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWhitelistedCdns()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$Request;->whitelistedCdns_:Lcom/truecaller/api/services/messenger/business/UpdateAccountSettings$WhitelistedCdns;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
