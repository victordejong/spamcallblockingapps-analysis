.class Lio/grpc/g1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/grpc/g1/r/j/d;

.field public static final b:Lio/grpc/g1/r/j/d;

.field public static final c:Lio/grpc/g1/r/j/d;

.field public static final d:Lio/grpc/g1/r/j/d;

.field public static final e:Lio/grpc/g1/r/j/d;

.field public static final f:Lio/grpc/g1/r/j/d;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/grpc/g1/r/j/d;

    sget-object v1, Lio/grpc/g1/r/j/d;->g:Ln/i;

    const-string v2, "https"

    invoke-direct {v0, v1, v2}, Lio/grpc/g1/r/j/d;-><init>(Ln/i;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/g1/c;->a:Lio/grpc/g1/r/j/d;

    .line 2
    new-instance v0, Lio/grpc/g1/r/j/d;

    const-string v2, "http"

    invoke-direct {v0, v1, v2}, Lio/grpc/g1/r/j/d;-><init>(Ln/i;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/g1/c;->b:Lio/grpc/g1/r/j/d;

    .line 3
    new-instance v0, Lio/grpc/g1/r/j/d;

    sget-object v1, Lio/grpc/g1/r/j/d;->e:Ln/i;

    const-string v2, "POST"

    invoke-direct {v0, v1, v2}, Lio/grpc/g1/r/j/d;-><init>(Ln/i;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/g1/c;->c:Lio/grpc/g1/r/j/d;

    .line 4
    new-instance v0, Lio/grpc/g1/r/j/d;

    const-string v2, "GET"

    invoke-direct {v0, v1, v2}, Lio/grpc/g1/r/j/d;-><init>(Ln/i;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/g1/c;->d:Lio/grpc/g1/r/j/d;

    .line 5
    new-instance v0, Lio/grpc/g1/r/j/d;

    sget-object v1, Lio/grpc/f1/o0;->g:Lio/grpc/q0$f;

    .line 6
    invoke-virtual {v1}, Lio/grpc/q0$f;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/grpc"

    invoke-direct {v0, v1, v2}, Lio/grpc/g1/r/j/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/g1/c;->e:Lio/grpc/g1/r/j/d;

    .line 7
    new-instance v0, Lio/grpc/g1/r/j/d;

    const-string v1, "te"

    const-string v2, "trailers"

    invoke-direct {v0, v1, v2}, Lio/grpc/g1/r/j/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lio/grpc/g1/c;->f:Lio/grpc/g1/r/j/d;

    return-void
.end method

.method public static a(Lio/grpc/q0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/grpc/q0;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List<",
            "Lio/grpc/g1/r/j/d;",
            ">;"
        }
    .end annotation

    const-string v0, "headers"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "defaultPath"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "authority"

    .line 3
    invoke-static {p2, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lio/grpc/f1/o0;->g:Lio/grpc/q0$f;

    invoke-virtual {p0, v0}, Lio/grpc/q0;->d(Lio/grpc/q0$f;)V

    .line 5
    sget-object v0, Lio/grpc/f1/o0;->h:Lio/grpc/q0$f;

    invoke-virtual {p0, v0}, Lio/grpc/q0;->d(Lio/grpc/q0$f;)V

    .line 6
    sget-object v0, Lio/grpc/f1/o0;->i:Lio/grpc/q0$f;

    invoke-virtual {p0, v0}, Lio/grpc/q0;->d(Lio/grpc/q0$f;)V

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p0}, Lio/grpc/g0;->a(Lio/grpc/q0;)I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p5, :cond_0

    .line 8
    sget-object p5, Lio/grpc/g1/c;->b:Lio/grpc/g1/r/j/d;

    invoke-interface {v1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    sget-object p5, Lio/grpc/g1/c;->a:Lio/grpc/g1/r/j/d;

    invoke-interface {v1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    if-eqz p4, :cond_1

    .line 10
    sget-object p4, Lio/grpc/g1/c;->d:Lio/grpc/g1/r/j/d;

    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_1
    sget-object p4, Lio/grpc/g1/c;->c:Lio/grpc/g1/r/j/d;

    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :goto_1
    new-instance p4, Lio/grpc/g1/r/j/d;

    sget-object p5, Lio/grpc/g1/r/j/d;->h:Ln/i;

    invoke-direct {p4, p5, p2}, Lio/grpc/g1/r/j/d;-><init>(Ln/i;Ljava/lang/String;)V

    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    new-instance p2, Lio/grpc/g1/r/j/d;

    sget-object p4, Lio/grpc/g1/r/j/d;->f:Ln/i;

    invoke-direct {p2, p4, p1}, Lio/grpc/g1/r/j/d;-><init>(Ln/i;Ljava/lang/String;)V

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance p1, Lio/grpc/g1/r/j/d;

    invoke-virtual {v0}, Lio/grpc/q0$f;->d()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lio/grpc/g1/r/j/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    sget-object p1, Lio/grpc/g1/c;->e:Lio/grpc/g1/r/j/d;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    sget-object p1, Lio/grpc/g1/c;->f:Lio/grpc/g1/r/j/d;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-static {p0}, Lio/grpc/f1/i2;->d(Lio/grpc/q0;)[[B

    move-result-object p0

    const/4 p1, 0x0

    .line 18
    :goto_2
    array-length p2, p0

    if-ge p1, p2, :cond_3

    .line 19
    aget-object p2, p0, p1

    invoke-static {p2}, Ln/i;->w([B)Ln/i;

    move-result-object p2

    .line 20
    invoke-virtual {p2}, Ln/i;->J()Ljava/lang/String;

    move-result-object p3

    .line 21
    invoke-static {p3}, Lio/grpc/g1/c;->b(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    add-int/lit8 p3, p1, 0x1

    .line 22
    aget-object p3, p0, p3

    invoke-static {p3}, Ln/i;->w([B)Ln/i;

    move-result-object p3

    .line 23
    new-instance p4, Lio/grpc/g1/r/j/d;

    invoke-direct {p4, p2, p3}, Lio/grpc/g1/r/j/d;-><init>(Ln/i;Ln/i;)V

    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x2

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, ":"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/grpc/f1/o0;->g:Lio/grpc/q0$f;

    .line 2
    invoke-virtual {v0}, Lio/grpc/q0$f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lio/grpc/f1/o0;->i:Lio/grpc/q0$f;

    .line 3
    invoke-virtual {v0}, Lio/grpc/q0$f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
