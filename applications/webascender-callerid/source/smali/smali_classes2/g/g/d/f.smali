.class public final Lg/g/d/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(Li/a/a/f/x;Ljava/lang/String;Lg/g/d/e;Z)Lg/g/d/e;
    .locals 0

    if-eqz p4, :cond_0

    .line 1
    new-instance p3, Lg/g/d/g;

    invoke-interface {p1, p2}, Li/a/a/f/x;->a(Ljava/lang/String;)Li/a/a/f/l;

    move-result-object p1

    invoke-interface {p1}, Li/a/a/f/l;->b()Li/a/a/f/l;

    move-result-object p1

    invoke-interface {p1}, Li/a/a/f/l;->a()Li/a/a/f/k;

    move-result-object p1

    const-string p2, "tracer.spanBuilder(name).setNoParent().startSpan()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p1}, Lg/g/d/g;-><init>(Li/a/a/f/k;)V

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 2
    new-instance p4, Lg/g/d/g;

    .line 3
    invoke-interface {p1, p2}, Li/a/a/f/x;->a(Ljava/lang/String;)Li/a/a/f/l;

    move-result-object p1

    .line 4
    invoke-static {}, Li/a/b/d;->c()Li/a/b/e;

    move-result-object p2

    invoke-interface {p3}, Lg/g/d/e;->e()Li/a/a/f/k;

    move-result-object p3

    invoke-interface {p2, p3}, Li/a/b/e;->d(Li/a/b/n;)Li/a/b/e;

    move-result-object p2

    .line 5
    invoke-interface {p1, p2}, Li/a/a/f/l;->c(Li/a/b/e;)Li/a/a/f/l;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Li/a/a/f/l;->a()Li/a/a/f/k;

    move-result-object p1

    const-string p2, "tracer.spanBuilder(name)\u2026            ).startSpan()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p4, p1}, Lg/g/d/g;-><init>(Li/a/a/f/k;)V

    move-object p3, p4

    goto :goto_0

    .line 8
    :cond_1
    new-instance p3, Lg/g/d/g;

    invoke-interface {p1, p2}, Li/a/a/f/x;->a(Ljava/lang/String;)Li/a/a/f/l;

    move-result-object p1

    invoke-interface {p1}, Li/a/a/f/l;->a()Li/a/a/f/k;

    move-result-object p1

    const-string p2, "tracer.spanBuilder(name).startSpan()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p3, p1}, Lg/g/d/g;-><init>(Li/a/a/f/k;)V

    :goto_0
    return-object p3
.end method

.method static synthetic d(Lg/g/d/f;Li/a/a/f/x;Ljava/lang/String;Lg/g/d/e;ZILjava/lang/Object;)Lg/g/d/e;
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lg/g/d/f;->c(Li/a/a/f/x;Ljava/lang/String;Lg/g/d/e;Z)Lg/g/d/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Li/a/a/f/x;ZLjava/lang/String;Lcom/hiya/api/zipkin/interceptor/HeadersInfo;)Lg/g/d/a;
    .locals 7

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headersInfo"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    new-instance p2, Lg/g/d/b;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-static/range {v0 .. v6}, Lg/g/d/f;->d(Lg/g/d/f;Li/a/a/f/x;Ljava/lang/String;Lg/g/d/e;ZILjava/lang/Object;)Lg/g/d/e;

    move-result-object p1

    invoke-direct {p2, p1, p4}, Lg/g/d/b;-><init>(Lg/g/d/e;Lcom/hiya/api/zipkin/interceptor/HeadersInfo;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Lg/g/d/b;

    new-instance p1, Lg/g/d/l/b;

    invoke-direct {p1}, Lg/g/d/l/b;-><init>()V

    invoke-direct {p2, p1, p4}, Lg/g/d/b;-><init>(Lg/g/d/e;Lcom/hiya/api/zipkin/interceptor/HeadersInfo;)V

    :goto_0
    return-object p2
.end method

.method public final b(Li/a/a/f/x;ZLjava/lang/String;Lg/g/d/e;)Lg/g/d/e;
    .locals 8

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-static/range {v1 .. v7}, Lg/g/d/f;->d(Lg/g/d/f;Li/a/a/f/x;Ljava/lang/String;Lg/g/d/e;ZILjava/lang/Object;)Lg/g/d/e;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lg/g/d/l/b;

    invoke-direct {p1}, Lg/g/d/l/b;-><init>()V

    return-object p1
.end method
