.class public final Lg/g/d/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/d/e;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Li/a/a/f/k;


# direct methods
.method public constructor <init>(Li/a/a/f/k;)V
    .locals 2

    const-string v0, "span"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    .line 2
    invoke-interface {p1}, Li/a/a/f/k;->b()Li/a/a/f/n;

    move-result-object v0

    const-string v1, "span.spanContext"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Li/a/a/f/n;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "span.spanContext.spanId"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lg/g/d/g;->a:Ljava/lang/String;

    const-string v1, "spanId"

    .line 3
    invoke-interface {p1, v1, v0}, Li/a/a/f/k;->i(Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/k;

    return-void
.end method

.method private final p(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final q(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sw.toString()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    invoke-interface {v0}, Li/a/a/f/k;->a()V

    return-void
.end method

.method public b(Lg/g/b/c/f;)V
    .locals 3

    const-string v0, "callerId"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    invoke-virtual {p1}, Lg/g/b/c/f;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cachedCallerId"

    invoke-interface {v0, v2, v1}, Li/a/a/f/k;->i(Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/k;

    .line 2
    iget-object v0, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    invoke-interface {v0, v2}, Li/a/a/f/k;->d(Ljava/lang/String;)Li/a/a/f/k;

    .line 3
    iget-object v0, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profileTag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/g/b/c/f;->t()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Li/a/a/f/k;->d(Ljava/lang/String;)Li/a/a/f/k;

    return-void
.end method

.method public c(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    const-string v0, "throwable"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lg/g/d/g;->q(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lg/g/d/g;->q(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 3
    :goto_0
    iget-object v0, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    sget-object v1, Li/a/a/f/r;->ERROR:Li/a/a/f/r;

    invoke-interface {v0, v1, p2}, Li/a/a/f/k;->h(Li/a/a/f/r;Ljava/lang/String;)Li/a/a/f/k;

    .line 4
    iget-object p2, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    invoke-direct {p0, p1}, Lg/g/d/g;->p(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "error.type"

    invoke-interface {p2, v0, p1}, Li/a/a/f/k;->i(Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/k;

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "osInfo"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    invoke-interface {v1, v0, p1}, Li/a/a/f/k;->i(Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/k;

    return-void
.end method

.method public e()Li/a/a/f/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    return-object v0
.end method

.method public f(Lg/g/d/j/a;)V
    .locals 2

    const-string v0, "callState"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Li/a/a/f/k;->i(Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/k;

    return-void
.end method

.method public g(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    const-string v1, "isContact"

    invoke-interface {v0, v1, p1}, Li/a/a/f/k;->j(Ljava/lang/String;Z)Li/a/a/f/k;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    const-string v0, "productVersion"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    invoke-interface {v1, v0, p1}, Li/a/a/f/k;->i(Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/k;

    return-void
.end method

.method public i(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    const-string v1, "isWifiOn"

    invoke-interface {v0, v1, p1}, Li/a/a/f/k;->j(Ljava/lang/String;Z)Li/a/a/f/k;

    .line 2
    iget-object v0, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Li/a/a/f/k;->d(Ljava/lang/String;)Li/a/a/f/k;

    return-void
.end method

.method public j()Lg/g/d/c;
    .locals 3

    .line 1
    new-instance v0, Lg/g/d/d;

    iget-object v1, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    invoke-interface {v1}, Li/a/b/n;->c()Li/a/b/p;

    move-result-object v1

    const-string v2, "span.makeCurrent()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lg/g/d/d;-><init>(Li/a/b/p;)V

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 2

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    const-string v1, "designatedPhoneNumber"

    invoke-interface {v0, v1, p1}, Li/a/a/f/k;->i(Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/k;

    return-void
.end method

.method public l(Lg/g/d/j/b;)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mobileData"

    invoke-interface {v0, v1, p1}, Li/a/a/f/k;->i(Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/k;

    return-void
.end method

.method public m(Lg/g/b/c/k;)V
    .locals 2

    const-string v0, "direction"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    invoke-virtual {p1}, Lg/g/b/c/k;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Li/a/a/f/k;->i(Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/k;

    return-void
.end method

.method public n(Lg/g/b/c/f;)V
    .locals 3

    const-string v0, "callerId"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    invoke-virtual {p1}, Lg/g/b/c/f;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "liveCallerId"

    invoke-interface {v0, v2, v1}, Li/a/a/f/k;->i(Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/k;

    .line 2
    iget-object v0, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    invoke-interface {v0, v2}, Li/a/a/f/k;->d(Ljava/lang/String;)Li/a/a/f/k;

    .line 3
    iget-object v0, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "profileTag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lg/g/b/c/f;->t()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Li/a/a/f/k;->d(Ljava/lang/String;)Li/a/a/f/k;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 2

    const-string v0, "installationId"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lg/g/d/g;->b:Li/a/a/f/k;

    invoke-interface {v1, v0, p1}, Li/a/a/f/k;->i(Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/k;

    return-void
.end method
