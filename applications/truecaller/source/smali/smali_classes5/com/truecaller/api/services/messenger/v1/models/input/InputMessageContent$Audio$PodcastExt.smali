.class public final Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PodcastExt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$b;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$Bookmark;,
        Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BOOKMARKS_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

.field public static final DESCRIPTION_FIELD_NUMBER:I = 0x4

.field public static final EPISODE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEASON_FIELD_NUMBER:I = 0x2

.field public static final TITLE_FIELD_NUMBER:I = 0x1


# instance fields
.field private bookmarks_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$Bookmark;",
            ">;"
        }
    .end annotation
.end field

.field private description_:Ljava/lang/String;

.field private episode_:I

.field private season_:I

.field private title_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->title_:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->description_:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->bookmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method public static synthetic access$11200()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    return-object v0
.end method

.method public static synthetic access$11300(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$11400(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->clearTitle()V

    return-void
.end method

.method public static synthetic access$11500(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->setTitleBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$11600(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->setSeason(I)V

    return-void
.end method

.method public static synthetic access$11700(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->clearSeason()V

    return-void
.end method

.method public static synthetic access$11800(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->setEpisode(I)V

    return-void
.end method

.method public static synthetic access$11900(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->clearEpisode()V

    return-void
.end method

.method public static synthetic access$12000(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$12100(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->clearDescription()V

    return-void
.end method

.method public static synthetic access$12200(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->setDescriptionBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$12300(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;ILcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$Bookmark;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->setBookmarks(ILcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$Bookmark;)V

    return-void
.end method

.method public static synthetic access$12400(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$Bookmark;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->addBookmarks(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$Bookmark;)V

    return-void
.end method

.method public static synthetic access$12500(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;ILcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$Bookmark;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->addBookmarks(ILcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$Bookmark;)V

    return-void
.end method

.method public static synthetic access$12600(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->addAllBookmarks(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static synthetic access$12700(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->clearBookmarks()V

    return-void
.end method

.method public static synthetic access$12800(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->removeBookmarks(I)V

    return-void
.end method

.method private addAllBookmarks(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$Bookmark;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->ensureBookmarksIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->bookmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addBookmarks(ILcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$Bookmark;)V
    .locals 1

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->ensureBookmarksIsMutable()V

    .line 6
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->bookmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addBookmarks(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$Bookmark;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->ensureBookmarksIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->bookmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearBookmarks()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->bookmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearDescription()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->description_:Ljava/lang/String;

    return-void
.end method

.method private clearEpisode()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->episode_:I

    return-void
.end method

.method private clearSeason()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->season_:I

    return-void
.end method

.method private clearTitle()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->title_:Ljava/lang/String;

    return-void
.end method

.method private ensureBookmarksIsMutable()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->bookmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->bookmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    return-object v0
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeBookmarks(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->ensureBookmarksIsMutable()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->bookmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setBookmarks(ILcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$Bookmark;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->ensureBookmarksIsMutable()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->bookmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->description_:Ljava/lang/String;

    return-void
.end method

.method private setDescriptionBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->description_:Ljava/lang/String;

    return-void
.end method

.method private setEpisode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->episode_:I

    return-void
.end method

.method private setSeason(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->season_:I

    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->title_:Ljava/lang/String;

    return-void
.end method

.method private setTitleBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->title_:Ljava/lang/String;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "title_"

    aput-object v0, p1, p3

    const-string p3, "season_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "episode_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "description_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "bookmarks_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    .line 11
    const-class p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$Bookmark;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u0208\u0002\u0004\u0003\u0004\u0004\u0208\u0005\u001b"

    .line 12
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$b;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$b;-><init>(Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$a;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;-><init>()V

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

.method public getBookmarks(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$Bookmark;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->bookmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$Bookmark;

    return-object p1
.end method

.method public getBookmarksCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->bookmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getBookmarksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$Bookmark;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->bookmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getBookmarksOrBuilder(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->bookmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$a;

    return-object p1
.end method

.method public getBookmarksOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->bookmarks_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDescriptionBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->description_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEpisode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->episode_:I

    return v0
.end method

.method public getSeason()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->season_:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->title_:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputMessageContent$Audio$PodcastExt;->title_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method
