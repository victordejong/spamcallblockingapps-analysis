.class public final Le/i/b/z1/q$a;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/z1/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/e/b0<",
        "Le/i/b/z1/d0$a;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile a:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/util/List<",
            "Le/i/b/z1/d0$b;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile b:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public volatile c:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public volatile d:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public volatile e:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/m/e/k;


# direct methods
.method public constructor <init>(Le/m/e/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/e/b0;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/z1/q$a;->f:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public read(Le/m/e/g0/a;)Ljava/lang/Object;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/e/g0/b;->i:Le/m/e/g0/b;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v2, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/a;->d()V

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move v9, v2

    move-object v7, v3

    move-object v8, v7

    move-object v12, v8

    move-object v13, v12

    move-wide v10, v4

    .line 4
    :goto_0
    invoke-virtual {p1}, Le/m/e/g0/a;->I()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 5
    invoke-virtual {p1}, Le/m/e/g0/a;->k0()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v4

    if-ne v4, v0, :cond_1

    .line 7
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const-string v4, "isTimeout"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    const-string v4, "slots"

    .line 9
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    iget-object v3, p0, Le/i/b/z1/q$a;->a:Le/m/e/b0;

    if-nez v3, :cond_2

    .line 11
    iget-object v3, p0, Le/i/b/z1/q$a;->f:Le/m/e/k;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/reflect/Type;

    const-class v5, Le/i/b/z1/d0$b;

    aput-object v5, v4, v2

    const-class v5, Ljava/util/List;

    invoke-static {v5, v4}, Le/m/e/f0/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/z1/q$a;->a:Le/m/e/b0;

    .line 12
    :cond_2
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/util/List;

    goto :goto_0

    :cond_3
    const-string v4, "elapsed"

    .line 13
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 14
    iget-object v3, p0, Le/i/b/z1/q$a;->b:Le/m/e/b0;

    if-nez v3, :cond_4

    .line 15
    iget-object v3, p0, Le/i/b/z1/q$a;->f:Le/m/e/k;

    invoke-virtual {v3, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/z1/q$a;->b:Le/m/e/b0;

    .line 16
    :cond_4
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/Long;

    goto :goto_0

    :cond_5
    const-string v4, "cdbCallStartElapsed"

    .line 17
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 18
    iget-object v3, p0, Le/i/b/z1/q$a;->d:Le/m/e/b0;

    if-nez v3, :cond_6

    .line 19
    iget-object v3, p0, Le/i/b/z1/q$a;->f:Le/m/e/k;

    invoke-virtual {v3, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/z1/q$a;->d:Le/m/e/b0;

    .line 20
    :cond_6
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto/16 :goto_0

    :cond_7
    const-string v4, "cdbCallEndElapsed"

    .line 21
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 22
    iget-object v3, p0, Le/i/b/z1/q$a;->b:Le/m/e/b0;

    if-nez v3, :cond_8

    .line 23
    iget-object v3, p0, Le/i/b/z1/q$a;->f:Le/m/e/k;

    invoke-virtual {v3, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/z1/q$a;->b:Le/m/e/b0;

    .line 24
    :cond_8
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Ljava/lang/Long;

    goto/16 :goto_0

    :cond_9
    const-string v4, "requestGroupId"

    .line 25
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 26
    iget-object v3, p0, Le/i/b/z1/q$a;->e:Le/m/e/b0;

    if-nez v3, :cond_a

    .line 27
    iget-object v3, p0, Le/i/b/z1/q$a;->f:Le/m/e/k;

    const-class v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/z1/q$a;->e:Le/m/e/b0;

    .line 28
    :cond_a
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    goto/16 :goto_0

    .line 29
    :cond_b
    invoke-virtual {p1}, Le/m/e/g0/a;->L0()V

    goto/16 :goto_0

    .line 30
    :cond_c
    iget-object v3, p0, Le/i/b/z1/q$a;->c:Le/m/e/b0;

    if-nez v3, :cond_d

    .line 31
    iget-object v3, p0, Le/i/b/z1/q$a;->f:Le/m/e/k;

    const-class v4, Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/z1/q$a;->c:Le/m/e/b0;

    .line 32
    :cond_d
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    goto/16 :goto_0

    .line 33
    :cond_e
    invoke-virtual {p1}, Le/m/e/g0/a;->q()V

    .line 34
    new-instance v3, Le/i/b/z1/q;

    move-object v6, v3

    invoke-direct/range {v6 .. v13}, Le/i/b/z1/q;-><init>(Ljava/util/List;Ljava/lang/Long;ZJLjava/lang/Long;Ljava/lang/String;)V

    :goto_1
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TypeAdapter(MetricRequest.MetricRequestFeedback)"

    return-object v0
.end method

.method public write(Le/m/e/g0/c;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Le/i/b/z1/d0$a;

    .line 2
    const-class v0, Ljava/lang/Long;

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto/16 :goto_4

    .line 4
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/c;->j()Le/m/e/g0/c;

    const-string v1, "slots"

    .line 5
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 6
    invoke-virtual {p2}, Le/i/b/z1/d0$a;->f()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Le/i/b/z1/q$a;->a:Le/m/e/b0;

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Le/i/b/z1/q$a;->f:Le/m/e/k;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    const-class v4, Le/i/b/z1/d0$b;

    aput-object v4, v2, v3

    const-class v3, Ljava/util/List;

    invoke-static {v3, v2}, Le/m/e/f0/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/z1/q$a;->a:Le/m/e/b0;

    .line 10
    :cond_2
    invoke-virtual {p2}, Le/i/b/z1/d0$a;->f()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_0
    const-string v1, "elapsed"

    .line 11
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 12
    invoke-virtual {p2}, Le/i/b/z1/d0$a;->d()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_3

    .line 13
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_1

    .line 14
    :cond_3
    iget-object v1, p0, Le/i/b/z1/q$a;->b:Le/m/e/b0;

    if-nez v1, :cond_4

    .line 15
    iget-object v1, p0, Le/i/b/z1/q$a;->f:Le/m/e/k;

    invoke-virtual {v1, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/z1/q$a;->b:Le/m/e/b0;

    .line 16
    :cond_4
    invoke-virtual {p2}, Le/i/b/z1/d0$a;->d()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_1
    const-string v1, "isTimeout"

    .line 17
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 18
    iget-object v1, p0, Le/i/b/z1/q$a;->c:Le/m/e/b0;

    if-nez v1, :cond_5

    .line 19
    iget-object v1, p0, Le/i/b/z1/q$a;->f:Le/m/e/k;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/z1/q$a;->c:Le/m/e/b0;

    .line 20
    :cond_5
    invoke-virtual {p2}, Le/i/b/z1/d0$a;->g()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    const-string v1, "cdbCallStartElapsed"

    .line 21
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 22
    iget-object v1, p0, Le/i/b/z1/q$a;->d:Le/m/e/b0;

    if-nez v1, :cond_6

    .line 23
    iget-object v1, p0, Le/i/b/z1/q$a;->f:Le/m/e/k;

    invoke-virtual {v1, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/z1/q$a;->d:Le/m/e/b0;

    .line 24
    :cond_6
    invoke-virtual {p2}, Le/i/b/z1/d0$a;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    const-string v1, "cdbCallEndElapsed"

    .line 25
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 26
    invoke-virtual {p2}, Le/i/b/z1/d0$a;->a()Ljava/lang/Long;

    move-result-object v1

    if-nez v1, :cond_7

    .line 27
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_2

    .line 28
    :cond_7
    iget-object v1, p0, Le/i/b/z1/q$a;->b:Le/m/e/b0;

    if-nez v1, :cond_8

    .line 29
    iget-object v1, p0, Le/i/b/z1/q$a;->f:Le/m/e/k;

    invoke-virtual {v1, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/z1/q$a;->b:Le/m/e/b0;

    .line 30
    :cond_8
    invoke-virtual {p2}, Le/i/b/z1/d0$a;->a()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_2
    const-string v0, "requestGroupId"

    .line 31
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 32
    invoke-virtual {p2}, Le/i/b/z1/d0$a;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 33
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_3

    .line 34
    :cond_9
    iget-object v0, p0, Le/i/b/z1/q$a;->e:Le/m/e/b0;

    if-nez v0, :cond_a

    .line 35
    iget-object v0, p0, Le/i/b/z1/q$a;->f:Le/m/e/k;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/z1/q$a;->e:Le/m/e/b0;

    .line 36
    :cond_a
    invoke-virtual {p2}, Le/i/b/z1/d0$a;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    .line 37
    :goto_3
    invoke-virtual {p1}, Le/m/e/g0/c;->q()Le/m/e/g0/c;

    :goto_4
    return-void
.end method
