.class public final Lg/g/d/m/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Li/a/d/a;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lg/g/d/k/a;

.field private final e:Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;

.field private final f:Lg/g/d/m/a/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lg/g/d/k/a;Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;Lg/g/d/m/a/b;)V
    .locals 1

    const-string v0, "serviceName"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endpoint"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "batchInfoProvider"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "randomIdGenerator"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/d/m/a/c;->b:Ljava/lang/String;

    iput-object p2, p0, Lg/g/d/m/a/c;->c:Ljava/lang/String;

    iput-object p3, p0, Lg/g/d/m/a/c;->d:Lg/g/d/k/a;

    iput-object p4, p0, Lg/g/d/m/a/c;->e:Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;

    iput-object p5, p0, Lg/g/d/m/a/c;->f:Lg/g/d/m/a/b;

    .line 2
    invoke-direct {p0}, Lg/g/d/m/a/c;->b()Li/a/d/a;

    move-result-object p1

    iput-object p1, p0, Lg/g/d/m/a/c;->a:Li/a/d/a;

    return-void
.end method

.method private final b()Li/a/d/a;
    .locals 6

    .line 1
    invoke-direct {p0}, Lg/g/d/m/a/c;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Li/a/c/a/b;->b()Li/a/c/a/c;

    move-result-object v0

    iget-object v1, p0, Lg/g/d/m/a/c;->e:Lcom/hiya/api/zipkin/reporter/ZipkinCustomHiyaSender;

    invoke-virtual {v0, v1}, Li/a/c/a/c;->b(Lzipkin2/reporter/a;)Li/a/c/a/c;

    invoke-virtual {v0}, Li/a/c/a/c;->a()Li/a/c/a/b;

    move-result-object v0

    const-string v1, "service.name"

    .line 3
    invoke-static {v1}, Li/a/a/c/e;->d(Ljava/lang/String;)Li/a/a/c/f;

    move-result-object v1

    iget-object v2, p0, Lg/g/d/m/a/c;->b:Ljava/lang/String;

    invoke-static {v1, v2}, Li/a/a/c/i;->c(Li/a/a/c/f;Ljava/lang/Object;)Li/a/a/c/j;

    move-result-object v1

    invoke-static {v1}, Li/a/d/e/d;->b(Li/a/a/c/j;)Li/a/d/e/d;

    move-result-object v1

    const-string v2, "Resource.create(Attribut\u2026ice.name\"), serviceName))"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Li/a/d/f/q;->b()Li/a/d/f/r;

    move-result-object v2

    .line 5
    invoke-static {v0}, Li/a/d/f/z/d;->b(Li/a/d/f/z/g;)Li/a/d/f/z/e;

    move-result-object v0

    .line 6
    iget-object v3, p0, Lg/g/d/m/a/c;->d:Lg/g/d/k/a;

    invoke-interface {v3}, Lg/g/d/k/a;->a()J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, v5}, Li/a/d/f/z/e;->b(JLjava/util/concurrent/TimeUnit;)Li/a/d/f/z/e;

    .line 7
    invoke-virtual {v0}, Li/a/d/f/z/e;->a()Li/a/d/f/z/d;

    move-result-object v0

    .line 8
    invoke-virtual {v2, v0}, Li/a/d/f/r;->a(Li/a/d/f/v;)Li/a/d/f/r;

    .line 9
    iget-object v0, p0, Lg/g/d/m/a/c;->f:Lg/g/d/m/a/b;

    invoke-virtual {v2, v0}, Li/a/d/f/r;->c(Li/a/d/f/h;)Li/a/d/f/r;

    .line 10
    invoke-static {}, Li/a/d/e/d;->d()Li/a/d/e/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Li/a/d/e/d;->h(Li/a/d/e/d;)Li/a/d/e/d;

    move-result-object v0

    invoke-virtual {v2, v0}, Li/a/d/f/r;->d(Li/a/d/e/d;)Li/a/d/f/r;

    .line 11
    invoke-virtual {v2}, Li/a/d/f/r;->b()Li/a/d/f/q;

    move-result-object v0

    .line 12
    invoke-static {}, Li/a/d/a;->c()Li/a/d/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Li/a/d/b;->b(Li/a/d/f/q;)Li/a/d/b;

    invoke-virtual {v1}, Li/a/d/b;->a()Li/a/d/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private final c()Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x17

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lg/g/d/m/a/c;->c:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public final a()Li/a/a/f/x;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/d/m/a/c;->a:Li/a/d/a;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/g/d/m/a/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Li/a/a/b;->b(Ljava/lang/String;)Li/a/a/f/x;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
