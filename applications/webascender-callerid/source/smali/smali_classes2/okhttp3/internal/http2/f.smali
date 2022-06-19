.class public final Lokhttp3/internal/http2/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/k0/f/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/http2/f$a;
    }
.end annotation


# static fields
.field private static final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Lokhttp3/internal/http2/f$a;


# instance fields
.field private volatile a:Lokhttp3/internal/http2/h;

.field private final b:Lm/d0;

.field private volatile c:Z

.field private final d:Lokhttp3/internal/connection/g;

.field private final e:Lm/k0/f/g;

.field private final f:Lokhttp3/internal/http2/e;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lokhttp3/internal/http2/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/http2/f$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lokhttp3/internal/http2/f;->i:Lokhttp3/internal/http2/f$a;

    const-string v2, "connection"

    const-string v3, "host"

    const-string v4, "keep-alive"

    const-string v5, "proxy-connection"

    const-string v6, "te"

    const-string v7, "transfer-encoding"

    const-string v8, "encoding"

    const-string v9, "upgrade"

    const-string v10, ":method"

    const-string v11, ":path"

    const-string v12, ":scheme"

    const-string v13, ":authority"

    .line 1
    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lm/k0/b;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/f;->g:Ljava/util/List;

    const-string v1, "connection"

    const-string v2, "host"

    const-string v3, "keep-alive"

    const-string v4, "proxy-connection"

    const-string v5, "te"

    const-string v6, "transfer-encoding"

    const-string v7, "encoding"

    const-string v8, "upgrade"

    .line 3
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lm/k0/b;->t([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/http2/f;->h:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lm/c0;Lokhttp3/internal/connection/g;Lm/k0/f/g;Lokhttp3/internal/http2/e;)V
    .locals 1

    const-string v0, "client"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connection"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chain"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "http2Connection"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lokhttp3/internal/http2/f;->d:Lokhttp3/internal/connection/g;

    iput-object p3, p0, Lokhttp3/internal/http2/f;->e:Lm/k0/f/g;

    iput-object p4, p0, Lokhttp3/internal/http2/f;->f:Lokhttp3/internal/http2/e;

    .line 2
    invoke-virtual {p1}, Lm/c0;->B()Ljava/util/List;

    move-result-object p1

    sget-object p2, Lm/d0;->H2_PRIOR_KNOWLEDGE:Lm/d0;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget-object p2, Lm/d0;->HTTP_2:Lm/d0;

    .line 4
    :goto_0
    iput-object p2, p0, Lokhttp3/internal/http2/f;->b:Lm/d0;

    return-void
.end method

.method public static final synthetic i()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/internal/http2/f;->g:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic j()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lokhttp3/internal/http2/f;->h:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/f;->a:Lokhttp3/internal/http2/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->n()Ln/b0;

    move-result-object v0

    invoke-interface {v0}, Ln/b0;->close()V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method

.method public b(Lm/e0;)V
    .locals 4

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/f;->a:Lokhttp3/internal/http2/h;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lm/e0;->a()Lm/f0;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3
    :goto_0
    sget-object v1, Lokhttp3/internal/http2/f;->i:Lokhttp3/internal/http2/f$a;

    invoke-virtual {v1, p1}, Lokhttp3/internal/http2/f$a;->a(Lm/e0;)Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lokhttp3/internal/http2/f;->f:Lokhttp3/internal/http2/e;

    invoke-virtual {v1, p1, v0}, Lokhttp3/internal/http2/e;->N0(Ljava/util/List;Z)Lokhttp3/internal/http2/h;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/internal/http2/f;->a:Lokhttp3/internal/http2/h;

    .line 5
    iget-boolean p1, p0, Lokhttp3/internal/http2/f;->c:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 6
    iget-object p1, p0, Lokhttp3/internal/http2/f;->a:Lokhttp3/internal/http2/h;

    if-nez p1, :cond_2

    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    :cond_2
    sget-object v0, Lokhttp3/internal/http2/a;->CANCEL:Lokhttp3/internal/http2/a;

    invoke-virtual {p1, v0}, Lokhttp3/internal/http2/h;->f(Lokhttp3/internal/http2/a;)V

    .line 7
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Canceled"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_3
    iget-object p1, p0, Lokhttp3/internal/http2/f;->a:Lokhttp3/internal/http2/h;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lokhttp3/internal/http2/h;->v()Ln/e0;

    move-result-object p1

    iget-object v1, p0, Lokhttp3/internal/http2/f;->e:Lm/k0/f/g;

    invoke-virtual {v1}, Lm/k0/f/g;->h()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v1, v2, v3}, Ln/e0;->g(JLjava/util/concurrent/TimeUnit;)Ln/e0;

    .line 9
    iget-object p1, p0, Lokhttp3/internal/http2/f;->a:Lokhttp3/internal/http2/h;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lokhttp3/internal/http2/h;->E()Ln/e0;

    move-result-object p1

    iget-object v0, p0, Lokhttp3/internal/http2/f;->e:Lm/k0/f/g;

    invoke-virtual {v0}, Lm/k0/f/g;->j()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1, v3}, Ln/e0;->g(JLjava/util/concurrent/TimeUnit;)Ln/e0;

    return-void

    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    .line 10
    :cond_5
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0
.end method

.method public c(Lm/g0;)Ln/d0;
    .locals 1

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lokhttp3/internal/http2/f;->a:Lokhttp3/internal/http2/h;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/internal/http2/h;->p()Lokhttp3/internal/http2/h$b;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method

.method public cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lokhttp3/internal/http2/f;->c:Z

    .line 2
    iget-object v0, p0, Lokhttp3/internal/http2/f;->a:Lokhttp3/internal/http2/h;

    if-eqz v0, :cond_0

    sget-object v1, Lokhttp3/internal/http2/a;->CANCEL:Lokhttp3/internal/http2/a;

    invoke-virtual {v0, v1}, Lokhttp3/internal/http2/h;->f(Lokhttp3/internal/http2/a;)V

    :cond_0
    return-void
.end method

.method public d(Z)Lm/g0$a;
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/f;->a:Lokhttp3/internal/http2/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lokhttp3/internal/http2/h;->C()Lm/x;

    move-result-object v0

    .line 2
    sget-object v2, Lokhttp3/internal/http2/f;->i:Lokhttp3/internal/http2/f$a;

    iget-object v3, p0, Lokhttp3/internal/http2/f;->b:Lm/d0;

    invoke-virtual {v2, v0, v3}, Lokhttp3/internal/http2/f$a;->b(Lm/x;Lm/d0;)Lm/g0$a;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Lm/g0$a;->h()I

    move-result p1

    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1

    .line 4
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1
.end method

.method public e()Lokhttp3/internal/connection/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/f;->d:Lokhttp3/internal/connection/g;

    return-object v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/f;->f:Lokhttp3/internal/http2/e;

    invoke-virtual {v0}, Lokhttp3/internal/http2/e;->flush()V

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
    invoke-static {p1}, Lm/k0/b;->s(Lm/g0;)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public h(Lm/e0;J)Ln/b0;
    .locals 0

    const-string p2, "request"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lokhttp3/internal/http2/f;->a:Lokhttp3/internal/http2/h;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/internal/http2/h;->n()Ln/b0;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method
