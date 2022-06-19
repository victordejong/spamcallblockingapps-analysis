.class public final Lm/k0/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/k0/d/a$a;
    }
.end annotation


# static fields
.field public static final b:Lm/k0/d/a$a;


# instance fields
.field private final a:Lm/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm/k0/d/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm/k0/d/a$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lm/k0/d/a;->b:Lm/k0/d/a$a;

    return-void
.end method

.method public constructor <init>(Lm/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/k0/d/a;->a:Lm/d;

    return-void
.end method

.method private final a(Lm/k0/d/b;Lm/g0;)Lm/g0;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p2

    .line 1
    :cond_0
    invoke-interface {p1}, Lm/k0/d/b;->b()Ln/b0;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Lm/g0;->a()Lm/h0;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lm/h0;->source()Ln/h;

    move-result-object v1

    .line 3
    invoke-static {v0}, Ln/r;->c(Ln/b0;)Ln/g;

    move-result-object v0

    .line 4
    new-instance v3, Lm/k0/d/a$b;

    invoke-direct {v3, v1, p1, v0}, Lm/k0/d/a$b;-><init>(Ln/h;Lm/k0/d/b;Ln/g;)V

    const/4 p1, 0x2

    const-string v0, "Content-Type"

    .line 5
    invoke-static {p2, v0, v2, p1, v2}, Lm/g0;->o(Lm/g0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-virtual {p2}, Lm/g0;->a()Lm/h0;

    move-result-object v0

    invoke-virtual {v0}, Lm/h0;->contentLength()J

    move-result-wide v0

    .line 7
    invoke-virtual {p2}, Lm/g0;->C()Lm/g0$a;

    move-result-object p2

    .line 8
    new-instance v2, Lm/k0/f/h;

    invoke-static {v3}, Ln/r;->d(Ln/d0;)Ln/h;

    move-result-object v3

    invoke-direct {v2, p1, v0, v1, v3}, Lm/k0/f/h;-><init>(Ljava/lang/String;JLn/h;)V

    invoke-virtual {p2, v2}, Lm/g0$a;->b(Lm/h0;)Lm/g0$a;

    .line 9
    invoke-virtual {p2}, Lm/g0$a;->c()Lm/g0;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2
.end method


# virtual methods
.method public intercept(Lm/z$a;)Lm/g0;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "chain"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lm/z$a;->call()Lm/f;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lm/k0/d/a;->a:Lm/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lm/z$a;->request()Lm/e0;

    move-result-object v3

    invoke-virtual {v1, v3}, Lm/d;->c(Lm/e0;)Lm/g0;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 4
    new-instance v5, Lm/k0/d/c$b;

    invoke-interface {p1}, Lm/z$a;->request()Lm/e0;

    move-result-object v6

    invoke-direct {v5, v3, v4, v6, v1}, Lm/k0/d/c$b;-><init>(JLm/e0;Lm/g0;)V

    invoke-virtual {v5}, Lm/k0/d/c$b;->b()Lm/k0/d/c;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Lm/k0/d/c;->b()Lm/e0;

    move-result-object v4

    .line 6
    invoke-virtual {v3}, Lm/k0/d/c;->a()Lm/g0;

    move-result-object v5

    .line 7
    iget-object v6, p0, Lm/k0/d/a;->a:Lm/d;

    if-eqz v6, :cond_1

    invoke-virtual {v6, v3}, Lm/d;->r(Lm/k0/d/c;)V

    .line 8
    :cond_1
    instance-of v3, v0, Lokhttp3/internal/connection/e;

    if-nez v3, :cond_2

    move-object v3, v2

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    check-cast v3, Lokhttp3/internal/connection/e;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lokhttp3/internal/connection/e;->n()Lm/u;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    sget-object v3, Lm/u;->a:Lm/u;

    :goto_2
    if-eqz v1, :cond_4

    if-nez v5, :cond_4

    .line 9
    invoke-virtual {v1}, Lm/g0;->a()Lm/h0;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {v6}, Lm/k0/b;->j(Ljava/io/Closeable;)V

    :cond_4
    if-nez v4, :cond_5

    if-nez v5, :cond_5

    .line 10
    new-instance v1, Lm/g0$a;

    invoke-direct {v1}, Lm/g0$a;-><init>()V

    .line 11
    invoke-interface {p1}, Lm/z$a;->request()Lm/e0;

    move-result-object p1

    invoke-virtual {v1, p1}, Lm/g0$a;->r(Lm/e0;)Lm/g0$a;

    .line 12
    sget-object p1, Lm/d0;->HTTP_1_1:Lm/d0;

    invoke-virtual {v1, p1}, Lm/g0$a;->p(Lm/d0;)Lm/g0$a;

    const/16 p1, 0x1f8

    .line 13
    invoke-virtual {v1, p1}, Lm/g0$a;->g(I)Lm/g0$a;

    const-string p1, "Unsatisfiable Request (only-if-cached)"

    .line 14
    invoke-virtual {v1, p1}, Lm/g0$a;->m(Ljava/lang/String;)Lm/g0$a;

    .line 15
    sget-object p1, Lm/k0/b;->c:Lm/h0;

    invoke-virtual {v1, p1}, Lm/g0$a;->b(Lm/h0;)Lm/g0$a;

    const-wide/16 v4, -0x1

    .line 16
    invoke-virtual {v1, v4, v5}, Lm/g0$a;->s(J)Lm/g0$a;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lm/g0$a;->q(J)Lm/g0$a;

    .line 18
    invoke-virtual {v1}, Lm/g0$a;->c()Lm/g0;

    move-result-object p1

    .line 19
    invoke-virtual {v3, v0, p1}, Lm/u;->A(Lm/f;Lm/g0;)V

    return-object p1

    :cond_5
    if-nez v4, :cond_7

    if-eqz v5, :cond_6

    .line 20
    invoke-virtual {v5}, Lm/g0;->C()Lm/g0$a;

    move-result-object p1

    .line 21
    sget-object v1, Lm/k0/d/a;->b:Lm/k0/d/a$a;

    invoke-static {v1, v5}, Lm/k0/d/a$a;->b(Lm/k0/d/a$a;Lm/g0;)Lm/g0;

    move-result-object v1

    invoke-virtual {p1, v1}, Lm/g0$a;->d(Lm/g0;)Lm/g0$a;

    .line 22
    invoke-virtual {p1}, Lm/g0$a;->c()Lm/g0;

    move-result-object p1

    .line 23
    invoke-virtual {v3, v0, p1}, Lm/u;->b(Lm/f;Lm/g0;)V

    return-object p1

    .line 24
    :cond_6
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    :cond_7
    if-eqz v5, :cond_8

    .line 25
    invoke-virtual {v3, v0, v5}, Lm/u;->a(Lm/f;Lm/g0;)V

    goto :goto_3

    .line 26
    :cond_8
    iget-object v6, p0, Lm/k0/d/a;->a:Lm/d;

    if-eqz v6, :cond_9

    .line 27
    invoke-virtual {v3, v0}, Lm/u;->c(Lm/f;)V

    .line 28
    :cond_9
    :goto_3
    :try_start_0
    invoke-interface {p1, v4}, Lm/z$a;->a(Lm/e0;)Lm/g0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_a

    if-eqz v1, :cond_a

    .line 29
    invoke-virtual {v1}, Lm/g0;->a()Lm/h0;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {v1}, Lm/k0/b;->j(Ljava/io/Closeable;)V

    :cond_a
    if-eqz v5, :cond_e

    if-eqz p1, :cond_d

    .line 30
    invoke-virtual {p1}, Lm/g0;->f()I

    move-result v1

    const/16 v6, 0x130

    if-ne v1, v6, :cond_d

    .line 31
    invoke-virtual {v5}, Lm/g0;->C()Lm/g0$a;

    move-result-object v1

    .line 32
    sget-object v4, Lm/k0/d/a;->b:Lm/k0/d/a$a;

    invoke-virtual {v5}, Lm/g0;->r()Lm/x;

    move-result-object v6

    invoke-virtual {p1}, Lm/g0;->r()Lm/x;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lm/k0/d/a$a;->a(Lm/k0/d/a$a;Lm/x;Lm/x;)Lm/x;

    move-result-object v6

    invoke-virtual {v1, v6}, Lm/g0$a;->k(Lm/x;)Lm/g0$a;

    .line 33
    invoke-virtual {p1}, Lm/g0;->N()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lm/g0$a;->s(J)Lm/g0$a;

    .line 34
    invoke-virtual {p1}, Lm/g0;->L()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lm/g0$a;->q(J)Lm/g0$a;

    .line 35
    invoke-static {v4, v5}, Lm/k0/d/a$a;->b(Lm/k0/d/a$a;Lm/g0;)Lm/g0;

    move-result-object v6

    invoke-virtual {v1, v6}, Lm/g0$a;->d(Lm/g0;)Lm/g0$a;

    .line 36
    invoke-static {v4, p1}, Lm/k0/d/a$a;->b(Lm/k0/d/a$a;Lm/g0;)Lm/g0;

    move-result-object v4

    invoke-virtual {v1, v4}, Lm/g0$a;->n(Lm/g0;)Lm/g0$a;

    .line 37
    invoke-virtual {v1}, Lm/g0$a;->c()Lm/g0;

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lm/g0;->a()Lm/h0;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lm/h0;->close()V

    .line 39
    iget-object p1, p0, Lm/k0/d/a;->a:Lm/d;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lm/d;->o()V

    .line 40
    iget-object p1, p0, Lm/k0/d/a;->a:Lm/d;

    invoke-virtual {p1, v5, v1}, Lm/d;->y(Lm/g0;Lm/g0;)V

    .line 41
    invoke-virtual {v3, v0, v1}, Lm/u;->b(Lm/f;Lm/g0;)V

    return-object v1

    .line 42
    :cond_b
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 43
    :cond_c
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    .line 44
    :cond_d
    invoke-virtual {v5}, Lm/g0;->a()Lm/h0;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-static {v1}, Lm/k0/b;->j(Ljava/io/Closeable;)V

    :cond_e
    if-eqz p1, :cond_12

    .line 45
    invoke-virtual {p1}, Lm/g0;->C()Lm/g0$a;

    move-result-object v1

    .line 46
    sget-object v2, Lm/k0/d/a;->b:Lm/k0/d/a$a;

    invoke-static {v2, v5}, Lm/k0/d/a$a;->b(Lm/k0/d/a$a;Lm/g0;)Lm/g0;

    move-result-object v6

    invoke-virtual {v1, v6}, Lm/g0$a;->d(Lm/g0;)Lm/g0$a;

    .line 47
    invoke-static {v2, p1}, Lm/k0/d/a$a;->b(Lm/k0/d/a$a;Lm/g0;)Lm/g0;

    move-result-object p1

    invoke-virtual {v1, p1}, Lm/g0$a;->n(Lm/g0;)Lm/g0$a;

    .line 48
    invoke-virtual {v1}, Lm/g0$a;->c()Lm/g0;

    move-result-object p1

    .line 49
    iget-object v1, p0, Lm/k0/d/a;->a:Lm/d;

    if-eqz v1, :cond_11

    .line 50
    invoke-static {p1}, Lm/k0/f/e;->b(Lm/g0;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lm/k0/d/c;->c:Lm/k0/d/c$a;

    invoke-virtual {v1, p1, v4}, Lm/k0/d/c$a;->a(Lm/g0;Lm/e0;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 51
    iget-object v1, p0, Lm/k0/d/a;->a:Lm/d;

    invoke-virtual {v1, p1}, Lm/d;->g(Lm/g0;)Lm/k0/d/b;

    move-result-object v1

    .line 52
    invoke-direct {p0, v1, p1}, Lm/k0/d/a;->a(Lm/k0/d/b;Lm/g0;)Lm/g0;

    move-result-object p1

    if-eqz v5, :cond_f

    .line 53
    invoke-virtual {v3, v0}, Lm/u;->c(Lm/f;)V

    :cond_f
    return-object p1

    .line 54
    :cond_10
    sget-object v0, Lm/k0/f/f;->a:Lm/k0/f/f;

    invoke-virtual {v4}, Lm/e0;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm/k0/f/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 55
    :try_start_1
    iget-object v0, p0, Lm/k0/d/a;->a:Lm/d;

    invoke-virtual {v0, v4}, Lm/d;->i(Lm/e0;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_11
    return-object p1

    .line 56
    :cond_12
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v2

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_13

    .line 57
    invoke-virtual {v1}, Lm/g0;->a()Lm/h0;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-static {v0}, Lm/k0/b;->j(Ljava/io/Closeable;)V

    :cond_13
    throw p1
.end method
