.class public Lcom/google/firebase/inappmessaging/j0/j3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final d:Lcom/google/firebase/inappmessaging/j0/z2;


# instance fields
.field private final a:Lcom/google/firebase/inappmessaging/j0/u2;

.field private final b:Lcom/google/firebase/inappmessaging/j0/r3/a;

.field private c:Li/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/c/j<",
            "Lcom/google/firebase/inappmessaging/j0/z2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/inappmessaging/j0/z2;->Y()Lcom/google/firebase/inappmessaging/j0/z2;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/inappmessaging/j0/j3;->d:Lcom/google/firebase/inappmessaging/j0/z2;

    return-void
.end method

.method constructor <init>(Lcom/google/firebase/inappmessaging/j0/u2;Lcom/google/firebase/inappmessaging/j0/r3/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Li/c/j;->g()Li/c/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/j0/j3;->c:Li/c/j;

    .line 3
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/j3;->a:Lcom/google/firebase/inappmessaging/j0/u2;

    .line 4
    iput-object p2, p0, Lcom/google/firebase/inappmessaging/j0/j3;->b:Lcom/google/firebase/inappmessaging/j0/r3/a;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/inappmessaging/j0/j3;Lcom/google/firebase/inappmessaging/j0/z2;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/j0/j3;->f(Lcom/google/firebase/inappmessaging/j0/z2;)V

    return-void
.end method

.method private b()V
    .locals 1

    .line 1
    invoke-static {}, Li/c/j;->g()Li/c/j;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/j0/j3;->c:Li/c/j;

    return-void
.end method

.method private c()Li/c/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/j<",
            "Lcom/google/firebase/inappmessaging/j0/z2;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/j3;->c:Li/c/j;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/j3;->a:Lcom/google/firebase/inappmessaging/j0/u2;

    .line 2
    invoke-static {}, Lcom/google/firebase/inappmessaging/j0/z2;->e0()Lcom/google/protobuf/z0;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/inappmessaging/j0/u2;->c(Lcom/google/protobuf/z0;)Li/c/j;

    move-result-object v1

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/j0/d3;->a(Lcom/google/firebase/inappmessaging/j0/j3;)Li/c/y/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/j;->f(Li/c/y/c;)Li/c/j;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Li/c/j;->x(Li/c/n;)Li/c/j;

    move-result-object v0

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/j0/e3;->a(Lcom/google/firebase/inappmessaging/j0/j3;)Li/c/y/c;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Li/c/j;->e(Li/c/y/c;)Li/c/j;

    move-result-object v0

    return-object v0
.end method

.method private static d(Lcom/google/firebase/inappmessaging/j0/y2;)Lcom/google/firebase/inappmessaging/j0/y2;
    .locals 5

    .line 1
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/j0/y2;->f0(Lcom/google/firebase/inappmessaging/j0/y2;)Lcom/google/firebase/inappmessaging/j0/y2$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/j0/y2$a;->G()Lcom/google/firebase/inappmessaging/j0/y2$a;

    invoke-virtual {p0}, Lcom/google/firebase/inappmessaging/j0/y2;->d0()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/j0/y2$a;->I(J)Lcom/google/firebase/inappmessaging/j0/y2$a;

    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/j0/y2;

    return-object p0
.end method

.method private f(Lcom/google/firebase/inappmessaging/j0/z2;)V
    .locals 0

    .line 1
    invoke-static {p1}, Li/c/j;->n(Ljava/lang/Object;)Li/c/j;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/j3;->c:Li/c/j;

    return-void
.end method

.method private g(Lcom/google/firebase/inappmessaging/j0/y2;Lcom/google/firebase/inappmessaging/model/m;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/j3;->b:Lcom/google/firebase/inappmessaging/j0/r3/a;

    invoke-interface {v0}, Lcom/google/firebase/inappmessaging/j0/r3/a;->b()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/j0/y2;->c0()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/model/m;->d()J

    move-result-wide p1

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic i(Lcom/google/firebase/inappmessaging/j0/j3;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/j3;->b()V

    return-void
.end method

.method static synthetic j(Lcom/google/firebase/inappmessaging/j0/j3;Lcom/google/firebase/inappmessaging/model/m;Lcom/google/firebase/inappmessaging/j0/y2;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/inappmessaging/j0/j3;->g(Lcom/google/firebase/inappmessaging/j0/y2;Lcom/google/firebase/inappmessaging/model/m;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method static synthetic k(Lcom/google/firebase/inappmessaging/j0/z2;Lcom/google/firebase/inappmessaging/model/m;Lcom/google/firebase/inappmessaging/j0/y2;)Lcom/google/firebase/inappmessaging/j0/z2;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/firebase/inappmessaging/j0/j3;->d(Lcom/google/firebase/inappmessaging/j0/y2;)Lcom/google/firebase/inappmessaging/j0/y2;

    move-result-object p2

    .line 2
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/j0/z2;->d0(Lcom/google/firebase/inappmessaging/j0/z2;)Lcom/google/firebase/inappmessaging/j0/z2$a;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/m;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/inappmessaging/j0/z2$a;->G(Ljava/lang/String;Lcom/google/firebase/inappmessaging/j0/y2;)Lcom/google/firebase/inappmessaging/j0/z2$a;

    .line 4
    invoke-virtual {p0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/inappmessaging/j0/z2;

    return-object p0
.end method

.method static synthetic l(Lcom/google/firebase/inappmessaging/j0/j3;Lcom/google/firebase/inappmessaging/j0/z2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/firebase/inappmessaging/j0/j3;->f(Lcom/google/firebase/inappmessaging/j0/z2;)V

    return-void
.end method

.method static synthetic m(Lcom/google/firebase/inappmessaging/j0/j3;Lcom/google/firebase/inappmessaging/j0/z2;)Li/c/d;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/j3;->a:Lcom/google/firebase/inappmessaging/j0/u2;

    invoke-virtual {v0, p1}, Lcom/google/firebase/inappmessaging/j0/u2;->d(Lcom/google/protobuf/a;)Li/c/b;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/j0/i3;->a(Lcom/google/firebase/inappmessaging/j0/j3;Lcom/google/firebase/inappmessaging/j0/z2;)Li/c/y/a;

    move-result-object p0

    invoke-virtual {v0, p0}, Li/c/b;->d(Li/c/y/a;)Li/c/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcom/google/firebase/inappmessaging/j0/j3;Lcom/google/firebase/inappmessaging/model/m;Lcom/google/firebase/inappmessaging/j0/z2;)Li/c/d;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/m;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/j3;->q()Lcom/google/firebase/inappmessaging/j0/y2;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/firebase/inappmessaging/j0/z2;->Z(Ljava/lang/String;Lcom/google/firebase/inappmessaging/j0/y2;)Lcom/google/firebase/inappmessaging/j0/y2;

    move-result-object v0

    invoke-static {v0}, Li/c/o;->i(Ljava/lang/Object;)Li/c/o;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/j0/f3;->a(Lcom/google/firebase/inappmessaging/j0/j3;Lcom/google/firebase/inappmessaging/model/m;)Li/c/y/e;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Li/c/o;->e(Li/c/y/e;)Li/c/o;

    move-result-object v0

    .line 3
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/j3;->q()Lcom/google/firebase/inappmessaging/j0/y2;

    move-result-object v1

    invoke-static {v1}, Li/c/o;->i(Ljava/lang/Object;)Li/c/o;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/o;->l(Li/c/p;)Li/c/o;

    move-result-object v0

    invoke-static {p2, p1}, Lcom/google/firebase/inappmessaging/j0/g3;->a(Lcom/google/firebase/inappmessaging/j0/z2;Lcom/google/firebase/inappmessaging/model/m;)Li/c/y/d;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Li/c/o;->j(Li/c/y/d;)Li/c/o;

    move-result-object p1

    invoke-static {p0}, Lcom/google/firebase/inappmessaging/j0/h3;->a(Lcom/google/firebase/inappmessaging/j0/j3;)Li/c/y/d;

    move-result-object p0

    .line 5
    invoke-virtual {p1, p0}, Li/c/o;->f(Li/c/y/d;)Li/c/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Lcom/google/firebase/inappmessaging/j0/j3;Lcom/google/firebase/inappmessaging/model/m;Lcom/google/firebase/inappmessaging/j0/z2;)Lcom/google/firebase/inappmessaging/j0/y2;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/m;->c()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/j3;->q()Lcom/google/firebase/inappmessaging/j0/y2;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/google/firebase/inappmessaging/j0/z2;->Z(Ljava/lang/String;Lcom/google/firebase/inappmessaging/j0/y2;)Lcom/google/firebase/inappmessaging/j0/y2;

    move-result-object p0

    return-object p0
.end method

.method static synthetic p(Lcom/google/firebase/inappmessaging/j0/j3;Lcom/google/firebase/inappmessaging/model/m;Lcom/google/firebase/inappmessaging/j0/y2;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/google/firebase/inappmessaging/j0/j3;->g(Lcom/google/firebase/inappmessaging/j0/y2;Lcom/google/firebase/inappmessaging/model/m;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p2}, Lcom/google/firebase/inappmessaging/j0/y2;->d0()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/model/m;->b()J

    move-result-wide p0

    cmp-long p2, v0, p0

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private q()Lcom/google/firebase/inappmessaging/j0/y2;
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/firebase/inappmessaging/j0/y2;->e0()Lcom/google/firebase/inappmessaging/j0/y2$a;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/j0/y2$a;->I(J)Lcom/google/firebase/inappmessaging/j0/y2$a;

    iget-object v1, p0, Lcom/google/firebase/inappmessaging/j0/j3;->b:Lcom/google/firebase/inappmessaging/j0/r3/a;

    invoke-interface {v1}, Lcom/google/firebase/inappmessaging/j0/r3/a;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/j0/y2$a;->H(J)Lcom/google/firebase/inappmessaging/j0/y2$a;

    invoke-virtual {v0}, Lcom/google/protobuf/y$a;->x()Lcom/google/protobuf/y;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/inappmessaging/j0/y2;

    return-object v0
.end method


# virtual methods
.method public e(Lcom/google/firebase/inappmessaging/model/m;)Li/c/b;
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/j3;->c()Li/c/j;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/inappmessaging/j0/j3;->d:Lcom/google/firebase/inappmessaging/j0/z2;

    .line 2
    invoke-virtual {v0, v1}, Li/c/j;->d(Ljava/lang/Object;)Li/c/j;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/j0/a3;->a(Lcom/google/firebase/inappmessaging/j0/j3;Lcom/google/firebase/inappmessaging/model/m;)Li/c/y/d;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Li/c/j;->j(Li/c/y/d;)Li/c/b;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/google/firebase/inappmessaging/model/m;)Li/c/s;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/inappmessaging/model/m;",
            ")",
            "Li/c/s<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/inappmessaging/j0/j3;->c()Li/c/j;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/google/firebase/inappmessaging/j0/z2;->Y()Lcom/google/firebase/inappmessaging/j0/z2;

    move-result-object v1

    invoke-static {v1}, Li/c/j;->n(Ljava/lang/Object;)Li/c/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/j;->x(Li/c/n;)Li/c/j;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/j0/b3;->a(Lcom/google/firebase/inappmessaging/j0/j3;Lcom/google/firebase/inappmessaging/model/m;)Li/c/y/d;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Li/c/j;->o(Li/c/y/d;)Li/c/j;

    move-result-object v0

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/j0/c3;->a(Lcom/google/firebase/inappmessaging/j0/j3;Lcom/google/firebase/inappmessaging/model/m;)Li/c/y/e;

    move-result-object p1

    .line 4
    invoke-virtual {v0, p1}, Li/c/j;->h(Li/c/y/e;)Li/c/j;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Li/c/j;->m()Li/c/s;

    move-result-object p1

    return-object p1
.end method
