.class public final Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Animation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

.field public static final GIF_NANO_FIELD_NUMBER:I = 0x3

.field public static final GIF_TINY_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;",
            ">;"
        }
    .end annotation
.end field

.field public static final THUMBNAIL_FIELD_NUMBER:I = 0x1


# instance fields
.field private gifNano_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

.field private gifTiny_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

.field private thumbnail_:Lcom/google/protobuf/ByteString;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->thumbnail_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static synthetic access$8400()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    return-object v0
.end method

.method public static synthetic access$8500(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->setThumbnail(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$8600(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->clearThumbnail()V

    return-void
.end method

.method public static synthetic access$8700(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->setGifTiny(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;)V

    return-void
.end method

.method public static synthetic access$8800(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->mergeGifTiny(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;)V

    return-void
.end method

.method public static synthetic access$8900(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->clearGifTiny()V

    return-void
.end method

.method public static synthetic access$9000(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->setGifNano(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;)V

    return-void
.end method

.method public static synthetic access$9100(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->mergeGifNano(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;)V

    return-void
.end method

.method public static synthetic access$9200(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->clearGifNano()V

    return-void
.end method

.method private clearGifNano()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->gifNano_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    return-void
.end method

.method private clearGifTiny()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->gifTiny_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    return-void
.end method

.method private clearThumbnail()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->getThumbnail()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->thumbnail_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    return-object v0
.end method

.method private mergeGifNano(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->gifNano_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->gifNano_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->gifNano_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->gifNano_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    :goto_0
    return-void
.end method

.method private mergeGifTiny(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->gifTiny_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->gifTiny_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    .line 5
    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->gifTiny_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->gifTiny_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setGifNano(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->gifNano_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    return-void
.end method

.method private setGifTiny(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->gifTiny_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    return-void
.end method

.method private setThumbnail(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->thumbnail_:Lcom/google/protobuf/ByteString;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "thumbnail_"

    aput-object v0, p1, p3

    const-string p3, "gifTiny_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "gifNano_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\n\u0002\t\u0003\t"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation$a;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation$a;-><init>(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;-><init>()V

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

.method public getGifNano()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->gifNano_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getGifTiny()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->gifTiny_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getThumbnail()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->thumbnail_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasGifNano()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->gifNano_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasGifTiny()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Animation;->gifTiny_:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$AnimationVariant;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
