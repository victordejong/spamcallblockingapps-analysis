.class public final Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$b;,
        Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$AvatarInfoCase;,
        Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;,
        Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;",
        "Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final AVATARUNCHANGED_FIELD_NUMBER:I = 0x4

.field public static final AVATAR_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;",
            ">;"
        }
    .end annotation
.end field

.field public static final TITLEUNCHANGED_FIELD_NUMBER:I = 0x3

.field public static final TITLE_FIELD_NUMBER:I = 0x1


# instance fields
.field private avatarInfoCase_:I

.field private avatarInfo_:Ljava/lang/Object;

.field private titleInfoCase_:I

.field private titleInfo_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    .line 3
    const-class v1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfoCase_:I

    .line 3
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfoCase_:I

    return-void
.end method

.method public static synthetic access$1000(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->clearTitleUnchanged()V

    return-void
.end method

.method public static synthetic access$1100(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->setAvatar(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->clearAvatar()V

    return-void
.end method

.method public static synthetic access$1300(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->setAvatarBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$1400(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->setAvatarUnchanged(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->mergeAvatarUnchanged(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->clearAvatarUnchanged()V

    return-void
.end method

.method public static synthetic access$200()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    return-object v0
.end method

.method public static synthetic access$300(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->clearTitleInfo()V

    return-void
.end method

.method public static synthetic access$400(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->clearAvatarInfo()V

    return-void
.end method

.method public static synthetic access$500(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->setTitle(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->clearTitle()V

    return-void
.end method

.method public static synthetic access$700(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->setTitleBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->setTitleUnchanged(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->mergeTitleUnchanged(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;)V

    return-void
.end method

.method private clearAvatar()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfoCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfoCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfo_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearAvatarInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfoCase_:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfo_:Ljava/lang/Object;

    return-void
.end method

.method private clearAvatarUnchanged()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfoCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfoCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfo_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTitle()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfoCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfoCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfo_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTitleInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfoCase_:I

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfo_:Ljava/lang/Object;

    return-void
.end method

.method private clearTitleUnchanged()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfoCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfoCase_:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfo_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    return-object v0
.end method

.method private mergeAvatarUnchanged(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfoCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfo_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfo_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfo_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfo_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfoCase_:I

    return-void
.end method

.method private mergeTitleUnchanged(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfoCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfo_:Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 4
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfo_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;->newBuilder(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged$a;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged$a;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfo_:Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfo_:Ljava/lang/Object;

    .line 7
    :goto_0
    iput v1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfoCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$b;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$b;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$b;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAvatar(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfoCase_:I

    .line 3
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfo_:Ljava/lang/Object;

    return-void
.end method

.method private setAvatarBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfo_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfoCase_:I

    return-void
.end method

.method private setAvatarUnchanged(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfo_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfoCase_:I

    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfoCase_:I

    .line 3
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfo_:Ljava/lang/Object;

    return-void
.end method

.method private setTitleBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfo_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfoCase_:I

    return-void
.end method

.method private setTitleUnchanged(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfo_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 3
    iput p1, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfoCase_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-class p2, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p3, 0x1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object v0

    .line 3
    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4
    :pswitch_2
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "titleInfo_"

    aput-object v1, p1, v0

    const-string v0, "titleInfoCase_"

    aput-object v0, p1, p3

    const/4 p3, 0x2

    const-string v0, "avatarInfo_"

    aput-object v0, p1, p3

    const/4 p3, 0x3

    const-string v0, "avatarInfoCase_"

    aput-object v0, p1, p3

    const/4 p3, 0x4

    aput-object p2, p1, p3

    const/4 p3, 0x5

    aput-object p2, p1, p3

    const-string p2, "\u0000\u0004\u0002\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u023b\u0000\u0002\u023b\u0001\u0003<\u0000\u0004<\u0001"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$b;

    invoke-direct {p1, v0}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$b;-><init>(Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;

    invoke-direct {p1}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;-><init>()V

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

.method public getAvatar()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfoCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfo_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getAvatarBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfoCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfo_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getAvatarInfoCase()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$AvatarInfoCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfoCase_:I

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$AvatarInfoCase;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$AvatarInfoCase;

    move-result-object v0

    return-object v0
.end method

.method public getAvatarUnchanged()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfoCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfo_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfoCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfo_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public getTitleBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfoCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfo_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getTitleInfoCase()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfoCase_:I

    invoke-static {v0}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$TitleInfoCase;

    move-result-object v0

    return-object v0
.end method

.method public getTitleUnchanged()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfoCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfo_:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;->getDefaultInstance()Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta$Unchanged;

    move-result-object v0

    return-object v0
.end method

.method public hasAvatar()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfoCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasAvatarUnchanged()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->avatarInfoCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTitle()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfoCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTitleUnchanged()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/GroupInfoDelta;->titleInfoCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
