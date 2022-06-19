.class public final Lm/k0/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/z;


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lm/k0/f/b;->a:Z

    return-void
.end method


# virtual methods
.method public intercept(Lm/z$a;)Lm/g0;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Lm/k0/f/g;

    .line 2
    invoke-virtual {p1}, Lm/k0/f/g;->g()Lokhttp3/internal/connection/c;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    .line 3
    invoke-virtual {p1}, Lm/k0/f/g;->i()Lm/e0;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lm/e0;->a()Lm/f0;

    move-result-object v2

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 6
    invoke-virtual {v0, p1}, Lokhttp3/internal/connection/c;->t(Lm/e0;)V

    .line 7
    invoke-virtual {p1}, Lm/e0;->h()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lm/k0/f/f;->b(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    const-string v5, "Expect"

    .line 8
    invoke-virtual {p1, v5}, Lm/e0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "100-continue"

    invoke-static {v8, v5, v7}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->f()V

    .line 10
    invoke-virtual {v0, v7}, Lokhttp3/internal/connection/c;->p(Z)Lm/g0$a;

    move-result-object v5

    .line 11
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->r()V

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    move-object v5, v1

    const/4 v8, 0x1

    :goto_0
    if-nez v5, :cond_2

    .line 12
    invoke-virtual {v2}, Lm/f0;->isDuplex()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 13
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->f()V

    .line 14
    invoke-virtual {v0, p1, v7}, Lokhttp3/internal/connection/c;->c(Lm/e0;Z)Ln/b0;

    move-result-object v9

    invoke-static {v9}, Ln/r;->c(Ln/b0;)Ln/g;

    move-result-object v9

    .line 15
    invoke-virtual {v2, v9}, Lm/f0;->writeTo(Ln/g;)V

    goto :goto_1

    .line 16
    :cond_1
    invoke-virtual {v0, p1, v6}, Lokhttp3/internal/connection/c;->c(Lm/e0;Z)Ln/b0;

    move-result-object v9

    invoke-static {v9}, Ln/r;->c(Ln/b0;)Ln/g;

    move-result-object v9

    .line 17
    invoke-virtual {v2, v9}, Lm/f0;->writeTo(Ln/g;)V

    .line 18
    invoke-interface {v9}, Ln/b0;->close()V

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->n()V

    .line 20
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->h()Lokhttp3/internal/connection/g;

    move-result-object v9

    invoke-virtual {v9}, Lokhttp3/internal/connection/g;->w()Z

    move-result v9

    if-nez v9, :cond_4

    .line 21
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->m()V

    goto :goto_1

    .line 22
    :cond_3
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->n()V

    move-object v5, v1

    const/4 v8, 0x1

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    .line 23
    invoke-virtual {v2}, Lm/f0;->isDuplex()Z

    move-result v2

    if-nez v2, :cond_6

    .line 24
    :cond_5
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->e()V

    :cond_6
    if-nez v5, :cond_8

    .line 25
    invoke-virtual {v0, v6}, Lokhttp3/internal/connection/c;->p(Z)Lm/g0$a;

    move-result-object v5

    if-eqz v5, :cond_7

    if-eqz v8, :cond_8

    .line 26
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->r()V

    const/4 v8, 0x0

    goto :goto_2

    .line 27
    :cond_7
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 28
    :cond_8
    :goto_2
    invoke-virtual {v5, p1}, Lm/g0$a;->r(Lm/e0;)Lm/g0$a;

    .line 29
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->h()Lokhttp3/internal/connection/g;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/internal/connection/g;->s()Lm/w;

    move-result-object v2

    invoke-virtual {v5, v2}, Lm/g0$a;->i(Lm/w;)Lm/g0$a;

    .line 30
    invoke-virtual {v5, v3, v4}, Lm/g0$a;->s(J)Lm/g0$a;

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v5, v9, v10}, Lm/g0$a;->q(J)Lm/g0$a;

    .line 32
    invoke-virtual {v5}, Lm/g0$a;->c()Lm/g0;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Lm/g0;->f()I

    move-result v5

    const/16 v9, 0x64

    if-ne v5, v9, :cond_b

    .line 34
    invoke-virtual {v0, v6}, Lokhttp3/internal/connection/c;->p(Z)Lm/g0$a;

    move-result-object v2

    if-eqz v2, :cond_a

    if-eqz v8, :cond_9

    .line 35
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->r()V

    .line 36
    :cond_9
    invoke-virtual {v2, p1}, Lm/g0$a;->r(Lm/e0;)Lm/g0$a;

    .line 37
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->h()Lokhttp3/internal/connection/g;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/internal/connection/g;->s()Lm/w;

    move-result-object p1

    invoke-virtual {v2, p1}, Lm/g0$a;->i(Lm/w;)Lm/g0$a;

    .line 38
    invoke-virtual {v2, v3, v4}, Lm/g0$a;->s(J)Lm/g0$a;

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lm/g0$a;->q(J)Lm/g0$a;

    .line 40
    invoke-virtual {v2}, Lm/g0$a;->c()Lm/g0;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lm/g0;->f()I

    move-result v5

    goto :goto_3

    .line 42
    :cond_a
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 43
    :cond_b
    :goto_3
    invoke-virtual {v0, v2}, Lokhttp3/internal/connection/c;->q(Lm/g0;)V

    .line 44
    iget-boolean p1, p0, Lm/k0/f/b;->a:Z

    if-eqz p1, :cond_c

    const/16 p1, 0x65

    if-ne v5, p1, :cond_c

    .line 45
    invoke-virtual {v2}, Lm/g0;->C()Lm/g0$a;

    move-result-object p1

    .line 46
    sget-object v2, Lm/k0/b;->c:Lm/h0;

    invoke-virtual {p1, v2}, Lm/g0$a;->b(Lm/h0;)Lm/g0$a;

    .line 47
    invoke-virtual {p1}, Lm/g0$a;->c()Lm/g0;

    move-result-object p1

    goto :goto_4

    .line 48
    :cond_c
    invoke-virtual {v2}, Lm/g0;->C()Lm/g0$a;

    move-result-object p1

    .line 49
    invoke-virtual {v0, v2}, Lokhttp3/internal/connection/c;->o(Lm/g0;)Lm/h0;

    move-result-object v2

    invoke-virtual {p1, v2}, Lm/g0$a;->b(Lm/h0;)Lm/g0$a;

    .line 50
    invoke-virtual {p1}, Lm/g0$a;->c()Lm/g0;

    move-result-object p1

    .line 51
    :goto_4
    invoke-virtual {p1}, Lm/g0;->M()Lm/e0;

    move-result-object v2

    const-string v3, "Connection"

    invoke-virtual {v2, v3}, Lm/e0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "close"

    invoke-static {v4, v2, v7}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x2

    .line 52
    invoke-static {p1, v3, v1, v2, v1}, Lm/g0;->o(Lm/g0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v7}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 53
    :cond_d
    invoke-virtual {v0}, Lokhttp3/internal/connection/c;->m()V

    :cond_e
    const/16 v0, 0xcc

    if-eq v5, v0, :cond_f

    const/16 v0, 0xcd

    if-ne v5, v0, :cond_12

    .line 54
    :cond_f
    invoke-virtual {p1}, Lm/g0;->a()Lm/h0;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lm/h0;->contentLength()J

    move-result-wide v2

    goto :goto_5

    :cond_10
    const-wide/16 v2, -0x1

    :goto_5
    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-lez v0, :cond_12

    .line 55
    new-instance v0, Ljava/net/ProtocolException;

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " had non-zero Content-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lm/g0;->a()Lm/h0;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lm/h0;->contentLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :cond_11
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 57
    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    return-object p1

    .line 58
    :cond_13
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1
.end method
