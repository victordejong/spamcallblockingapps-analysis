.class public final Li/a/c/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/d/f/z/g;


# static fields
.field public static final j:Ljava/util/logging/Logger;

.field static final k:Li/a/a/c/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/a/c/f<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final f:Li/a/d/d/h;

.field private final g:Lu/h/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu/h/a<",
            "Lu/g;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lzipkin2/reporter/a;

.field private final i:Ljava/net/InetAddress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Li/a/c/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Li/a/c/a/b;->j:Ljava/util/logging/Logger;

    const-string v0, "error"

    .line 2
    invoke-static {v0}, Li/a/a/c/e;->d(Ljava/lang/String;)Li/a/a/c/f;

    move-result-object v0

    sput-object v0, Li/a/c/a/b;->k:Li/a/a/c/f;

    return-void
.end method

.method constructor <init>(Lu/h/a;Lzipkin2/reporter/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/h/a<",
            "Lu/g;",
            ">;",
            "Lzipkin2/reporter/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Li/a/d/d/h;

    sget-object v1, Li/a/c/a/b;->j:Ljava/util/logging/Logger;

    invoke-direct {v0, v1}, Li/a/d/d/h;-><init>(Ljava/util/logging/Logger;)V

    iput-object v0, p0, Li/a/c/a/b;->f:Li/a/d/d/h;

    .line 3
    iput-object p1, p0, Li/a/c/a/b;->g:Lu/h/a;

    .line 4
    iput-object p2, p0, Li/a/c/a/b;->h:Lzipkin2/reporter/a;

    .line 5
    invoke-static {}, Li/a/c/a/b;->j()Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Li/a/c/a/b;->i:Ljava/net/InetAddress;

    return-void
.end method

.method static synthetic a(Li/a/c/a/b;)Li/a/d/d/h;
    .locals 0

    .line 1
    iget-object p0, p0, Li/a/c/a/b;->f:Li/a/d/d/h;

    return-object p0
.end method

.method public static b()Li/a/c/a/c;
    .locals 1

    .line 1
    new-instance v0, Li/a/c/a/c;

    invoke-direct {v0}, Li/a/c/a/c;-><init>()V

    return-object v0
.end method

.method private static c(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x2c

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private f(Li/a/d/f/y/h;)Lu/f;
    .locals 1

    .line 1
    invoke-interface {p1}, Li/a/d/f/y/h;->k()Li/a/d/e/d;

    move-result-object p1

    invoke-virtual {p1}, Li/a/d/e/d;->c()Li/a/a/c/j;

    move-result-object p1

    .line 2
    sget-object v0, Li/a/e/a/a/a;->m0:Li/a/a/c/f;

    invoke-interface {p1, v0}, Li/a/a/c/j;->a(Li/a/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Li/a/d/e/d;->d()Li/a/d/e/d;

    move-result-object p1

    invoke-virtual {p1}, Li/a/d/e/d;->c()Li/a/a/c/j;

    move-result-object p1

    invoke-interface {p1, v0}, Li/a/a/c/j;->a(Li/a/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4
    :cond_0
    invoke-static {}, Lu/f;->j()Lu/f$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/f$a;->h(Ljava/lang/String;)Lu/f$a;

    iget-object p1, p0, Li/a/c/a/b;->i:Ljava/net/InetAddress;

    invoke-virtual {v0, p1}, Lu/f$a;->b(Ljava/net/InetAddress;)Lu/f$a;

    invoke-virtual {v0}, Lu/f$a;->a()Lu/f;

    move-result-object p1

    return-object p1
.end method

.method static synthetic g(Lu/g$a;Li/a/a/c/f;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Li/a/a/c/f;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Li/a/c/a/b;->r(Li/a/a/c/f;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lu/g$a;->r(Ljava/lang/String;Ljava/lang/String;)Lu/g$a;

    return-void
.end method

.method private static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method static j()Ljava/net/InetAddress;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    .line 4
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v1

    .line 5
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 7
    invoke-virtual {v2}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    return-object v2

    :catch_0
    move-exception v0

    .line 8
    sget-object v1, Li/a/c/a/b;->j:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "error reading nics"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static l(J)J
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static o(Li/a/d/f/y/h;)Lu/g$b;
    .locals 1

    .line 1
    sget-object v0, Li/a/c/a/b$b;->a:[I

    invoke-interface {p0}, Li/a/d/f/y/h;->h()Li/a/a/f/q;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Lu/g$b;->CONSUMER:Lu/g$b;

    return-object p0

    .line 3
    :cond_1
    sget-object p0, Lu/g$b;->PRODUCER:Lu/g$b;

    return-object p0

    .line 4
    :cond_2
    sget-object p0, Lu/g$b;->CLIENT:Lu/g$b;

    return-object p0

    .line 5
    :cond_3
    sget-object p0, Lu/g$b;->SERVER:Lu/g$b;

    return-object p0
.end method

.method private static r(Li/a/a/c/f;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/a/c/f<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Li/a/a/c/f;->getType()Li/a/a/c/h;

    move-result-object p0

    .line 2
    sget-object v0, Li/a/c/a/b$b;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown attribute type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :pswitch_0
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Li/a/c/a/b;->c(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :pswitch_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public R(Ljava/util/Collection;)Li/a/d/c/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Li/a/d/f/y/h;",
            ">;)",
            "Li/a/d/c/e;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li/a/d/f/y/h;

    .line 3
    iget-object v2, p0, Li/a/c/a/b;->g:Lu/h/a;

    invoke-virtual {p0, v1}, Li/a/c/a/b;->e(Li/a/d/f/y/h;)Lu/g;

    move-result-object v1

    invoke-interface {v2, v1}, Lu/h/a;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Li/a/d/c/e;

    invoke-direct {p1}, Li/a/d/c/e;-><init>()V

    .line 5
    iget-object v1, p0, Li/a/c/a/b;->h:Lzipkin2/reporter/a;

    .line 6
    invoke-virtual {v1, v0}, Lzipkin2/reporter/a;->sendSpans(Ljava/util/List;)Lu/b;

    move-result-object v0

    new-instance v1, Li/a/c/a/b$a;

    invoke-direct {v1, p0, p1}, Li/a/c/a/b$a;-><init>(Li/a/c/a/b;Li/a/d/c/e;)V

    .line 7
    invoke-virtual {v0, v1}, Lu/b;->enqueue(Lu/c;)V

    return-object p1
.end method

.method public synthetic close()V
    .locals 0

    invoke-static {p0}, Li/a/d/f/z/f;->a(Li/a/d/f/z/g;)V

    return-void
.end method

.method e(Li/a/d/f/y/h;)Lu/g;
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Li/a/c/a/b;->f(Li/a/d/f/y/h;)Lu/f;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Li/a/d/f/y/h;->g()J

    move-result-wide v1

    invoke-static {v1, v2}, Li/a/c/a/b;->l(J)J

    move-result-wide v1

    .line 3
    invoke-interface {p1}, Li/a/d/f/y/h;->e()J

    move-result-wide v3

    invoke-static {v3, v4}, Li/a/c/a/b;->l(J)J

    move-result-wide v3

    .line 4
    invoke-static {}, Lu/g;->h()Lu/g$a;

    move-result-object v5

    .line 5
    invoke-interface {p1}, Li/a/d/f/y/h;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lu/g$a;->x(Ljava/lang/String;)Lu/g$a;

    .line 6
    invoke-interface {p1}, Li/a/d/f/y/h;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lu/g$a;->j(Ljava/lang/String;)Lu/g$a;

    .line 7
    invoke-static {p1}, Li/a/c/a/b;->o(Li/a/d/f/y/h;)Lu/g$b;

    move-result-object v6

    invoke-virtual {v5, v6}, Lu/g$a;->k(Lu/g$b;)Lu/g$a;

    .line 8
    invoke-interface {p1}, Li/a/d/f/y/h;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lu/g$a;->o(Ljava/lang/String;)Lu/g$a;

    .line 9
    invoke-interface {p1}, Li/a/d/f/y/h;->g()J

    move-result-wide v6

    invoke-static {v6, v7}, Li/a/c/a/b;->l(J)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lu/g$a;->v(J)Lu/g$a;

    sub-long/2addr v3, v1

    const-wide/16 v1, 0x1

    .line 10
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    invoke-virtual {v5, v1, v2}, Lu/g$a;->g(J)Lu/g$a;

    .line 11
    invoke-virtual {v5, v0}, Lu/g$a;->n(Lu/f;)Lu/g$a;

    .line 12
    invoke-interface {p1}, Li/a/d/f/y/h;->m()Li/a/a/f/n;

    move-result-object v0

    invoke-interface {v0}, Li/a/a/f/n;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-interface {p1}, Li/a/d/f/y/h;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lu/g$a;->q(Ljava/lang/String;)Lu/g$a;

    .line 14
    :cond_0
    invoke-interface {p1}, Li/a/d/f/y/h;->a()Li/a/a/c/j;

    move-result-object v0

    .line 15
    new-instance v1, Li/a/c/a/a;

    invoke-direct {v1, v5}, Li/a/c/a/a;-><init>(Lu/g$a;)V

    invoke-interface {v0, v1}, Li/a/a/c/j;->forEach(Ljava/util/function/BiConsumer;)V

    .line 16
    invoke-interface {p1}, Li/a/d/f/y/h;->i()Li/a/d/f/y/j;

    move-result-object v1

    .line 17
    invoke-interface {v1}, Li/a/d/f/y/j;->a()Li/a/a/f/r;

    move-result-object v2

    sget-object v3, Li/a/a/f/r;->UNSET:Li/a/a/f/r;

    if-eq v2, v3, :cond_1

    .line 18
    invoke-interface {v1}, Li/a/d/f/y/j;->a()Li/a/a/f/r;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "otel.status_code"

    invoke-virtual {v5, v3, v2}, Lu/g$a;->r(Ljava/lang/String;Ljava/lang/String;)Lu/g$a;

    .line 19
    invoke-interface {v1}, Li/a/d/f/y/j;->a()Li/a/a/f/r;

    move-result-object v2

    sget-object v3, Li/a/a/f/r;->ERROR:Li/a/a/f/r;

    if-ne v2, v3, :cond_1

    sget-object v2, Li/a/c/a/b;->k:Li/a/a/c/f;

    invoke-interface {v0, v2}, Li/a/a/c/j;->a(Li/a/a/c/f;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 20
    invoke-interface {v2}, Li/a/a/c/f;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Li/a/d/f/y/j;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Li/a/c/a/b;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lu/g$a;->r(Ljava/lang/String;Ljava/lang/String;)Lu/g$a;

    .line 21
    :cond_1
    invoke-interface {p1}, Li/a/d/f/y/h;->j()Li/a/d/c/f;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Li/a/d/c/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 23
    invoke-virtual {v0}, Li/a/d/c/f;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "otel.library.name"

    invoke-virtual {v5, v2, v1}, Lu/g$a;->r(Ljava/lang/String;Ljava/lang/String;)Lu/g$a;

    .line 24
    :cond_2
    invoke-virtual {v0}, Li/a/d/c/f;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 25
    invoke-virtual {v0}, Li/a/d/c/f;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "otel.library.version"

    .line 26
    invoke-virtual {v5, v1, v0}, Lu/g$a;->r(Ljava/lang/String;Ljava/lang/String;)Lu/g$a;

    .line 27
    :cond_3
    invoke-interface {p1}, Li/a/d/f/y/h;->l()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/a/d/f/y/d;

    .line 28
    invoke-interface {v0}, Li/a/d/f/y/d;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Li/a/c/a/b;->l(J)J

    move-result-wide v1

    invoke-interface {v0}, Li/a/d/f/y/d;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v2, v0}, Lu/g$a;->a(JLjava/lang/String;)Lu/g$a;

    goto :goto_0

    .line 29
    :cond_4
    invoke-virtual {v5}, Lu/g$a;->b()Lu/g;

    move-result-object p1

    return-object p1
.end method

.method public shutdown()Li/a/d/c/e;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Li/a/c/a/b;->h:Lzipkin2/reporter/a;

    invoke-virtual {v0}, Lu/e;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Li/a/c/a/b;->f:Li/a/d/d/h;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception while closing the Zipkin Sender instance"

    invoke-virtual {v1, v2, v3, v0}, Li/a/d/d/h;->c(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :goto_0
    invoke-static {}, Li/a/d/c/e;->g()Li/a/d/c/e;

    move-result-object v0

    return-object v0
.end method
