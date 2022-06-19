.class Lcom/hiya/api/zipkin/reporter/HttpCall$V2CallbackAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/api/zipkin/reporter/HttpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "V2CallbackAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lm/g;"
    }
.end annotation


# instance fields
.field final delegate:Lu/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu/c<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lu/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/c<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/api/zipkin/reporter/HttpCall$V2CallbackAdapter;->delegate:Lu/c;

    return-void
.end method


# virtual methods
.method public onFailure(Lm/f;Ljava/io/IOException;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/api/zipkin/reporter/HttpCall$V2CallbackAdapter;->delegate:Lu/c;

    invoke-interface {p1, p2}, Lu/c;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lm/f;Lm/g0;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p2}, Lcom/hiya/api/zipkin/reporter/HttpCall;->parseResponse(Lm/g0;)V

    .line 2
    iget-object p1, p0, Lcom/hiya/api/zipkin/reporter/HttpCall$V2CallbackAdapter;->delegate:Lu/c;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lu/c;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lu/b;->propagateIfFatal(Ljava/lang/Throwable;)V

    .line 4
    iget-object p2, p0, Lcom/hiya/api/zipkin/reporter/HttpCall$V2CallbackAdapter;->delegate:Lu/c;

    invoke-interface {p2, p1}, Lu/c;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
