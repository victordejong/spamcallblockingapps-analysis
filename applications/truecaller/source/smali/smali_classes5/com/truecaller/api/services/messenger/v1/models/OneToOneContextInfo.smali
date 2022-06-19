.class public final Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Le/a/t2/a/e/a/d/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;",
        "Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo$b;",
        ">;",
        "Le/a/t2/a/e/a/d/d;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

.field public static final NOTIFICATION_SETTINGS_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PEER_FIELD_NUMBER:I = 0x1


# instance fields
.field private notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

.field private peer_:Lcom/truecaller/api/services/messenger/v1/models/Peer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->setPeer(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->mergePeer(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->clearPeer()V

    return-void
.end method

.method public static synthetic access$400(Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->setNotificationSettings(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->mergeNotificationSettings(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->clearNotificationSettings()V

    return-void
.end method

.method private clearNotificationSettings()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    return-void
.end method

.method private clearPeer()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->peer_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    return-object v0
.end method

.method private mergeNotificationSettings(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;)Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    :goto_0
    return-void
.end method

.method private mergePeer(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->peer_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->peer_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/Peer;)Lcom/truecaller/api/services/messenger/v1/models/Peer$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/Peer$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/Peer;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->peer_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->peer_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;)Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setNotificationSettings(Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    return-void
.end method

.method private setPeer(Lcom/truecaller/api/services/messenger/v1/models/Peer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->peer_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "peer_"

    aput-object v0, p1, p3

    const-string p3, "notificationSettings_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\t\u0003\t"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo$b;-><init>(Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;-><init>()V

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

.method public getNotificationSettings()Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPeer()Lcom/truecaller/api/services/messenger/v1/models/Peer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->peer_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/Peer;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/Peer;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasNotificationSettings()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/NotificationSettings;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPeer()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/OneToOneContextInfo;->peer_:Lcom/truecaller/api/services/messenger/v1/models/Peer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
