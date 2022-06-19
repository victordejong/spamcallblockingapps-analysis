.class public final Lcom/truecaller/api/services/survey/AcsGeneric;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/survey/AcsGeneric$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/survey/AcsGeneric;",
        "Lcom/truecaller/api/services/survey/AcsGeneric$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/survey/AcsGeneric;",
            ">;"
        }
    .end annotation
.end field

.field public static final PHONEBOOK_STATUS_FIELD_NUMBER:I = 0x4

.field public static final SHOW_IF_MISSED_FIELD_NUMBER:I = 0x2

.field public static final SHOW_IF_OUTGOING_FIELD_NUMBER:I = 0x3

.field public static final SHOW_IF_PICKED_UP_FIELD_NUMBER:I = 0x1


# instance fields
.field private phonebookStatus_:I

.field private showIfMissed_:Z

.field private showIfOutgoing_:Z

.field private showIfPickedUp_:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/survey/AcsGeneric;

    invoke-direct {v0}, Lcom/truecaller/api/services/survey/AcsGeneric;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/survey/AcsGeneric;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

    .line 3
    const-class v1, Lcom/truecaller/api/services/survey/AcsGeneric;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/truecaller/api/services/survey/AcsGeneric;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/AcsGeneric;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/truecaller/api/services/survey/AcsGeneric;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/AcsGeneric;->setShowIfPickedUp(Z)V

    return-void
.end method

.method public static synthetic access$200(Lcom/truecaller/api/services/survey/AcsGeneric;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/AcsGeneric;->clearShowIfPickedUp()V

    return-void
.end method

.method public static synthetic access$300(Lcom/truecaller/api/services/survey/AcsGeneric;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/AcsGeneric;->setShowIfMissed(Z)V

    return-void
.end method

.method public static synthetic access$400(Lcom/truecaller/api/services/survey/AcsGeneric;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/AcsGeneric;->clearShowIfMissed()V

    return-void
.end method

.method public static synthetic access$500(Lcom/truecaller/api/services/survey/AcsGeneric;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/AcsGeneric;->setShowIfOutgoing(Z)V

    return-void
.end method

.method public static synthetic access$600(Lcom/truecaller/api/services/survey/AcsGeneric;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/AcsGeneric;->clearShowIfOutgoing()V

    return-void
.end method

.method public static synthetic access$700(Lcom/truecaller/api/services/survey/AcsGeneric;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/AcsGeneric;->setPhonebookStatusValue(I)V

    return-void
.end method

.method public static synthetic access$800(Lcom/truecaller/api/services/survey/AcsGeneric;Lcom/truecaller/api/services/survey/PhonebookStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/survey/AcsGeneric;->setPhonebookStatus(Lcom/truecaller/api/services/survey/PhonebookStatus;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/truecaller/api/services/survey/AcsGeneric;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/survey/AcsGeneric;->clearPhonebookStatus()V

    return-void
.end method

.method private clearPhonebookStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/survey/AcsGeneric;->phonebookStatus_:I

    return-void
.end method

.method private clearShowIfMissed()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/truecaller/api/services/survey/AcsGeneric;->showIfMissed_:Z

    return-void
.end method

.method private clearShowIfOutgoing()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/truecaller/api/services/survey/AcsGeneric;->showIfOutgoing_:Z

    return-void
.end method

.method private clearShowIfPickedUp()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/truecaller/api/services/survey/AcsGeneric;->showIfPickedUp_:Z

    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/survey/AcsGeneric;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/AcsGeneric;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

    return-object v0
.end method

.method public static newBuilder()Lcom/truecaller/api/services/survey/AcsGeneric$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/AcsGeneric;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/survey/AcsGeneric$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/survey/AcsGeneric;)Lcom/truecaller/api/services/survey/AcsGeneric$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/survey/AcsGeneric;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/AcsGeneric$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/survey/AcsGeneric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/AcsGeneric;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/AcsGeneric;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/AcsGeneric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/survey/AcsGeneric;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/AcsGeneric;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/survey/AcsGeneric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/survey/AcsGeneric;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/AcsGeneric;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/AcsGeneric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/survey/AcsGeneric;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/AcsGeneric;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/survey/AcsGeneric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/survey/AcsGeneric;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/AcsGeneric;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/AcsGeneric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/survey/AcsGeneric;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/AcsGeneric;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/survey/AcsGeneric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/survey/AcsGeneric;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/AcsGeneric;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/AcsGeneric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/survey/AcsGeneric;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/AcsGeneric;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/survey/AcsGeneric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/AcsGeneric;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/AcsGeneric;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/AcsGeneric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/survey/AcsGeneric;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/AcsGeneric;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/survey/AcsGeneric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/survey/AcsGeneric;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/AcsGeneric;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/survey/AcsGeneric;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/survey/AcsGeneric;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/AcsGeneric;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/survey/AcsGeneric;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/AcsGeneric;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setPhonebookStatus(Lcom/truecaller/api/services/survey/PhonebookStatus;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/api/services/survey/PhonebookStatus;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/truecaller/api/services/survey/AcsGeneric;->phonebookStatus_:I

    return-void
.end method

.method private setPhonebookStatusValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/survey/AcsGeneric;->phonebookStatus_:I

    return-void
.end method

.method private setShowIfMissed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/api/services/survey/AcsGeneric;->showIfMissed_:Z

    return-void
.end method

.method private setShowIfOutgoing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/api/services/survey/AcsGeneric;->showIfOutgoing_:Z

    return-void
.end method

.method private setShowIfPickedUp(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/api/services/survey/AcsGeneric;->showIfPickedUp_:Z

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
    sget-object p1, Lcom/truecaller/api/services/survey/AcsGeneric;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/survey/AcsGeneric;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/survey/AcsGeneric;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/survey/AcsGeneric;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/survey/AcsGeneric;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/survey/AcsGeneric;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "showIfPickedUp_"

    aput-object v0, p1, p3

    const-string p3, "showIfMissed_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "showIfOutgoing_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "phonebookStatus_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0007\u0002\u0007\u0003\u0007\u0004\u000c"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/survey/AcsGeneric;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/survey/AcsGeneric;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/survey/AcsGeneric$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/survey/AcsGeneric$b;-><init>(Lcom/truecaller/api/services/survey/AcsGeneric$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/survey/AcsGeneric;

    invoke-direct {p1}, Lcom/truecaller/api/services/survey/AcsGeneric;-><init>()V

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

.method public getPhonebookStatus()Lcom/truecaller/api/services/survey/PhonebookStatus;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/AcsGeneric;->phonebookStatus_:I

    invoke-static {v0}, Lcom/truecaller/api/services/survey/PhonebookStatus;->forNumber(I)Lcom/truecaller/api/services/survey/PhonebookStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/truecaller/api/services/survey/PhonebookStatus;->UNRECOGNIZED:Lcom/truecaller/api/services/survey/PhonebookStatus;

    :cond_0
    return-object v0
.end method

.method public getPhonebookStatusValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/AcsGeneric;->phonebookStatus_:I

    return v0
.end method

.method public getShowIfMissed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/api/services/survey/AcsGeneric;->showIfMissed_:Z

    return v0
.end method

.method public getShowIfOutgoing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/api/services/survey/AcsGeneric;->showIfOutgoing_:Z

    return v0
.end method

.method public getShowIfPickedUp()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/api/services/survey/AcsGeneric;->showIfPickedUp_:Z

    return v0
.end method
