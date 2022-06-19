.class public final Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;",
        "Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x1


# instance fields
.field private status_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    invoke-direct {v0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    .line 3
    const-class v1, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->setStatusValue(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->setStatus(Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;)V

    return-void
.end method

.method public static synthetic access$300(Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->clearStatus()V

    return-void
.end method

.method private clearStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->status_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    return-object v0
.end method

.method public static newBuilder()Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;)Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setStatus(Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->status_:I

    return-void
.end method

.method private setStatusValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->status_:I

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
    sget-object p1, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string p3, "status_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000c"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse$b;-><init>(Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;

    invoke-direct {p1}, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;-><init>()V

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

.method public getStatus()Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->status_:I

    invoke-static {v0}, Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;->forNumber(I)Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;->UNRECOGNIZED:Lcom/truecaller/api/services/searchwarnings/v1/models/SupernovaStatus;

    :cond_0
    return-object v0
.end method

.method public getStatusValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/searchwarnings/v1/GetSupernovaOptOutResponse;->status_:I

    return v0
.end method
