.class public Lm/g0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lm/e0;

.field private b:Lm/d0;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Lm/w;

.field private f:Lm/x$a;

.field private g:Lm/h0;

.field private h:Lm/g0;

.field private i:Lm/g0;

.field private j:Lm/g0;

.field private k:J

.field private l:J

.field private m:Lokhttp3/internal/connection/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lm/g0$a;->c:I

    .line 3
    new-instance v0, Lm/x$a;

    invoke-direct {v0}, Lm/x$a;-><init>()V

    iput-object v0, p0, Lm/g0$a;->f:Lm/x$a;

    return-void
.end method

.method public constructor <init>(Lm/g0;)V
    .locals 2

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lm/g0$a;->c:I

    .line 6
    invoke-virtual {p1}, Lm/g0;->M()Lm/e0;

    move-result-object v0

    iput-object v0, p0, Lm/g0$a;->a:Lm/e0;

    .line 7
    invoke-virtual {p1}, Lm/g0;->K()Lm/d0;

    move-result-object v0

    iput-object v0, p0, Lm/g0$a;->b:Lm/d0;

    .line 8
    invoke-virtual {p1}, Lm/g0;->f()I

    move-result v0

    iput v0, p0, Lm/g0$a;->c:I

    .line 9
    invoke-virtual {p1}, Lm/g0;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lm/g0$a;->d:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lm/g0;->i()Lm/w;

    move-result-object v0

    iput-object v0, p0, Lm/g0$a;->e:Lm/w;

    .line 11
    invoke-virtual {p1}, Lm/g0;->r()Lm/x;

    move-result-object v0

    invoke-virtual {v0}, Lm/x;->h()Lm/x$a;

    move-result-object v0

    iput-object v0, p0, Lm/g0$a;->f:Lm/x$a;

    .line 12
    invoke-virtual {p1}, Lm/g0;->a()Lm/h0;

    move-result-object v0

    iput-object v0, p0, Lm/g0$a;->g:Lm/h0;

    .line 13
    invoke-virtual {p1}, Lm/g0;->A()Lm/g0;

    move-result-object v0

    iput-object v0, p0, Lm/g0$a;->h:Lm/g0;

    .line 14
    invoke-virtual {p1}, Lm/g0;->c()Lm/g0;

    move-result-object v0

    iput-object v0, p0, Lm/g0$a;->i:Lm/g0;

    .line 15
    invoke-virtual {p1}, Lm/g0;->D()Lm/g0;

    move-result-object v0

    iput-object v0, p0, Lm/g0$a;->j:Lm/g0;

    .line 16
    invoke-virtual {p1}, Lm/g0;->N()J

    move-result-wide v0

    iput-wide v0, p0, Lm/g0$a;->k:J

    .line 17
    invoke-virtual {p1}, Lm/g0;->L()J

    move-result-wide v0

    iput-wide v0, p0, Lm/g0$a;->l:J

    .line 18
    invoke-virtual {p1}, Lm/g0;->g()Lokhttp3/internal/connection/c;

    move-result-object p1

    iput-object p1, p0, Lm/g0$a;->m:Lokhttp3/internal/connection/c;

    return-void
.end method

.method private final e(Lm/g0;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lm/g0;->a()Lm/h0;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "priorResponse.body != null"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method private final f(Ljava/lang/String;Lm/g0;)V
    .locals 3

    if-eqz p2, :cond_8

    .line 1
    invoke-virtual {p2}, Lm/g0;->a()Lm/h0;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p2}, Lm/g0;->A()Lm/g0;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {p2}, Lm/g0;->c()Lm/g0;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {p2}, Lm/g0;->D()Lm/g0;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".priorResponse != null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 5
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cacheResponse != null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 6
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".networkResponse != null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 7
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".body != null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_8
    :goto_4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lm/g0$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lm/g0$a;->f:Lm/x$a;

    invoke-virtual {v0, p1, p2}, Lm/x$a;->a(Ljava/lang/String;Ljava/lang/String;)Lm/x$a;

    return-object p0
.end method

.method public b(Lm/h0;)Lm/g0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lm/g0$a;->g:Lm/h0;

    return-object p0
.end method

.method public c()Lm/g0;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget v5, v0, Lm/g0$a;->c:I

    if-ltz v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 2
    iget-object v2, v0, Lm/g0$a;->a:Lm/e0;

    if-eqz v2, :cond_3

    .line 3
    iget-object v3, v0, Lm/g0$a;->b:Lm/d0;

    if-eqz v3, :cond_2

    .line 4
    iget-object v4, v0, Lm/g0$a;->d:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 5
    iget-object v6, v0, Lm/g0$a;->e:Lm/w;

    .line 6
    iget-object v1, v0, Lm/g0$a;->f:Lm/x$a;

    invoke-virtual {v1}, Lm/x$a;->e()Lm/x;

    move-result-object v7

    .line 7
    iget-object v8, v0, Lm/g0$a;->g:Lm/h0;

    .line 8
    iget-object v9, v0, Lm/g0$a;->h:Lm/g0;

    .line 9
    iget-object v10, v0, Lm/g0$a;->i:Lm/g0;

    .line 10
    iget-object v11, v0, Lm/g0$a;->j:Lm/g0;

    .line 11
    iget-wide v12, v0, Lm/g0$a;->k:J

    .line 12
    iget-wide v14, v0, Lm/g0$a;->l:J

    .line 13
    iget-object v1, v0, Lm/g0$a;->m:Lokhttp3/internal/connection/c;

    .line 14
    new-instance v17, Lm/g0;

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v16}, Lm/g0;-><init>(Lm/e0;Lm/d0;Ljava/lang/String;ILm/w;Lm/x;Lm/h0;Lm/g0;Lm/g0;Lm/g0;JJLokhttp3/internal/connection/c;)V

    return-object v17

    .line 15
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "message == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "protocol == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "request == null"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 18
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lm/g0$a;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public d(Lm/g0;)Lm/g0$a;
    .locals 1

    const-string v0, "cacheResponse"

    .line 1
    invoke-direct {p0, v0, p1}, Lm/g0$a;->f(Ljava/lang/String;Lm/g0;)V

    .line 2
    iput-object p1, p0, Lm/g0$a;->i:Lm/g0;

    return-object p0
.end method

.method public g(I)Lm/g0$a;
    .locals 0

    .line 1
    iput p1, p0, Lm/g0$a;->c:I

    return-object p0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lm/g0$a;->c:I

    return v0
.end method

.method public i(Lm/w;)Lm/g0$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lm/g0$a;->e:Lm/w;

    return-object p0
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;)Lm/g0$a;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lm/g0$a;->f:Lm/x$a;

    invoke-virtual {v0, p1, p2}, Lm/x$a;->i(Ljava/lang/String;Ljava/lang/String;)Lm/x$a;

    return-object p0
.end method

.method public k(Lm/x;)Lm/g0$a;
    .locals 1

    const-string v0, "headers"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lm/x;->h()Lm/x$a;

    move-result-object p1

    iput-object p1, p0, Lm/g0$a;->f:Lm/x$a;

    return-object p0
.end method

.method public final l(Lokhttp3/internal/connection/c;)V
    .locals 1

    const-string v0, "deferredTrailers"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lm/g0$a;->m:Lokhttp3/internal/connection/c;

    return-void
.end method

.method public m(Ljava/lang/String;)Lm/g0$a;
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lm/g0$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public n(Lm/g0;)Lm/g0$a;
    .locals 1

    const-string v0, "networkResponse"

    .line 1
    invoke-direct {p0, v0, p1}, Lm/g0$a;->f(Ljava/lang/String;Lm/g0;)V

    .line 2
    iput-object p1, p0, Lm/g0$a;->h:Lm/g0;

    return-object p0
.end method

.method public o(Lm/g0;)Lm/g0$a;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm/g0$a;->e(Lm/g0;)V

    .line 2
    iput-object p1, p0, Lm/g0$a;->j:Lm/g0;

    return-object p0
.end method

.method public p(Lm/d0;)Lm/g0$a;
    .locals 1

    const-string v0, "protocol"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lm/g0$a;->b:Lm/d0;

    return-object p0
.end method

.method public q(J)Lm/g0$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lm/g0$a;->l:J

    return-object p0
.end method

.method public r(Lm/e0;)Lm/g0$a;
    .locals 1

    const-string v0, "request"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lm/g0$a;->a:Lm/e0;

    return-object p0
.end method

.method public s(J)Lm/g0$a;
    .locals 0

    .line 1
    iput-wide p1, p0, Lm/g0$a;->k:J

    return-object p0
.end method
