.class public final Lcom/truecaller/api/services/comments/model/GetComments$Request;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/comments/model/GetComments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/comments/model/GetComments$Request$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/truecaller/api/services/comments/model/GetComments$Request;",
        "Lcom/truecaller/api/services/comments/model/GetComments$Request$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

.field public static final LANGUAGE_FIELD_NUMBER:I = 0x2

.field public static final NUMBERTYPE_FIELD_NUMBER:I = 0x3

.field public static final NUMBER_FIELD_NUMBER:I = 0x1

.field public static final PAGEID_FIELD_NUMBER:I = 0xc

.field public static final PAGESIZE_FIELD_NUMBER:I = 0xa

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/comments/model/GetComments$Request;",
            ">;"
        }
    .end annotation
.end field

.field public static final SORTBY_FIELD_NUMBER:I = 0xd

.field public static final SORTORDER_FIELD_NUMBER:I = 0xe


# instance fields
.field private language_:Ljava/lang/String;

.field private numberType_:I

.field private number_:Ljava/lang/String;

.field private pageId_:J

.field private pageSize_:I

.field private sortBy_:I

.field private sortOrder_:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-direct {v0}, Lcom/truecaller/api/services/comments/model/GetComments$Request;-><init>()V

    .line 2
    sput-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

    .line 3
    const-class v1, Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->number_:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->language_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000()Lcom/truecaller/api/services/comments/model/GetComments$Request;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/truecaller/api/services/comments/model/GetComments$Request;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->setNumber(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$1000(Lcom/truecaller/api/services/comments/model/GetComments$Request;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->setPageSize(I)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/truecaller/api/services/comments/model/GetComments$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->clearPageSize()V

    return-void
.end method

.method public static synthetic access$1200(Lcom/truecaller/api/services/comments/model/GetComments$Request;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->setPageId(J)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/truecaller/api/services/comments/model/GetComments$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->clearPageId()V

    return-void
.end method

.method public static synthetic access$1400(Lcom/truecaller/api/services/comments/model/GetComments$Request;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->setSortByValue(I)V

    return-void
.end method

.method public static synthetic access$1500(Lcom/truecaller/api/services/comments/model/GetComments$Request;Lcom/truecaller/api/services/comments/model/SortBy;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->setSortBy(Lcom/truecaller/api/services/comments/model/SortBy;)V

    return-void
.end method

.method public static synthetic access$1600(Lcom/truecaller/api/services/comments/model/GetComments$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->clearSortBy()V

    return-void
.end method

.method public static synthetic access$1700(Lcom/truecaller/api/services/comments/model/GetComments$Request;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->setSortOrderValue(I)V

    return-void
.end method

.method public static synthetic access$1800(Lcom/truecaller/api/services/comments/model/GetComments$Request;Lcom/truecaller/api/services/comments/model/SortOrder;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->setSortOrder(Lcom/truecaller/api/services/comments/model/SortOrder;)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/truecaller/api/services/comments/model/GetComments$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->clearSortOrder()V

    return-void
.end method

.method public static synthetic access$200(Lcom/truecaller/api/services/comments/model/GetComments$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->clearNumber()V

    return-void
.end method

.method public static synthetic access$300(Lcom/truecaller/api/services/comments/model/GetComments$Request;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->setNumberBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/truecaller/api/services/comments/model/GetComments$Request;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->setLanguage(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$500(Lcom/truecaller/api/services/comments/model/GetComments$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->clearLanguage()V

    return-void
.end method

.method public static synthetic access$600(Lcom/truecaller/api/services/comments/model/GetComments$Request;Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->setLanguageBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static synthetic access$700(Lcom/truecaller/api/services/comments/model/GetComments$Request;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->setNumberTypeValue(I)V

    return-void
.end method

.method public static synthetic access$800(Lcom/truecaller/api/services/comments/model/GetComments$Request;Lcom/truecaller/api/services/comments/model/NumberType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->setNumberType(Lcom/truecaller/api/services/comments/model/NumberType;)V

    return-void
.end method

.method public static synthetic access$900(Lcom/truecaller/api/services/comments/model/GetComments$Request;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->clearNumberType()V

    return-void
.end method

.method private clearLanguage()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->getDefaultInstance()Lcom/truecaller/api/services/comments/model/GetComments$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->getLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->language_:Ljava/lang/String;

    return-void
.end method

.method private clearNumber()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->getDefaultInstance()Lcom/truecaller/api/services/comments/model/GetComments$Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/truecaller/api/services/comments/model/GetComments$Request;->getNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->number_:Ljava/lang/String;

    return-void
.end method

.method private clearNumberType()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->numberType_:I

    return-void
.end method

.method private clearPageId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->pageId_:J

    return-void
.end method

.method private clearPageSize()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->pageSize_:I

    return-void
.end method

.method private clearSortBy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->sortBy_:I

    return-void
.end method

.method private clearSortOrder()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->sortOrder_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/truecaller/api/services/comments/model/GetComments$Request;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

    return-object v0
.end method

.method public static newBuilder()Lcom/truecaller/api/services/comments/model/GetComments$Request$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/truecaller/api/services/comments/model/GetComments$Request$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/truecaller/api/services/comments/model/GetComments$Request;)Lcom/truecaller/api/services/comments/model/GetComments$Request$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Request$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/comments/model/GetComments$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/comments/model/GetComments$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/truecaller/api/services/comments/model/GetComments$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/comments/model/GetComments$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/truecaller/api/services/comments/model/GetComments$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/comments/model/GetComments$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/truecaller/api/services/comments/model/GetComments$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/comments/model/GetComments$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/truecaller/api/services/comments/model/GetComments$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/comments/model/GetComments$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/truecaller/api/services/comments/model/GetComments$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/truecaller/api/services/comments/model/GetComments$Request;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/truecaller/api/services/comments/model/GetComments$Request;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->language_:Ljava/lang/String;

    return-void
.end method

.method private setLanguageBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->language_:Ljava/lang/String;

    return-void
.end method

.method private setNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iput-object p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->number_:Ljava/lang/String;

    return-void
.end method

.method private setNumberBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->number_:Ljava/lang/String;

    return-void
.end method

.method private setNumberType(Lcom/truecaller/api/services/comments/model/NumberType;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/api/services/comments/model/NumberType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->numberType_:I

    return-void
.end method

.method private setNumberTypeValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->numberType_:I

    return-void
.end method

.method private setPageId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->pageId_:J

    return-void
.end method

.method private setPageSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->pageSize_:I

    return-void
.end method

.method private setSortBy(Lcom/truecaller/api/services/comments/model/SortBy;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/api/services/comments/model/SortBy;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->sortBy_:I

    return-void
.end method

.method private setSortByValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->sortBy_:I

    return-void
.end method

.method private setSortOrder(Lcom/truecaller/api/services/comments/model/SortOrder;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/api/services/comments/model/SortOrder;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->sortOrder_:I

    return-void
.end method

.method private setSortOrderValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->sortOrder_:I

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
    sget-object p1, Lcom/truecaller/api/services/comments/model/GetComments$Request;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_1

    .line 5
    const-class p2, Lcom/truecaller/api/services/comments/model/GetComments$Request;

    monitor-enter p2

    .line 6
    :try_start_0
    sget-object p1, Lcom/truecaller/api/services/comments/model/GetComments$Request;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p1, :cond_0

    .line 7
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Lcom/truecaller/api/services/comments/model/GetComments$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 8
    sput-object p1, Lcom/truecaller/api/services/comments/model/GetComments$Request;->PARSER:Lcom/google/protobuf/Parser;

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
    sget-object p1, Lcom/truecaller/api/services/comments/model/GetComments$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "number_"

    aput-object v0, p1, p3

    const-string p3, "language_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "numberType_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "pageSize_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "pageId_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "sortBy_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "sortOrder_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0007\u0000\u0000\u0001\u000e\u0007\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u000c\n\u0004\u000c\u0002\r\u000c\u000e\u000c"

    .line 11
    sget-object p3, Lcom/truecaller/api/services/comments/model/GetComments$Request;->DEFAULT_INSTANCE:Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lcom/truecaller/api/services/comments/model/GetComments$Request$a;

    invoke-direct {p1, p3}, Lcom/truecaller/api/services/comments/model/GetComments$Request$a;-><init>(Lcom/truecaller/api/services/comments/model/GetComments$a;)V

    return-object p1

    .line 13
    :pswitch_6
    new-instance p1, Lcom/truecaller/api/services/comments/model/GetComments$Request;

    invoke-direct {p1}, Lcom/truecaller/api/services/comments/model/GetComments$Request;-><init>()V

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

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->language_:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->language_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->number_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->number_:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNumberType()Lcom/truecaller/api/services/comments/model/NumberType;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->numberType_:I

    invoke-static {v0}, Lcom/truecaller/api/services/comments/model/NumberType;->forNumber(I)Lcom/truecaller/api/services/comments/model/NumberType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/truecaller/api/services/comments/model/NumberType;->UNRECOGNIZED:Lcom/truecaller/api/services/comments/model/NumberType;

    :cond_0
    return-object v0
.end method

.method public getNumberTypeValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->numberType_:I

    return v0
.end method

.method public getPageId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->pageId_:J

    return-wide v0
.end method

.method public getPageSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->pageSize_:I

    return v0
.end method

.method public getSortBy()Lcom/truecaller/api/services/comments/model/SortBy;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->sortBy_:I

    invoke-static {v0}, Lcom/truecaller/api/services/comments/model/SortBy;->forNumber(I)Lcom/truecaller/api/services/comments/model/SortBy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/truecaller/api/services/comments/model/SortBy;->UNRECOGNIZED:Lcom/truecaller/api/services/comments/model/SortBy;

    :cond_0
    return-object v0
.end method

.method public getSortByValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->sortBy_:I

    return v0
.end method

.method public getSortOrder()Lcom/truecaller/api/services/comments/model/SortOrder;
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->sortOrder_:I

    invoke-static {v0}, Lcom/truecaller/api/services/comments/model/SortOrder;->forNumber(I)Lcom/truecaller/api/services/comments/model/SortOrder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/truecaller/api/services/comments/model/SortOrder;->UNRECOGNIZED:Lcom/truecaller/api/services/comments/model/SortOrder;

    :cond_0
    return-object v0
.end method

.method public getSortOrderValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Request;->sortOrder_:I

    return v0
.end method
