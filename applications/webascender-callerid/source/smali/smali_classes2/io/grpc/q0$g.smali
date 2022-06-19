.class final Lio/grpc/q0$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lio/grpc/q0$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/grpc/q0$e<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile c:[B


# direct methods
.method constructor <init>(Lio/grpc/q0$e;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/q0$e<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/grpc/q0$g;->a:Lio/grpc/q0$e;

    .line 3
    iput-object p2, p0, Lio/grpc/q0$g;->b:Ljava/lang/Object;

    return-void
.end method

.method static a(Lio/grpc/q0$f;Ljava/lang/Object;)Lio/grpc/q0$g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/q0$f<",
            "TT;>;TT;)",
            "Lio/grpc/q0$g<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/grpc/q0$g;

    invoke-static {p0}, Lio/grpc/q0$g;->b(Lio/grpc/q0$f;)Lio/grpc/q0$e;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/base/m;->o(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Lio/grpc/q0$e;

    invoke-direct {v0, p0, p1}, Lio/grpc/q0$g;-><init>(Lio/grpc/q0$e;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static b(Lio/grpc/q0$f;)Lio/grpc/q0$e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/q0$f<",
            "TT;>;)",
            "Lio/grpc/q0$e<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lio/grpc/q0$e;

    invoke-virtual {p0, v0}, Lio/grpc/q0$f;->c(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/grpc/q0$e;

    return-object p0
.end method


# virtual methods
.method c()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/q0$g;->c:[B

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lio/grpc/q0$g;->c:[B

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lio/grpc/q0$g;->e()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/q0;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lio/grpc/q0$g;->c:[B

    .line 5
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/grpc/q0$g;->c:[B

    return-object v0
.end method

.method d(Lio/grpc/q0$f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/grpc/q0$f<",
            "TT2;>;)TT2;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/grpc/q0$f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lio/grpc/q0$g;->b(Lio/grpc/q0$f;)Lio/grpc/q0$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/grpc/q0$g;->e()Ljava/io/InputStream;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/grpc/q0$e;->b(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lio/grpc/q0$g;->c()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/grpc/q0$f;->h([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method e()Ljava/io/InputStream;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/grpc/q0$g;->a:Lio/grpc/q0$e;

    iget-object v1, p0, Lio/grpc/q0$g;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lio/grpc/q0$e;->a(Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
