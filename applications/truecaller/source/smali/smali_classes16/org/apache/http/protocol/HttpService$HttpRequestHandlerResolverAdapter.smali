.class public Lorg/apache/http/protocol/HttpService$HttpRequestHandlerResolverAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/protocol/HttpRequestHandlerMapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/http/protocol/HttpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpRequestHandlerResolverAdapter"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final resolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;


# direct methods
.method public constructor <init>(Lorg/apache/http/protocol/HttpRequestHandlerResolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/http/protocol/HttpService$HttpRequestHandlerResolverAdapter;->resolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    return-void
.end method


# virtual methods
.method public lookup(Lorg/apache/http/HttpRequest;)Lorg/apache/http/protocol/HttpRequestHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/http/protocol/HttpService$HttpRequestHandlerResolverAdapter;->resolver:Lorg/apache/http/protocol/HttpRequestHandlerResolver;

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/http/protocol/HttpRequestHandlerResolver;->lookup(Ljava/lang/String;)Lorg/apache/http/protocol/HttpRequestHandler;

    move-result-object p1

    return-object p1
.end method
