.class public abstract Lio/grpc/f1/k;
.super Lio/grpc/t0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/grpc/t0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "dns"

    return-object v0
.end method

.method public bridge synthetic c(Ljava/net/URI;Lio/grpc/s0$b;)Lio/grpc/s0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/grpc/f1/k;->h(Ljava/net/URI;Lio/grpc/s0$b;)Lio/grpc/f1/b0;

    move-result-object p1

    return-object p1
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract g()Z
.end method

.method public h(Ljava/net/URI;Lio/grpc/s0$b;)Lio/grpc/f1/b0;
    .locals 10

    .line 1
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dns"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "targetPath"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "/"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "the path component (%s) of the target (%s) must start with \'/\'"

    invoke-static {v1, v2, v0, p1}, Lcom/google/common/base/m;->l(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 5
    new-instance v0, Lio/grpc/f1/b0;

    .line 6
    invoke-virtual {p1}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lio/grpc/f1/o0;->m:Lio/grpc/f1/c2$d;

    .line 7
    invoke-static {}, Lcom/google/common/base/q;->c()Lcom/google/common/base/q;

    move-result-object v7

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-static {p1}, Lio/grpc/h0;->a(Ljava/lang/ClassLoader;)Z

    move-result v8

    .line 9
    invoke-virtual {p0}, Lio/grpc/f1/k;->g()Z

    move-result v9

    move-object v2, v0

    move-object v5, p2

    invoke-direct/range {v2 .. v9}, Lio/grpc/f1/b0;-><init>(Ljava/lang/String;Ljava/lang/String;Lio/grpc/s0$b;Lio/grpc/f1/c2$d;Lcom/google/common/base/q;ZZ)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
