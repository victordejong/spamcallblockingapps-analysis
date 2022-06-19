.class public final Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Le/a/t2/a/f/a/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$b;,
        Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$StockStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;",
        "Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$b;",
        ">;",
        "Le/a/t2/a/f/a/c/a;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final IN_STOCK_AT_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final STOCK_STATUS_FIELD_NUMBER:I = 0x2


# instance fields
.field private id_:I

.field private inStockAt_:I

.field private stockStatus_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    invoke-direct {v0}, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    .line 3
    const-class v1, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method public static synthetic access$000()Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->setId(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->clearId()V

    return-void
.end method

.method public static synthetic access$300(Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->setStockStatusValue(I)V

    return-void
.end method

.method public static synthetic access$400(Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$StockStatus;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->setStockStatus(Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$StockStatus;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->clearStockStatus()V

    return-void
.end method

.method public static synthetic access$600(Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->setInStockAt(I)V

    return-void
.end method

.method public static synthetic access$700(Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->clearInStockAt()V

    return-void
.end method

.method private clearId()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->id_:I

    return-void
.end method

.method private clearInStockAt()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->inStockAt_:I

    return-void
.end method

.method private clearStockStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->stockStatus_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    return-object v0
.end method

.method public static newBuilder()Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;)Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->id_:I

    return-void
.end method

.method private setInStockAt(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->inStockAt_:I

    return-void
.end method

.method private setStockStatus(Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$StockStatus;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$StockStatus;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->stockStatus_:I

    return-void
.end method

.method private setStockStatusValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->stockStatus_:I

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
    sget-object p1, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "id_"

    aput-object v0, p1, p3

    const-string p3, "stockStatus_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "inStockAt_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0002\u000c\u0003\u0006"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$b;-><init>(Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;

    invoke-direct {p1}, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;-><init>()V

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

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->id_:I

    return v0
.end method

.method public getInStockAt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->inStockAt_:I

    return v0
.end method

.method public getStockStatus()Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$StockStatus;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->stockStatus_:I

    invoke-static {v0}, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$StockStatus;->forNumber(I)Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$StockStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$StockStatus;->UNRECOGNIZED:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem$StockStatus;

    :cond_0
    return-object v0
.end method

.method public getStockStatusValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupplyItem;->stockStatus_:I

    return v0
.end method
