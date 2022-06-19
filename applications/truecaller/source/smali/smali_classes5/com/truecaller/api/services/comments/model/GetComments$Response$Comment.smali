.class public final Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/api/services/comments/model/GetComments$Response$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/comments/model/GetComments$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Comment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$a;,
        Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;",
        "Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$a;",
        ">;",
        "Lcom/truecaller/api/services/comments/model/GetComments$Response$b;"
    }
.end annotation


# static fields
.field public static final ANONYMOUS_FIELD_NUMBER:I = 0x6

.field public static final AVATARURL_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

.field public static final DOWNVOTED_FIELD_NUMBER:I = 0xb

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final LANGUAGE_FIELD_NUMBER:I = 0x5

.field public static final NAME_FIELD_NUMBER:I = 0x2

.field public static final NUMDOWNVOTES_FIELD_NUMBER:I = 0x9

.field public static final NUMUPVOTES_FIELD_NUMBER:I = 0x8

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSTEDON_FIELD_NUMBER:I = 0x7

.field public static final TEXT_FIELD_NUMBER:I = 0x4

.field public static final UPVOTED_FIELD_NUMBER:I = 0xa


# instance fields
.field private anonymous_:Z

.field private avatarUrl_:Ljava/lang/String;

.field private id_:Ljava/lang/String;

.field private language_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private numDownvotes_:I

.field private numUpvotes_:I

.field private postedOn_:J

.field private requestorVoteCase_:I

.field private requestorVote_:Ljava/lang/Object;

.field private text_:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    invoke-direct {v0}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    .line 3
    const-class v1, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->requestorVoteCase_:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->id_:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->name_:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->avatarUrl_:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->text_:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->language_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$2100()Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    return-object v0
.end method

.method public static synthetic access$2200(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->clearRequestorVote()V

    return-void
.end method

.method public static synthetic access$2300(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2400(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->clearId()V

    return-void
.end method

.method public static synthetic access$2500(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->setIdBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2600(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$2700(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->clearName()V

    return-void
.end method

.method public static synthetic access$2800(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->setNameBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$2900(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->setAvatarUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$3000(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->clearAvatarUrl()V

    return-void
.end method

.method public static synthetic access$3100(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->setAvatarUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3200(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$3300(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->clearText()V

    return-void
.end method

.method public static synthetic access$3400(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->setTextBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3500(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$3600(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->clearLanguage()V

    return-void
.end method

.method public static synthetic access$3700(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->setLanguageBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$3800(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->setAnonymous(Z)V

    return-void
.end method

.method public static synthetic access$3900(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->clearAnonymous()V

    return-void
.end method

.method public static synthetic access$4000(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->setPostedOn(J)V

    return-void
.end method

.method public static synthetic access$4100(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->clearPostedOn()V

    return-void
.end method

.method public static synthetic access$4200(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->setNumUpvotes(I)V

    return-void
.end method

.method public static synthetic access$4300(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->clearNumUpvotes()V

    return-void
.end method

.method public static synthetic access$4400(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->setNumDownvotes(I)V

    return-void
.end method

.method public static synthetic access$4500(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->clearNumDownvotes()V

    return-void
.end method

.method public static synthetic access$4600(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->setUpvoted(Z)V

    return-void
.end method

.method public static synthetic access$4700(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->clearUpvoted()V

    return-void
.end method

.method public static synthetic access$4800(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->setDownvoted(Z)V

    return-void
.end method

.method public static synthetic access$4900(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->clearDownvoted()V

    return-void
.end method

.method private clearAnonymous()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->anonymous_:Z

    return-void
.end method

.method private clearAvatarUrl()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->getDefaultInstance()Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->avatarUrl_:Ljava/lang/String;

    return-void
.end method

.method private clearDownvoted()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->requestorVoteCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->requestorVoteCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->requestorVote_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->getDefaultInstance()Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->id_:Ljava/lang/String;

    return-void
.end method

.method private clearLanguage()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->getDefaultInstance()Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->language_:Ljava/lang/String;

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->getDefaultInstance()Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearNumDownvotes()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->numDownvotes_:I

    return-void
.end method

.method private clearNumUpvotes()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->numUpvotes_:I

    return-void
.end method

.method private clearPostedOn()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->postedOn_:J

    return-void
.end method

.method private clearRequestorVote()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->requestorVoteCase_:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->requestorVote_:Ljava/lang/Object;

    return-void
.end method

.method private clearText()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->getDefaultInstance()Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->text_:Ljava/lang/String;

    return-void
.end method

.method private clearUpvoted()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->requestorVoteCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->requestorVoteCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->requestorVote_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    return-object v0
.end method

.method public static newBuilder()Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;)Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAnonymous(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->anonymous_:Z

    return-void
.end method

.method private setAvatarUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->avatarUrl_:Ljava/lang/String;

    return-void
.end method

.method private setAvatarUrlBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->avatarUrl_:Ljava/lang/String;

    return-void
.end method

.method private setDownvoted(Z)V
    .locals 1

    const/16 v0, 0xb

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->requestorVoteCase_:I

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->requestorVote_:Ljava/lang/Object;

    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->id_:Ljava/lang/String;

    return-void
.end method

.method private setIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->id_:Ljava/lang/String;

    return-void
.end method

.method private setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->language_:Ljava/lang/String;

    return-void
.end method

.method private setLanguageBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->language_:Ljava/lang/String;

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNumDownvotes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->numDownvotes_:I

    return-void
.end method

.method private setNumUpvotes(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->numUpvotes_:I

    return-void
.end method

.method private setPostedOn(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->postedOn_:J

    return-void
.end method

.method private setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->text_:Ljava/lang/String;

    return-void
.end method

.method private setTextBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->text_:Ljava/lang/String;

    return-void
.end method

.method private setUpvoted(Z)V
    .locals 1

    const/16 v0, 0xa

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->requestorVoteCase_:I

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->requestorVote_:Ljava/lang/Object;

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
    sget-object p1, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    return-object p1

    :pswitch_4
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "requestorVote_"

    aput-object v0, p1, p3

    const-string p3, "requestorVoteCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "id_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "name_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "avatarUrl_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "text_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "language_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "anonymous_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "postedOn_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "numUpvotes_"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "numDownvotes_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u000b\u0001\u0000\u0001\u000b\u000b\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u0208\u0005\u0208\u0006\u0007\u0007\u0002\u0008\u0004\t\u0004\n:\u0000\u000b:\u0000"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$a;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$a;-><init>(Lcom/truecaller/api/services/comments/model/GetComments$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;

    invoke-direct {p1}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;-><init>()V

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

.method public getAnonymous()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->anonymous_:Z

    return v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->avatarUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->avatarUrl_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getDownvoted()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->requestorVoteCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->requestorVote_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->id_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->language_:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->language_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumDownvotes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->numDownvotes_:I

    return v0
.end method

.method public getNumUpvotes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->numUpvotes_:I

    return v0
.end method

.method public getPostedOn()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->postedOn_:J

    return-wide v0
.end method

.method public getRequestorVoteCase()Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->requestorVoteCase_:I

    invoke-static {v0}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;->forNumber(I)Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->text_:Ljava/lang/String;

    return-object v0
.end method

.method public getTextBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->text_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getUpvoted()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->requestorVoteCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->requestorVote_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasDownvoted()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->requestorVoteCase_:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasUpvoted()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;->requestorVoteCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
