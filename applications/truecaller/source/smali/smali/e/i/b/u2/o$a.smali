.class public final Le/i/b/u2/o$a;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/u2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/e/b0<",
        "Le/i/b/u2/e0;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile a:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public volatile b:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Le/m/e/k;


# direct methods
.method public constructor <init>(Le/m/e/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/e/b0;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/u2/o$a;->c:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public read(Le/m/e/g0/a;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/e/g0/b;->i:Le/m/e/g0/b;

    const-class v1, Ljava/lang/String;

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

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    .line 4
    :goto_0
    invoke-virtual {p1}, Le/m/e/g0/a;->I()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5
    invoke-virtual {p1}, Le/m/e/g0/a;->k0()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v3

    if-ne v3, v0, :cond_1

    .line 7
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "deviceId"

    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10
    iget-object v2, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    if-nez v2, :cond_2

    .line 11
    iget-object v2, p0, Le/i/b/u2/o$a;->c:Le/m/e/k;

    invoke-virtual {v2, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    .line 12
    :cond_2
    invoke-virtual {v2, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v3, "deviceIdType"

    .line 13
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 14
    iget-object v2, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    if-nez v2, :cond_4

    .line 15
    iget-object v2, p0, Le/i/b/u2/o$a;->c:Le/m/e/k;

    invoke-virtual {v2, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    .line 16
    :cond_4
    invoke-virtual {v2, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v3, "deviceOs"

    .line 17
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 18
    iget-object v2, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    if-nez v2, :cond_6

    .line 19
    iget-object v2, p0, Le/i/b/u2/o$a;->c:Le/m/e/k;

    invoke-virtual {v2, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    .line 20
    :cond_6
    invoke-virtual {v2, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v3, "mopubConsent"

    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 22
    iget-object v2, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    if-nez v2, :cond_8

    .line 23
    iget-object v2, p0, Le/i/b/u2/o$a;->c:Le/m/e/k;

    invoke-virtual {v2, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    .line 24
    :cond_8
    invoke-virtual {v2, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string v3, "uspIab"

    .line 25
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 26
    iget-object v2, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    if-nez v2, :cond_a

    .line 27
    iget-object v2, p0, Le/i/b/u2/o$a;->c:Le/m/e/k;

    invoke-virtual {v2, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    .line 28
    :cond_a
    invoke-virtual {v2, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string v3, "uspOptout"

    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 30
    iget-object v2, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    if-nez v2, :cond_c

    .line 31
    iget-object v2, p0, Le/i/b/u2/o$a;->c:Le/m/e/k;

    invoke-virtual {v2, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    .line 32
    :cond_c
    invoke-virtual {v2, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string v3, "ext"

    .line 33
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 34
    iget-object v2, p0, Le/i/b/u2/o$a;->b:Le/m/e/b0;

    if-nez v2, :cond_e

    .line 35
    iget-object v2, p0, Le/i/b/u2/o$a;->c:Le/m/e/k;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/reflect/Type;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    const-class v11, Ljava/lang/Object;

    aput-object v11, v3, v4

    const-class v4, Ljava/util/Map;

    invoke-static {v4, v3}, Le/m/e/f0/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/o$a;->b:Le/m/e/b0;

    .line 36
    :cond_e
    invoke-virtual {v2, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/util/Map;

    goto/16 :goto_0

    .line 37
    :cond_f
    invoke-virtual {p1}, Le/m/e/g0/a;->L0()V

    goto/16 :goto_0

    .line 38
    :cond_10
    invoke-virtual {p1}, Le/m/e/g0/a;->q()V

    .line 39
    new-instance v3, Le/i/b/u2/o;

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Le/i/b/u2/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_1
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TypeAdapter(User)"

    return-object v0
.end method

.method public write(Le/m/e/g0/c;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Le/i/b/u2/e0;

    .line 2
    const-class v0, Ljava/lang/String;

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto/16 :goto_7

    .line 4
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/c;->j()Le/m/e/g0/c;

    const-string v1, "deviceId"

    .line 5
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 6
    invoke-virtual {p2}, Le/i/b/u2/e0;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Le/i/b/u2/o$a;->c:Le/m/e/k;

    invoke-virtual {v1, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    .line 10
    :cond_2
    invoke-virtual {p2}, Le/i/b/u2/e0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_0
    const-string v1, "deviceIdType"

    .line 11
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 12
    invoke-virtual {p2}, Le/i/b/u2/e0;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 13
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_1

    .line 14
    :cond_3
    iget-object v1, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    if-nez v1, :cond_4

    .line 15
    iget-object v1, p0, Le/i/b/u2/o$a;->c:Le/m/e/k;

    invoke-virtual {v1, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    .line 16
    :cond_4
    invoke-virtual {p2}, Le/i/b/u2/e0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_1
    const-string v1, "deviceOs"

    .line 17
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 18
    invoke-virtual {p2}, Le/i/b/u2/e0;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 19
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_2

    .line 20
    :cond_5
    iget-object v1, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    if-nez v1, :cond_6

    .line 21
    iget-object v1, p0, Le/i/b/u2/o$a;->c:Le/m/e/k;

    invoke-virtual {v1, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    .line 22
    :cond_6
    invoke-virtual {p2}, Le/i/b/u2/e0;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_2
    const-string v1, "mopubConsent"

    .line 23
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 24
    invoke-virtual {p2}, Le/i/b/u2/e0;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    .line 25
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_3

    .line 26
    :cond_7
    iget-object v1, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    if-nez v1, :cond_8

    .line 27
    iget-object v1, p0, Le/i/b/u2/o$a;->c:Le/m/e/k;

    invoke-virtual {v1, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    .line 28
    :cond_8
    invoke-virtual {p2}, Le/i/b/u2/e0;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_3
    const-string v1, "uspIab"

    .line 29
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 30
    invoke-virtual {p2}, Le/i/b/u2/e0;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    .line 31
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_4

    .line 32
    :cond_9
    iget-object v1, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    if-nez v1, :cond_a

    .line 33
    iget-object v1, p0, Le/i/b/u2/o$a;->c:Le/m/e/k;

    invoke-virtual {v1, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    .line 34
    :cond_a
    invoke-virtual {p2}, Le/i/b/u2/e0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_4
    const-string v1, "uspOptout"

    .line 35
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 36
    invoke-virtual {p2}, Le/i/b/u2/e0;->g()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    .line 37
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_5

    .line 38
    :cond_b
    iget-object v1, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    if-nez v1, :cond_c

    .line 39
    iget-object v1, p0, Le/i/b/u2/o$a;->c:Le/m/e/k;

    invoke-virtual {v1, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/o$a;->a:Le/m/e/b0;

    .line 40
    :cond_c
    invoke-virtual {p2}, Le/i/b/u2/e0;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_5
    const-string v1, "ext"

    .line 41
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 42
    invoke-virtual {p2}, Le/i/b/u2/e0;->d()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_d

    .line 43
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_6

    .line 44
    :cond_d
    iget-object v1, p0, Le/i/b/u2/o$a;->b:Le/m/e/b0;

    if-nez v1, :cond_e

    .line 45
    iget-object v1, p0, Le/i/b/u2/o$a;->c:Le/m/e/k;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v0

    const-class v0, Ljava/util/Map;

    invoke-static {v0, v2}, Le/m/e/f0/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object v0

    invoke-virtual {v1, v0}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/o$a;->b:Le/m/e/b0;

    .line 46
    :cond_e
    invoke-virtual {p2}, Le/i/b/u2/e0;->d()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    .line 47
    :goto_6
    invoke-virtual {p1}, Le/m/e/g0/c;->q()Le/m/e/g0/c;

    :goto_7
    return-void
.end method
