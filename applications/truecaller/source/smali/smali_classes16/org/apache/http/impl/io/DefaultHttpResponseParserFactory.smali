.class public Lorg/apache/http/impl/io/DefaultHttpResponseParserFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/io/HttpMessageParserFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/http/io/HttpMessageParserFactory<",
        "Lorg/apache/http/HttpResponse;",
        ">;"
    }
.end annotation

.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE_CONDITIONAL:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# static fields
.field public static final INSTANCE:Lorg/apache/http/impl/io/DefaultHttpResponseParserFactory;


# instance fields
.field private final lineParser:Lorg/apache/http/message/LineParser;

.field private final responseFactory:Lorg/apache/http/HttpResponseFactory;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/http/impl/io/DefaultHttpResponseParserFactory;

    invoke-direct {v0}, Lorg/apache/http/impl/io/DefaultHttpResponseParserFactory;-><init>()V

    sput-object v0, Lorg/apache/http/impl/io/DefaultHttpResponseParserFactory;->INSTANCE:Lorg/apache/http/impl/io/DefaultHttpResponseParserFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, v0}, Lorg/apache/http/impl/io/DefaultHttpResponseParserFactory;-><init>(Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lorg/apache/http/message/BasicLineParser;->INSTANCE:Lorg/apache/http/message/BasicLineParser;

    :goto_0
    iput-object p1, p0, Lorg/apache/http/impl/io/DefaultHttpResponseParserFactory;->lineParser:Lorg/apache/http/message/LineParser;

    if-eqz p2, :cond_1

    goto :goto_1

    .line 3
    :cond_1
    sget-object p2, Lorg/apache/http/impl/DefaultHttpResponseFactory;->INSTANCE:Lorg/apache/http/impl/DefaultHttpResponseFactory;

    :goto_1
    iput-object p2, p0, Lorg/apache/http/impl/io/DefaultHttpResponseParserFactory;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/config/MessageConstraints;)Lorg/apache/http/io/HttpMessageParser;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/io/SessionInputBuffer;",
            "Lorg/apache/http/config/MessageConstraints;",
            ")",
            "Lorg/apache/http/io/HttpMessageParser<",
            "Lorg/apache/http/HttpResponse;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/http/impl/io/DefaultHttpResponseParser;

    iget-object v1, p0, Lorg/apache/http/impl/io/DefaultHttpResponseParserFactory;->lineParser:Lorg/apache/http/message/LineParser;

    iget-object v2, p0, Lorg/apache/http/impl/io/DefaultHttpResponseParserFactory;->responseFactory:Lorg/apache/http/HttpResponseFactory;

    invoke-direct {v0, p1, v1, v2, p2}, Lorg/apache/http/impl/io/DefaultHttpResponseParser;-><init>(Lorg/apache/http/io/SessionInputBuffer;Lorg/apache/http/message/LineParser;Lorg/apache/http/HttpResponseFactory;Lorg/apache/http/config/MessageConstraints;)V

    return-object v0
.end method
