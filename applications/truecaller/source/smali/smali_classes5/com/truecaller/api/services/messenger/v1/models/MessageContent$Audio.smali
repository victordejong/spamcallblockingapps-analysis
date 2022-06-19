.class public final Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/models/MessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Audio"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$a;,
        Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$ExtCase;,
        Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$PodcastExt;,
        Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$MusicExt;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;",
        "Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

.field public static final DURATION_FIELD_NUMBER:I = 0x4

.field public static final MIMETYPE_FIELD_NUMBER:I = 0x1

.field public static final MUSIC_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;",
            ">;"
        }
    .end annotation
.end field

.field public static final PODCAST_FIELD_NUMBER:I = 0x6

.field public static final SIZE_FIELD_NUMBER:I = 0x3

.field public static final URI_FIELD_NUMBER:I = 0x2


# instance fields
.field private duration_:I

.field private extCase_:I

.field private ext_:Ljava/lang/Object;

.field private mimeType_:Ljava/lang/String;

.field private size_:I

.field private uri_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->extCase_:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->mimeType_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->uri_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$13000()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    return-object v0
.end method

.method public static synthetic access$13100(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->clearExt()V

    return-void
.end method

.method public static synthetic access$13200(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->setMimeType(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$13300(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->clearMimeType()V

    return-void
.end method

.method public static synthetic access$13400(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->setMimeTypeBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$13500(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->setUri(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$13600(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->clearUri()V

    return-void
.end method

.method public static synthetic access$13700(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->setUriBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$13800(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->setSize(I)V

    return-void
.end method

.method public static synthetic access$13900(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->clearSize()V

    return-void
.end method

.method public static synthetic access$14000(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->setDuration(I)V

    return-void
.end method

.method public static synthetic access$14100(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->clearDuration()V

    return-void
.end method

.method public static synthetic access$14200(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$MusicExt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->setMusic(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$MusicExt;)V

    return-void
.end method

.method public static synthetic access$14300(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$MusicExt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->mergeMusic(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$MusicExt;)V

    return-void
.end method

.method public static synthetic access$14400(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->clearMusic()V

    return-void
.end method

.method public static synthetic access$14500(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$PodcastExt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->setPodcast(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$PodcastExt;)V

    return-void
.end method

.method public static synthetic access$14600(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$PodcastExt;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->mergePodcast(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$PodcastExt;)V

    return-void
.end method

.method public static synthetic access$14700(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->clearPodcast()V

    return-void
.end method

.method private clearDuration()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->duration_:I

    return-void
.end method

.method private clearExt()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->extCase_:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->ext_:Ljava/lang/Object;

    return-void
.end method

.method private clearMimeType()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->mimeType_:Ljava/lang/String;

    return-void
.end method

.method private clearMusic()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->extCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->extCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->ext_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearPodcast()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->extCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->extCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->ext_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearSize()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->size_:I

    return-void
.end method

.method private clearUri()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->getUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->uri_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    return-object v0
.end method

.method private mergeMusic(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$MusicExt;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->extCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->ext_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$MusicExt;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$MusicExt;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->ext_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$MusicExt;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$MusicExt;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$MusicExt;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$MusicExt$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$MusicExt$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->ext_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->ext_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->extCase_:I

    return-void
.end method

.method private mergePodcast(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$PodcastExt;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->extCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->ext_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$PodcastExt;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$PodcastExt;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->ext_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$PodcastExt;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$PodcastExt;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$PodcastExt;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$PodcastExt$b;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$PodcastExt$b;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->ext_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->ext_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->extCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->duration_:I

    return-void
.end method

.method private setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->mimeType_:Ljava/lang/String;

    return-void
.end method

.method private setMimeTypeBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->mimeType_:Ljava/lang/String;

    return-void
.end method

.method private setMusic(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$MusicExt;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->ext_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->extCase_:I

    return-void
.end method

.method private setPodcast(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$PodcastExt;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->ext_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->extCase_:I

    return-void
.end method

.method private setSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->size_:I

    return-void
.end method

.method private setUri(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->uri_:Ljava/lang/String;

    return-void
.end method

.method private setUriBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->uri_:Ljava/lang/String;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "ext_"

    aput-object v0, p1, p3

    const-string p3, "extCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "mimeType_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "uri_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "size_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "duration_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 11
    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$MusicExt;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$PodcastExt;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0001\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0004\u0004\u0004\u0005<\u0000\u0006<\u0000"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$a;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$a;-><init>(Lcom/truecaller/api/services/messenger/v1/models/MessageContent$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;-><init>()V

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

.method public getDuration()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->duration_:I

    return v0
.end method

.method public getExtCase()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$ExtCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->extCase_:I

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$ExtCase;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$ExtCase;

    move-result-object v0

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->mimeType_:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->mimeType_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getMusic()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$MusicExt;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->extCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->ext_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$MusicExt;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$MusicExt;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$MusicExt;

    move-result-object v0

    return-object v0
.end method

.method public getPodcast()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$PodcastExt;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->extCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->ext_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$PodcastExt;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$PodcastExt;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio$PodcastExt;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->size_:I

    return v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->uri_:Ljava/lang/String;

    return-object v0
.end method

.method public getUriBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->uri_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasMusic()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->extCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPodcast()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$Audio;->extCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
