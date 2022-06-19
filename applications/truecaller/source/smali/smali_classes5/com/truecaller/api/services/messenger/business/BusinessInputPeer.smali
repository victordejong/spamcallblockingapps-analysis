.class public final Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$b;,
        Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;",
        "Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;",
            ">;"
        }
    .end annotation
.end field

.field public static final USER_FIELD_NUMBER:I = 0x1


# instance fields
.field private user_:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$400()Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    return-object v0
.end method

.method public static synthetic access$500(Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->setUser(Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->mergeUser(Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->clearUser()V

    return-void
.end method

.method private clearUser()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->user_:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;

    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    return-object v0
.end method

.method private mergeUser(Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->user_:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;->getDefaultInstance()Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->user_:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;->newBuilder(Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;)Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->user_:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->user_:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;)Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setUser(Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->user_:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

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
    sget-object p1, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "user_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$b;-><init>(Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;-><init>()V

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

.method public getUser()Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->user_:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;->getDefaultInstance()Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasUser()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputPeer;->user_:Lcom/truecaller/api/services/messenger/business/BusinessInputPeer$User;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
