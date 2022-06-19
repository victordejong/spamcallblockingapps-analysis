.class public final Lm/k0/g/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/k0/f/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/k0/g/b$e;,
        Lm/k0/g/b$b;,
        Lm/k0/g/b$a;,
        Lm/k0/g/b$d;,
        Lm/k0/g/b$c;,
        Lm/k0/g/b$f;
    }
.end annotation


# instance fields
.field private a:I

.field private final b:Lm/k0/g/a;

.field private c:Lm/x;

.field private final d:Lm/c0;

.field private final e:Lokhttp3/internal/connection/g;

.field private final f:Ln/h;

.field private final g:Ln/g;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lm/c0;Lokhttp3/internal/connection/g;Ln/h;Ln/g;)V
    .locals 1

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/k0/g/b;->d:Lm/c0;

    iput-object p2, p0, Lm/k0/g/b;->e:Lokhttp3/internal/connection/g;

    iput-object p3, p0, Lm/k0/g/b;->f:Ln/h;

    iput-object p4, p0, Lm/k0/g/b;->g:Ln/g;

    .line 2
    new-instance p1, Lm/k0/g/a;

    invoke-direct {p1, p3}, Lm/k0/g/a;-><init>(Ln/h;)V

    iput-object p1, p0, Lm/k0/g/b;->b:Lm/k0/g/a;

    return-void
.end method

.method public static final synthetic i(Lm/k0/g/b;Ln/m;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm/k0/g/b;->r(Ln/m;)V

    return-void
.end method

.method public static final synthetic j(Lm/k0/g/b;)Lm/c0;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/k0/g/b;->d:Lm/c0;

    return-object p0
.end method

.method public static final synthetic k(Lm/k0/g/b;)Lm/k0/g/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/k0/g/b;->b:Lm/k0/g/a;

    return-object p0
.end method

.method public static final synthetic l(Lm/k0/g/b;)Ln/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/k0/g/b;->g:Ln/g;

    return-object p0
.end method

.method public static final synthetic m(Lm/k0/g/b;)Ln/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/k0/g/b;->f:Ln/h;

    return-object p0
.end method

.method public static final synthetic n(Lm/k0/g/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lm/k0/g/b;->a:I

    return p0
.end method

.method public static final synthetic o(Lm/k0/g/b;)Lm/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/k0/g/b;->c:Lm/x;

    return-object p0
.end method

.method public static final synthetic p(Lm/k0/g/b;I)V
    .locals 0

    .line 1
    iput p1, p0, Lm/k0/g/b;->a:I

    return-void
.end method

.method public static final synthetic q(Lm/k0/g/b;Lm/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/k0/g/b;->c:Lm/x;

    return-void
.end method

.method private final r(Ln/m;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ln/m;->i()Ln/e0;

    move-result-object v0

    .line 2
    sget-object v1, Ln/e0;->d:Ln/e0;

    invoke-virtual {p1, v1}, Ln/m;->j(Ln/e0;)Ln/m;

    .line 3
    invoke-virtual {v0}, Ln/e0;->a()Ln/e0;

    .line 4
    invoke-virtual {v0}, Ln/e0;->b()Ln/e0;

    return-void
.end method

.method private final s(Lm/e0;)Z
    .locals 2

    const-string v0, "Transfer-Encoding"

    .line 1
    invoke-virtual {p1, v0}, Lm/e0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private final t(Lm/g0;)Z
    .locals 3

    const-string v0, "Transfer-Encoding"

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p1, v0, v1, v2, v1}, Lm/g0;->o(Lm/g0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "chunked"

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private final u()Ln/b0;
    .locals 2

    .line 1
    iget v0, p0, Lm/k0/g/b;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lm/k0/g/b;->a:I

    .line 3
    new-instance v0, Lm/k0/g/b$b;

    invoke-direct {v0, p0}, Lm/k0/g/b$b;-><init>(Lm/k0/g/b;)V

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm/k0/g/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final v(Lm/y;)Ln/d0;
    .locals 2

    .line 1
    iget v0, p0, Lm/k0/g/b;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lm/k0/g/b;->a:I

    .line 3
    new-instance v0, Lm/k0/g/b$c;

    invoke-direct {v0, p0, p1}, Lm/k0/g/b$c;-><init>(Lm/k0/g/b;Lm/y;)V

    return-object v0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lm/k0/g/b;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final w(J)Ln/d0;
    .locals 2

    .line 1
    iget v0, p0, Lm/k0/g/b;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lm/k0/g/b;->a:I

    .line 3
    new-instance v0, Lm/k0/g/b$d;

    invoke-direct {v0, p0, p1, p2}, Lm/k0/g/b$d;-><init>(Lm/k0/g/b;J)V

    return-object v0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lm/k0/g/b;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private final x()Ln/b0;
    .locals 2

    .line 1
    iget v0, p0, Lm/k0/g/b;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lm/k0/g/b;->a:I

    .line 3
    new-instance v0, Lm/k0/g/b$e;

    invoke-direct {v0, p0}, Lm/k0/g/b$e;-><init>(Lm/k0/g/b;)V

    return-object v0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm/k0/g/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final y()Ln/d0;
    .locals 2

    .line 1
    iget v0, p0, Lm/k0/g/b;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    .line 2
    iput v0, p0, Lm/k0/g/b;->a:I

    .line 3
    invoke-virtual {p0}, Lm/k0/g/b;->e()Lokhttp3/internal/connection/g;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/connection/g;->z()V

    .line 4
    new-instance v0, Lm/k0/g/b$f;

    invoke-direct {v0, p0}, Lm/k0/g/b$f;-><init>(Lm/k0/g/b;)V

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm/k0/g/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final A(Lm/x;Ljava/lang/String;)V
    .locals 5

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requestLine"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lm/k0/g/b;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lm/k0/g/b;->g:Ln/g;

    invoke-interface {v0, p2}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object p2

    const-string v0, "\r\n"

    invoke-interface {p2, v0}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    .line 3
    invoke-virtual {p1}, Lm/x;->size()I

    move-result p2

    :goto_1
    if-ge v1, p2, :cond_1

    .line 4
    iget-object v3, p0, Lm/k0/g/b;->g:Ln/g;

    invoke-virtual {p1, v1}, Lm/x;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v3

    const-string v4, ": "

    .line 5
    invoke-interface {v3, v4}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v3

    .line 6
    invoke-virtual {p1, v1}, Lm/x;->j(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v3

    .line 7
    invoke-interface {v3, v0}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_1
    iget-object p1, p0, Lm/k0/g/b;->g:Ln/g;

    invoke-interface {p1, v0}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    .line 9
    iput v2, p0, Lm/k0/g/b;->a:I

    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lm/k0/g/b;->a:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/k0/g/b;->g:Ln/g;

    invoke-interface {v0}, Ln/g;->flush()V

    return-void
.end method

.method public b(Lm/e0;)V
    .locals 3

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lm/k0/f/i;->a:Lm/k0/f/i;

    invoke-virtual {p0}, Lm/k0/g/b;->e()Lokhttp3/internal/connection/g;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/internal/connection/g;->A()Lm/i0;

    move-result-object v1

    invoke-virtual {v1}, Lm/i0;->b()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    const-string v2, "connection.route().proxy.type()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lm/k0/f/i;->a(Lm/e0;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lm/e0;->f()Lm/x;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lm/k0/g/b;->A(Lm/x;Ljava/lang/String;)V

    return-void
.end method

.method public c(Lm/g0;)Ln/d0;
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lm/k0/f/e;->b(Lm/g0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lm/k0/g/b;->w(J)Ln/d0;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lm/k0/g/b;->t(Lm/g0;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lm/g0;->M()Lm/e0;

    move-result-object p1

    invoke-virtual {p1}, Lm/e0;->l()Lm/y;

    move-result-object p1

    invoke-direct {p0, p1}, Lm/k0/g/b;->v(Lm/y;)Ln/d0;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1}, Lm/k0/b;->s(Lm/g0;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    .line 4
    invoke-direct {p0, v0, v1}, Lm/k0/g/b;->w(J)Ln/d0;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0}, Lm/k0/g/b;->y()Ln/d0;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public cancel()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm/k0/g/b;->e()Lokhttp3/internal/connection/g;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/connection/g;->e()V

    return-void
.end method

.method public d(Z)Lm/g0$a;
    .locals 4

    .line 1
    iget v0, p0, Lm/k0/g/b;->a:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    .line 2
    :try_start_0
    sget-object v0, Lm/k0/f/k;->d:Lm/k0/f/k$a;

    iget-object v2, p0, Lm/k0/g/b;->b:Lm/k0/g/a;

    invoke-virtual {v2}, Lm/k0/g/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lm/k0/f/k$a;->a(Ljava/lang/String;)Lm/k0/f/k;

    move-result-object v0

    .line 3
    new-instance v2, Lm/g0$a;

    invoke-direct {v2}, Lm/g0$a;-><init>()V

    .line 4
    iget-object v3, v0, Lm/k0/f/k;->a:Lm/d0;

    invoke-virtual {v2, v3}, Lm/g0$a;->p(Lm/d0;)Lm/g0$a;

    .line 5
    iget v3, v0, Lm/k0/f/k;->b:I

    invoke-virtual {v2, v3}, Lm/g0$a;->g(I)Lm/g0$a;

    .line 6
    iget-object v3, v0, Lm/k0/f/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lm/g0$a;->m(Ljava/lang/String;)Lm/g0$a;

    .line 7
    iget-object v3, p0, Lm/k0/g/b;->b:Lm/k0/g/a;

    invoke-virtual {v3}, Lm/k0/g/a;->a()Lm/x;

    move-result-object v3

    invoke-virtual {v2, v3}, Lm/g0$a;->k(Lm/x;)Lm/g0$a;

    const/16 v3, 0x64

    if-eqz p1, :cond_2

    .line 8
    iget p1, v0, Lm/k0/f/k;->b:I

    if-ne p1, v3, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    .line 9
    :cond_2
    iget p1, v0, Lm/k0/f/k;->b:I

    if-ne p1, v3, :cond_3

    .line 10
    iput v1, p0, Lm/k0/g/b;->a:I

    goto :goto_1

    :cond_3
    const/4 p1, 0x4

    .line 11
    iput p1, p0, Lm/k0/g/b;->a:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v2

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p0}, Lm/k0/g/b;->e()Lokhttp3/internal/connection/g;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/connection/g;->A()Lm/i0;

    move-result-object v0

    invoke-virtual {v0}, Lm/i0;->a()Lm/a;

    move-result-object v0

    invoke-virtual {v0}, Lm/a;->l()Lm/y;

    move-result-object v0

    invoke-virtual {v0}, Lm/y;->r()Ljava/lang/String;

    move-result-object v0

    .line 13
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 14
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lm/k0/g/b;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Lokhttp3/internal/connection/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/k0/g/b;->e:Lokhttp3/internal/connection/g;

    return-object v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lm/k0/g/b;->g:Ln/g;

    invoke-interface {v0}, Ln/g;->flush()V

    return-void
.end method

.method public g(Lm/g0;)J
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lm/k0/f/e;->b(Lm/g0;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lm/k0/g/b;->t(Lm/g0;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1}, Lm/k0/b;->s(Lm/g0;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public h(Lm/e0;J)Ln/b0;
    .locals 2

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lm/e0;->a()Lm/f0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lm/e0;->a()Lm/f0;

    move-result-object v0

    invoke-virtual {v0}, Lm/f0;->isDuplex()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string p2, "Duplex connections are not supported for HTTP/1"

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lm/k0/g/b;->s(Lm/e0;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lm/k0/g/b;->u()Ln/b0;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-wide/16 v0, -0x1

    cmp-long p1, p2, v0

    if-eqz p1, :cond_3

    .line 3
    invoke-direct {p0}, Lm/k0/g/b;->x()Ln/b0;

    move-result-object p1

    :goto_1
    return-object p1

    .line 4
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final z(Lm/g0;)V
    .locals 4

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lm/k0/b;->s(Lm/g0;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, v0, v1}, Lm/k0/g/b;->w(J)Ln/d0;

    move-result-object p1

    const v0, 0x7fffffff

    .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1}, Lm/k0/b;->J(Ln/d0;ILjava/util/concurrent/TimeUnit;)Z

    .line 4
    invoke-interface {p1}, Ln/d0;->close()V

    return-void
.end method
