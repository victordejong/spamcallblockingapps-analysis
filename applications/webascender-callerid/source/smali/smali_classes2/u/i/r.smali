.class public final Lu/i/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/i/b$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lu/i/b$b<",
        "Lu/g;",
        ">;"
    }
.end annotation


# static fields
.field static final b:Lu/i/b$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu/i/b$b<",
            "Lu/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Lu/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lu/i/r$a;

    invoke-direct {v0}, Lu/i/r$a;-><init>()V

    sput-object v0, Lu/i/r;->b:Lu/i/b$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lu/i/b$a;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lu/i/r;->b(Lu/i/b$a;)Lu/g;

    move-result-object p1

    return-object p1
.end method

.method public b(Lu/i/b$a;)Lu/g;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/i/r;->a:Lu/g$a;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lu/g;->h()Lu/g$a;

    move-result-object v0

    iput-object v0, p0, Lu/i/r;->a:Lu/g$a;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lu/g$a;->c()Lu/g$a;

    .line 4
    :goto_0
    invoke-virtual {p1}, Lu/i/b$a;->b()V

    .line 5
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lu/i/b$a;->f()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 6
    invoke-virtual {p1}, Lu/i/b$a;->j()Ljava/lang/String;

    move-result-object v0

    const-string v1, "traceId"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    iget-object v0, p0, Lu/i/r;->a:Lu/g$a;

    invoke-virtual {p1}, Lu/i/b$a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/g$a;->x(Ljava/lang/String;)Lu/g$a;

    goto :goto_1

    :cond_2
    const-string v1, "id"

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    iget-object v0, p0, Lu/i/r;->a:Lu/g$a;

    invoke-virtual {p1}, Lu/i/b$a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/g$a;->j(Ljava/lang/String;)Lu/g$a;

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p1}, Lu/i/b$a;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    invoke-virtual {p1}, Lu/i/b$a;->o()V

    goto :goto_1

    :cond_4
    const-string v1, "parentId"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    iget-object v0, p0, Lu/i/r;->a:Lu/g$a;

    invoke-virtual {p1}, Lu/i/b$a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/g$a;->q(Ljava/lang/String;)Lu/g$a;

    goto :goto_1

    :cond_5
    const-string v1, "kind"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 16
    iget-object v0, p0, Lu/i/r;->a:Lu/g$a;

    invoke-virtual {p1}, Lu/i/b$a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu/g$b;->valueOf(Ljava/lang/String;)Lu/g$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/g$a;->k(Lu/g$b;)Lu/g$a;

    goto :goto_1

    :cond_6
    const-string v1, "name"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 18
    iget-object v0, p0, Lu/i/r;->a:Lu/g$a;

    invoke-virtual {p1}, Lu/i/b$a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/g$a;->o(Ljava/lang/String;)Lu/g$a;

    goto :goto_1

    :cond_7
    const-string v1, "timestamp"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 20
    iget-object v0, p0, Lu/i/r;->a:Lu/g$a;

    invoke-virtual {p1}, Lu/i/b$a;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lu/g$a;->v(J)Lu/g$a;

    goto/16 :goto_1

    :cond_8
    const-string v2, "duration"

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 22
    iget-object v0, p0, Lu/i/r;->a:Lu/g$a;

    invoke-virtual {p1}, Lu/i/b$a;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lu/g$a;->g(J)Lu/g$a;

    goto/16 :goto_1

    :cond_9
    const-string v2, "localEndpoint"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 24
    iget-object v0, p0, Lu/i/r;->a:Lu/g$a;

    sget-object v1, Lu/i/r;->b:Lu/i/b$b;

    invoke-interface {v1, p1}, Lu/i/b$b;->a(Lu/i/b$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/f;

    invoke-virtual {v0, v1}, Lu/g$a;->n(Lu/f;)Lu/g$a;

    goto/16 :goto_1

    :cond_a
    const-string v2, "remoteEndpoint"

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 26
    iget-object v0, p0, Lu/i/r;->a:Lu/g$a;

    sget-object v1, Lu/i/r;->b:Lu/i/b$b;

    invoke-interface {v1, p1}, Lu/i/b$b;->a(Lu/i/b$a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu/f;

    invoke-virtual {v0, v1}, Lu/g$a;->s(Lu/f;)Lu/g$a;

    goto/16 :goto_1

    :cond_b
    const-string v2, "annotations"

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 28
    invoke-virtual {p1}, Lu/i/b$a;->a()V

    .line 29
    :goto_2
    invoke-virtual {p1}, Lu/i/b$a;->f()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 30
    invoke-virtual {p1}, Lu/i/b$a;->b()V

    const/4 v0, 0x0

    move-object v2, v0

    .line 31
    :goto_3
    invoke-virtual {p1}, Lu/i/b$a;->f()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 32
    invoke-virtual {p1}, Lu/i/b$a;->j()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 34
    invoke-virtual {p1}, Lu/i/b$a;->i()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_3

    :cond_c
    const-string v4, "value"

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 36
    invoke-virtual {p1}, Lu/i/b$a;->k()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    .line 37
    :cond_d
    invoke-virtual {p1}, Lu/i/b$a;->o()V

    goto :goto_3

    :cond_e
    if-eqz v0, :cond_f

    if-eqz v2, :cond_f

    .line 38
    invoke-virtual {p1}, Lu/i/b$a;->d()V

    .line 39
    iget-object v3, p0, Lu/i/r;->a:Lu/g$a;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v2}, Lu/g$a;->a(JLjava/lang/String;)Lu/g$a;

    goto :goto_2

    .line 40
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incomplete annotation at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lu/i/b$a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_10
    invoke-virtual {p1}, Lu/i/b$a;->c()V

    goto/16 :goto_1

    :cond_11
    const-string v1, "tags"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 43
    invoke-virtual {p1}, Lu/i/b$a;->b()V

    .line 44
    :goto_4
    invoke-virtual {p1}, Lu/i/b$a;->f()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 45
    invoke-virtual {p1}, Lu/i/b$a;->j()Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lu/i/b$a;->m()Z

    move-result v1

    if-nez v1, :cond_12

    .line 47
    iget-object v1, p0, Lu/i/r;->a:Lu/g$a;

    invoke-virtual {p1}, Lu/i/b$a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lu/g$a;->r(Ljava/lang/String;Ljava/lang/String;)Lu/g$a;

    goto :goto_4

    .line 48
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No value at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lu/i/b$a;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_13
    invoke-virtual {p1}, Lu/i/b$a;->d()V

    goto/16 :goto_1

    :cond_14
    const-string v1, "debug"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    .line 51
    invoke-virtual {p1}, Lu/i/b$a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu/i/r;->a:Lu/g$a;

    invoke-virtual {v0, v2}, Lu/g$a;->f(Z)Lu/g$a;

    goto/16 :goto_1

    :cond_15
    const-string v1, "shared"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 53
    invoke-virtual {p1}, Lu/i/b$a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lu/i/r;->a:Lu/g$a;

    invoke-virtual {v0, v2}, Lu/g$a;->u(Z)Lu/g$a;

    goto/16 :goto_1

    .line 54
    :cond_16
    invoke-virtual {p1}, Lu/i/b$a;->o()V

    goto/16 :goto_1

    .line 55
    :cond_17
    invoke-virtual {p1}, Lu/i/b$a;->d()V

    .line 56
    iget-object p1, p0, Lu/i/r;->a:Lu/g$a;

    invoke-virtual {p1}, Lu/g$a;->b()Lu/g;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Span"

    return-object v0
.end method
