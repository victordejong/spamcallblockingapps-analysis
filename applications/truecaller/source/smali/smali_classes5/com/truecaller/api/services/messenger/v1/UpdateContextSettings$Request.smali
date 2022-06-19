.class public final Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$a;,
        Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$ValueCase;,
        Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;,
        Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate;,
        Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;",
        "Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPDATE_GLOBAL_CONTEXT_FIELD_NUMBER:I = 0x1

.field public static final UPDATE_GROUP_CONTEXT_FIELD_NUMBER:I = 0x3

.field public static final UPDATE_ONE_TO_ONE_CONTEXT_FIELD_NUMBER:I = 0x2


# instance fields
.field private valueCase_:I

.field private value_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    return-void
.end method

.method public static synthetic access$2000()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    return-object v0
.end method

.method public static synthetic access$2100(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->clearValue()V

    return-void
.end method

.method public static synthetic access$2200(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->setUpdateGlobalContext(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;)V

    return-void
.end method

.method public static synthetic access$2300(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->mergeUpdateGlobalContext(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;)V

    return-void
.end method

.method public static synthetic access$2400(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->clearUpdateGlobalContext()V

    return-void
.end method

.method public static synthetic access$2500(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->setUpdateOneToOneContext(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate;)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->mergeUpdateOneToOneContext(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate;)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->clearUpdateOneToOneContext()V

    return-void
.end method

.method public static synthetic access$2800(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->setUpdateGroupContext(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;)V

    return-void
.end method

.method public static synthetic access$2900(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->mergeUpdateGroupContext(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;)V

    return-void
.end method

.method public static synthetic access$3000(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->clearUpdateGroupContext()V

    return-void
.end method

.method private clearUpdateGlobalContext()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearUpdateGroupContext()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearUpdateOneToOneContext()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearValue()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    return-object v0
.end method

.method private mergeUpdateGlobalContext(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;->newBuilder(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    return-void
.end method

.method private mergeUpdateGroupContext(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->newBuilder(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    return-void
.end method

.method private mergeUpdateOneToOneContext(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate;->newBuilder(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setUpdateGlobalContext(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    return-void
.end method

.method private setUpdateGroupContext(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    return-void
.end method

.method private setUpdateOneToOneContext(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "value_"

    aput-object v0, p1, p3

    const-string p3, "valueCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 11
    const-class p3, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$a;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$a;-><init>(Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;-><init>()V

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

.method public getUpdateGlobalContext()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGlobalContextSettingsUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateGroupContext()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputGroupContextSettingsUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getUpdateOneToOneContext()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->value_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$InputOneToOneContextSettingsUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getValueCase()Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$ValueCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$ValueCase;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public hasUpdateGlobalContext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasUpdateGroupContext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUpdateOneToOneContext()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/UpdateContextSettings$Request;->valueCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
