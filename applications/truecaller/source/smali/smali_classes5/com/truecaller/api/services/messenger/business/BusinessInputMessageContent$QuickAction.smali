.class public final Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QuickAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction$a;,
        Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction$ActionCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;",
        "Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction$a;",
        ">;",
        "Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$c;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;",
            ">;"
        }
    .end annotation
.end field

.field public static final REPLY_FIELD_NUMBER:I = 0xb


# instance fields
.field private actionCase_:I

.field private action_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->actionCase_:I

    return-void
.end method

.method public static synthetic access$4700()Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    return-object v0
.end method

.method public static synthetic access$4800(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->clearAction()V

    return-void
.end method

.method public static synthetic access$4900(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->setReply(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$5000(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->clearReply()V

    return-void
.end method

.method public static synthetic access$5100(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->setReplyBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method private clearAction()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->actionCase_:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->action_:Ljava/lang/Object;

    return-void
.end method

.method private clearReply()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->actionCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->actionCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->action_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    return-object v0
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setReply(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0xb

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->actionCase_:I

    .line 3
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->action_:Ljava/lang/Object;

    return-void
.end method

.method private setReplyBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->action_:Ljava/lang/Object;

    const/16 p1, 0xb

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->actionCase_:I

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
    sget-object p1, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "action_"

    aput-object v0, p1, p3

    const-string p3, "actionCase_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0001\u0000\u000b\u000b\u0001\u0000\u0000\u0000\u000b\u023b\u0000"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction$a;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction$a;-><init>(Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;-><init>()V

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

.method public getActionCase()Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction$ActionCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->actionCase_:I

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction$ActionCase;->forNumber(I)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction$ActionCase;

    move-result-object v0

    return-object v0
.end method

.method public getReply()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->actionCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->action_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getReplyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->actionCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->action_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasReply()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$QuickAction;->actionCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
