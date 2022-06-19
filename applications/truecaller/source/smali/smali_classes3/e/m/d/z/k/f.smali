.class public Le/m/d/z/k/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;"
        }
    .end annotation
.end field

.field public final b:Lcom/google/firebase/perf/util/Timer;

.field public final c:Le/m/d/z/j/b;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/ResponseHandler;Lcom/google/firebase/perf/util/Timer;Le/m/d/z/j/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lcom/google/firebase/perf/util/Timer;",
            "Le/m/d/z/j/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/d/z/k/f;->a:Lorg/apache/http/client/ResponseHandler;

    .line 3
    iput-object p2, p0, Le/m/d/z/k/f;->b:Lcom/google/firebase/perf/util/Timer;

    .line 4
    iput-object p3, p0, Le/m/d/z/k/f;->c:Le/m/d/z/j/b;

    return-void
.end method


# virtual methods
.method public handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/d/z/k/f;->c:Le/m/d/z/j/b;

    iget-object v1, p0, Le/m/d/z/k/f;->b:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Le/m/d/z/j/b;->i(J)Le/m/d/z/j/b;

    .line 2
    iget-object v0, p0, Le/m/d/z/k/f;->c:Le/m/d/z/j/b;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Le/m/d/z/j/b;->d(I)Le/m/d/z/j/b;

    .line 3
    invoke-static {p1}, Le/m/d/z/k/h;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Le/m/d/z/k/f;->c:Le/m/d/z/j/b;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Le/m/d/z/j/b;->h(J)Le/m/d/z/j/b;

    .line 5
    :cond_0
    invoke-static {p1}, Le/m/d/z/k/h;->b(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Le/m/d/z/k/f;->c:Le/m/d/z/j/b;

    invoke-virtual {v1, v0}, Le/m/d/z/j/b;->g(Ljava/lang/String;)Le/m/d/z/j/b;

    .line 7
    :cond_1
    iget-object v0, p0, Le/m/d/z/k/f;->c:Le/m/d/z/j/b;

    invoke-virtual {v0}, Le/m/d/z/j/b;->b()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 8
    iget-object v0, p0, Le/m/d/z/k/f;->a:Lorg/apache/http/client/ResponseHandler;

    invoke-interface {v0, p1}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
