.class public final Lm/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/g0$a;
    }
.end annotation


# instance fields
.field private f:Lm/e;

.field private final g:Lm/e0;

.field private final h:Lm/d0;

.field private final i:Ljava/lang/String;

.field private final j:I

.field private final k:Lm/w;

.field private final l:Lm/x;

.field private final m:Lm/h0;

.field private final n:Lm/g0;

.field private final o:Lm/g0;

.field private final p:Lm/g0;

.field private final q:J

.field private final r:J

.field private final s:Lokhttp3/internal/connection/c;


# direct methods
.method public constructor <init>(Lm/e0;Lm/d0;Ljava/lang/String;ILm/w;Lm/x;Lm/h0;Lm/g0;Lm/g0;Lm/g0;JJLokhttp3/internal/connection/c;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    const-string v5, "request"

    invoke-static {p1, v5}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "protocol"

    invoke-static {p2, v5}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "message"

    invoke-static {p3, v5}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "headers"

    invoke-static {p6, v5}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lm/g0;->g:Lm/e0;

    iput-object v2, v0, Lm/g0;->h:Lm/d0;

    iput-object v3, v0, Lm/g0;->i:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Lm/g0;->j:I

    move-object v1, p5

    iput-object v1, v0, Lm/g0;->k:Lm/w;

    iput-object v4, v0, Lm/g0;->l:Lm/x;

    move-object v1, p7

    iput-object v1, v0, Lm/g0;->m:Lm/h0;

    move-object v1, p8

    iput-object v1, v0, Lm/g0;->n:Lm/g0;

    move-object v1, p9

    iput-object v1, v0, Lm/g0;->o:Lm/g0;

    move-object/from16 v1, p10

    iput-object v1, v0, Lm/g0;->p:Lm/g0;

    move-wide/from16 v1, p11

    iput-wide v1, v0, Lm/g0;->q:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lm/g0;->r:J

    move-object/from16 v1, p15

    iput-object v1, v0, Lm/g0;->s:Lokhttp3/internal/connection/c;

    return-void
.end method

.method public static synthetic o(Lm/g0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lm/g0;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A()Lm/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/g0;->n:Lm/g0;

    return-object v0
.end method

.method public final C()Lm/g0$a;
    .locals 1

    .line 1
    new-instance v0, Lm/g0$a;

    invoke-direct {v0, p0}, Lm/g0$a;-><init>(Lm/g0;)V

    return-object v0
.end method

.method public final D()Lm/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/g0;->p:Lm/g0;

    return-object v0
.end method

.method public final K()Lm/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/g0;->h:Lm/d0;

    return-object v0
.end method

.method public final L()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lm/g0;->r:J

    return-wide v0
.end method

.method public final M()Lm/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/g0;->g:Lm/e0;

    return-object v0
.end method

.method public final N()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lm/g0;->q:J

    return-wide v0
.end method

.method public final a()Lm/h0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/g0;->m:Lm/h0;

    return-object v0
.end method

.method public final b()Lm/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lm/g0;->f:Lm/e;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lm/e;->o:Lm/e$b;

    iget-object v1, p0, Lm/g0;->l:Lm/x;

    invoke-virtual {v0, v1}, Lm/e$b;->b(Lm/x;)Lm/e;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lm/g0;->f:Lm/e;

    :cond_0
    return-object v0
.end method

.method public final c()Lm/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/g0;->o:Lm/g0;

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm/g0;->m:Lm/h0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm/h0;->close()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "response is not eligible for a body and must not be closed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lm/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/g0;->l:Lm/x;

    .line 2
    iget v1, p0, Lm/g0;->j:I

    const/16 v2, 0x191

    if-eq v1, v2, :cond_1

    const/16 v2, 0x197

    if-eq v1, v2, :cond_0

    .line 3
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "Proxy-Authenticate"

    goto :goto_0

    :cond_1
    const-string v1, "WWW-Authenticate"

    .line 4
    :goto_0
    invoke-static {v0, v1}, Lm/k0/f/e;->a(Lm/x;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lm/g0;->j:I

    return v0
.end method

.method public final g()Lokhttp3/internal/connection/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/g0;->s:Lokhttp3/internal/connection/c;

    return-object v0
.end method

.method public final i()Lm/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/g0;->k:Lm/w;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lm/g0;->o(Lm/g0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lm/g0;->l:Lm/x;

    invoke-virtual {v0, p1}, Lm/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public final r()Lm/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/g0;->l:Lm/x;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Response{protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm/g0;->h:Lm/d0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lm/g0;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm/g0;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm/g0;->g:Lm/e0;

    invoke-virtual {v1}, Lm/e0;->l()Lm/y;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y()Z
    .locals 2

    .line 1
    iget v0, p0, Lm/g0;->j:I

    const/16 v1, 0xc8

    if-le v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x12b

    if-lt v1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/g0;->i:Ljava/lang/String;

    return-object v0
.end method
