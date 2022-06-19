.class public final Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputGroupContextSettingsUpdate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;",
        "Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

.field public static final GROUP_FIELD_NUMBER:I = 0x1

.field public static final NOTIFICATION_SETTINGS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private group_:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;

.field private notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$1200()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    return-object v0
.end method

.method public static synthetic access$1300(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->setGroup(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->mergeGroup(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->clearGroup()V

    return-void
.end method

.method public static synthetic access$1600(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->setNotificationSettings(Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;)V

    return-void
.end method

.method public static synthetic access$1700(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->mergeNotificationSettings(Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->clearNotificationSettings()V

    return-void
.end method

.method private clearGroup()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->group_:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;

    return-void
.end method

.method private clearNotificationSettings()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;

    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    return-object v0
.end method

.method private mergeGroup(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->group_:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->group_:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->group_:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->group_:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;

    :goto_0
    return-void
.end method

.method private mergeNotificationSettings(Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;)Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setGroup(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->group_:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;

    return-void
.end method

.method private setNotificationSettings(Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "group_"

    aput-object v0, p1, p3

    const-string p3, "notificationSettings_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate$a;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate$a;-><init>(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;-><init>()V

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

.method public getGroup()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->group_:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNotificationSettings()Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasGroup()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->group_:Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$Group;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNotificationSettings()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->notificationSettings_:Lcom/truecaller/api/services/messenger/v1/models/input/InputNotificationSettings;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
