.class public final Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$b;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

.field public static final MARKED_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;",
            ">;"
        }
    .end annotation
.end field

.field public static final PEER_FIELD_NUMBER:I = 0x2


# instance fields
.field private scopeCase_:I

.field private scope_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scopeCase_:I

    return-void
.end method

.method public static synthetic access$1000(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->setMarked(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->mergeMarked(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->clearMarked()V

    return-void
.end method

.method public static synthetic access$1300(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->setPeer(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->mergePeer(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->clearPeer()V

    return-void
.end method

.method public static synthetic access$800()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    return-object v0
.end method

.method public static synthetic access$900(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->clearScope()V

    return-void
.end method

.method private clearMarked()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scopeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scopeCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scope_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearPeer()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scopeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scopeCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scope_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearScope()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scopeCase_:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scope_:Ljava/lang/Object;

    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    return-object v0
.end method

.method private mergeMarked(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scopeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scope_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scope_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scope_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scope_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scopeCase_:I

    return-void
.end method

.method private mergePeer(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scopeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scope_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scope_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scope_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scope_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scopeCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setMarked(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scope_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scopeCase_:I

    return-void
.end method

.method private setPeer(Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scope_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scopeCase_:I

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "scope_"

    aput-object v0, p1, p3

    const-string p3, "scopeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 11
    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$b;-><init>(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;-><init>()V

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

.method public getMarked()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scopeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scope_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$Marked;

    move-result-object v0

    return-object v0
.end method

.method public getPeer()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scopeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scope_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputPeer;

    move-result-object v0

    return-object v0
.end method

.method public getScopeCase()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scopeCase_:I

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection$ScopeCase;

    move-result-object v0

    return-object v0
.end method

.method public hasMarked()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scopeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPeer()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageSelection;->scopeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
