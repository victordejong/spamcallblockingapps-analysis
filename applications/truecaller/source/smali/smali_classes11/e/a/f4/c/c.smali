.class public final Le/a/f4/c/c;
.super Lu3/u;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/f4/c/b;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/p5/c;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/r2/f;Le/a/p5/c;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/p5/c;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "eventsTracker"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "host"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lu3/u;-><init>()V

    iput-object p1, p0, Le/a/f4/c/c;->d:Le/a/r2/f;

    iput-object p2, p0, Le/a/f4/c/c;->e:Le/a/p5/c;

    iput-object p3, p0, Le/a/f4/c/c;->f:Ljava/lang/String;

    const-string p1, "UUID.randomUUID().toString()"

    .line 2
    invoke-static {p1}, Le/d/c/a/a;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le/a/f4/c/c;->b:Ljava/lang/String;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/f4/c/c;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Lu3/f;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/f4/c/c;->u(Ljava/lang/String;Z)V

    return-void
.end method

.method public b(Lu3/f;Ljava/io/IOException;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ioe"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/f4/c/c;->u(Ljava/lang/String;Z)V

    return-void
.end method

.method public c(Lu3/f;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, v0}, Le/a/f4/c/c;->v(Ljava/lang/String;)V

    return-void
.end method

.method public d(Lu3/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lu3/f0;)V
    .locals 0

    const-string p4, "call"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inetSocketAddress"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "proxy"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "connect"

    const/4 p2, 0x1

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/f4/c/c;->u(Ljava/lang/String;Z)V

    return-void
.end method

.method public e(Lu3/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lu3/f0;Ljava/io/IOException;)V
    .locals 0

    const-string p4, "call"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inetSocketAddress"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "proxy"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ioe"

    invoke-static {p5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "connect"

    const/4 p2, 0x0

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/f4/c/c;->u(Ljava/lang/String;Z)V

    return-void
.end method

.method public f(Lu3/f;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inetSocketAddress"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "proxy"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "connect"

    .line 1
    invoke-virtual {p0, p1}, Le/a/f4/c/c;->v(Ljava/lang/String;)V

    return-void
.end method

.method public g(Lu3/f;Lu3/l;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "connection"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/f4/c/c;->v(Ljava/lang/String;)V

    return-void
.end method

.method public h(Lu3/f;Lu3/l;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "connection"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/f4/c/c;->u(Ljava/lang/String;Z)V

    return-void
.end method

.method public i(Lu3/f;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/f;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "domainName"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inetAddressList"

    invoke-static {p3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dns"

    const/4 p2, 0x1

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/f4/c/c;->u(Ljava/lang/String;Z)V

    return-void
.end method

.method public j(Lu3/f;Ljava/lang/String;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "domainName"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "dns"

    .line 1
    invoke-virtual {p0, p1}, Le/a/f4/c/c;->v(Ljava/lang/String;)V

    return-void
.end method

.method public k(Lu3/f;J)V
    .locals 0

    const-string p2, "call"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "requestBody"

    const/4 p2, 0x1

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/f4/c/c;->u(Ljava/lang/String;Z)V

    return-void
.end method

.method public l(Lu3/f;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "requestBody"

    .line 1
    invoke-virtual {p0, p1}, Le/a/f4/c/c;->v(Ljava/lang/String;)V

    return-void
.end method

.method public m(Lu3/f;Lu3/g0;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "request"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "requestHeaders"

    const/4 p2, 0x1

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/f4/c/c;->u(Ljava/lang/String;Z)V

    return-void
.end method

.method public n(Lu3/f;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "requestHeaders"

    .line 1
    invoke-virtual {p0, p1}, Le/a/f4/c/c;->v(Ljava/lang/String;)V

    return-void
.end method

.method public o(Lu3/f;J)V
    .locals 0

    const-string p2, "call"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "responseBody"

    const/4 p2, 0x1

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/f4/c/c;->u(Ljava/lang/String;Z)V

    return-void
.end method

.method public p(Lu3/f;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "responseBody"

    .line 1
    invoke-virtual {p0, p1}, Le/a/f4/c/c;->v(Ljava/lang/String;)V

    return-void
.end method

.method public q(Lu3/f;Lu3/k0;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "responseHeaders"

    const/4 p2, 0x1

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/f4/c/c;->u(Ljava/lang/String;Z)V

    return-void
.end method

.method public r(Lu3/f;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "responseHeaders"

    .line 1
    invoke-virtual {p0, p1}, Le/a/f4/c/c;->v(Ljava/lang/String;)V

    return-void
.end method

.method public s(Lu3/f;Lu3/y;)V
    .locals 0

    const-string p2, "call"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "secureConnect"

    const/4 p2, 0x1

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/f4/c/c;->u(Ljava/lang/String;Z)V

    return-void
.end method

.method public t(Lu3/f;)V
    .locals 1

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "secureConnect"

    .line 1
    invoke-virtual {p0, p1}, Le/a/f4/c/c;->v(Ljava/lang/String;)V

    return-void
.end method

.method public final u(Ljava/lang/String;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/f4/c/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f4/c/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/f4/c/c;->e:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->b()J

    move-result-wide v1

    .line 3
    iput-wide v1, v0, Le/a/f4/c/b;->b:J

    .line 4
    iput-boolean p2, v0, Le/a/f4/c/b;->c:Z

    .line 5
    iget-object p2, p0, Le/a/f4/c/c;->d:Le/a/r2/f;

    invoke-interface {p2}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/q2/a0;

    .line 6
    sget-object v1, Le/a/l5/a/r0;->i:Lorg/apache/avro/Schema;

    new-instance v1, Le/a/l5/a/r0$b;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Le/a/l5/a/r0$b;-><init>(Le/a/l5/a/r0$a;)V

    .line 7
    iget-object v2, p0, Le/a/f4/c/c;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v3

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v1, v3, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 9
    iput-object v2, v1, Le/a/l5/a/r0$b;->c:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    const/4 v3, 0x1

    aput-boolean v3, v2, v4

    .line 11
    iget-object v2, p0, Le/a/f4/c/c;->f:Ljava/lang/String;

    .line 12
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x2

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 13
    iput-object v2, v1, Le/a/l5/a/r0$b;->a:Ljava/lang/CharSequence;

    .line 14
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 15
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v4, 0x3

    aget-object v2, v2, v4

    invoke-virtual {v1, v2, p1}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 16
    iput-object p1, v1, Le/a/l5/a/r0$b;->b:Ljava/lang/CharSequence;

    .line 17
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v4

    .line 18
    iget-wide v4, v0, Le/a/f4/c/b;->a:J

    .line 19
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v6, 0x5

    aget-object v2, v2, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 20
    iput-wide v4, v1, Le/a/l5/a/r0$b;->d:J

    .line 21
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v6

    .line 22
    iget-wide v4, v0, Le/a/f4/c/b;->b:J

    iget-wide v6, v0, Le/a/f4/c/b;->a:J

    sub-long/2addr v4, v6

    .line 23
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v2

    const/4 v6, 0x6

    aget-object v2, v2, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 24
    iput-wide v4, v1, Le/a/l5/a/r0$b;->e:J

    .line 25
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v6

    .line 26
    iget-boolean v2, v0, Le/a/f4/c/b;->c:Z

    .line 27
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 28
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fields()[Lorg/apache/avro/Schema$Field;

    move-result-object v4

    const/4 v5, 0x7

    aget-object v4, v4, v5

    invoke-virtual {v1, v4, v2}, Lorg/apache/avro/data/RecordBuilderBase;->validate(Lorg/apache/avro/Schema$Field;Ljava/lang/Object;)V

    .line 29
    iput-object v2, v1, Le/a/l5/a/r0$b;->f:Ljava/lang/Boolean;

    .line 30
    invoke-virtual {v1}, Lorg/apache/avro/data/RecordBuilderBase;->fieldSetFlags()[Z

    move-result-object v2

    aput-boolean v3, v2, v5

    .line 31
    invoke-virtual {v1}, Le/a/l5/a/r0$b;->a()Le/a/l5/a/r0;

    move-result-object v1

    .line 32
    invoke-interface {p2, v1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    new-array p2, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "[HttpAnalyticsLogger] end "

    const-string v3, ". Duration: "

    .line 33
    invoke-static {v2, p1, v3}, Le/d/c/a/a;->L(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 34
    iget-wide v3, v0, Le/a/f4/c/b;->b:J

    iget-wide v5, v0, Le/a/f4/c/b;->a:J

    sub-long/2addr v3, v5

    .line 35
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-static {p2}, Le/a/n3/a/b;->a([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/f4/c/c;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f4/c/b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/f4/c/b;

    invoke-direct {v0, p1}, Le/a/f4/c/b;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Le/a/f4/c/c;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :goto_0
    iget-object v1, p0, Le/a/f4/c/c;->e:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->b()J

    move-result-wide v1

    .line 4
    iput-wide v1, v0, Le/a/f4/c/b;->a:J

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "[HttpAnalyticsLogger] start "

    .line 5
    invoke-static {v2, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Le/a/n3/a/b;->a([Ljava/lang/Object;)V

    return-void
.end method
