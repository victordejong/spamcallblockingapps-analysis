.class public final Le/i/b/u2/j$a;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/u2/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/e/b0<",
        "Le/i/b/u2/q;",
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
            "Le/i/b/u2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public volatile c:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Le/i/b/u2/e0;",
            ">;"
        }
    .end annotation
.end field

.field public volatile d:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public volatile e:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Le/i/b/l2/c/c;",
            ">;"
        }
    .end annotation
.end field

.field public volatile f:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/util/List<",
            "Le/i/b/u2/s;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Le/m/e/k;


# direct methods
.method public constructor <init>(Le/m/e/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/e/b0;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/u2/j$a;->g:Le/m/e/k;

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
    const-class v0, Ljava/lang/String;

    sget-object v1, Le/m/e/g0/b;->i:Le/m/e/g0/b;

    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/a;->d()V

    const/4 v2, 0x0

    move v9, v2

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v10, v8

    move-object v11, v10

    .line 4
    :goto_0
    invoke-virtual {p1}, Le/m/e/g0/a;->I()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 5
    invoke-virtual {p1}, Le/m/e/g0/a;->k0()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v4

    if-ne v4, v1, :cond_1

    .line 7
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const-string v4, "gdprConsent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    const-string v4, "id"

    .line 9
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    iget-object v3, p0, Le/i/b/u2/j$a;->a:Le/m/e/b0;

    if-nez v3, :cond_2

    .line 11
    iget-object v3, p0, Le/i/b/u2/j$a;->g:Le/m/e/k;

    invoke-virtual {v3, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/u2/j$a;->a:Le/m/e/b0;

    .line 12
    :cond_2
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v4, "publisher"

    .line 13
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 14
    iget-object v3, p0, Le/i/b/u2/j$a;->b:Le/m/e/b0;

    if-nez v3, :cond_4

    .line 15
    iget-object v3, p0, Le/i/b/u2/j$a;->g:Le/m/e/k;

    const-class v4, Le/i/b/u2/a0;

    invoke-virtual {v3, v4}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/u2/j$a;->b:Le/m/e/b0;

    .line 16
    :cond_4
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/i/b/u2/a0;

    goto :goto_0

    :cond_5
    const-string v4, "user"

    .line 17
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 18
    iget-object v3, p0, Le/i/b/u2/j$a;->c:Le/m/e/b0;

    if-nez v3, :cond_6

    .line 19
    iget-object v3, p0, Le/i/b/u2/j$a;->g:Le/m/e/k;

    const-class v4, Le/i/b/u2/e0;

    invoke-virtual {v3, v4}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/u2/j$a;->c:Le/m/e/b0;

    .line 20
    :cond_6
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Le/i/b/u2/e0;

    goto :goto_0

    :cond_7
    const-string v4, "sdkVersion"

    .line 21
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 22
    iget-object v3, p0, Le/i/b/u2/j$a;->a:Le/m/e/b0;

    if-nez v3, :cond_8

    .line 23
    iget-object v3, p0, Le/i/b/u2/j$a;->g:Le/m/e/k;

    invoke-virtual {v3, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/u2/j$a;->a:Le/m/e/b0;

    .line 24
    :cond_8
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    const-string v4, "profileId"

    .line 25
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 26
    iget-object v3, p0, Le/i/b/u2/j$a;->d:Le/m/e/b0;

    if-nez v3, :cond_a

    .line 27
    iget-object v3, p0, Le/i/b/u2/j$a;->g:Le/m/e/k;

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v3, v4}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/u2/j$a;->d:Le/m/e/b0;

    .line 28
    :cond_a
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto/16 :goto_0

    :cond_b
    const-string v4, "slots"

    .line 29
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 30
    iget-object v3, p0, Le/i/b/u2/j$a;->f:Le/m/e/b0;

    if-nez v3, :cond_c

    .line 31
    iget-object v3, p0, Le/i/b/u2/j$a;->g:Le/m/e/k;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/reflect/Type;

    const-class v11, Le/i/b/u2/s;

    aput-object v11, v4, v2

    const-class v11, Ljava/util/List;

    invoke-static {v11, v4}, Le/m/e/f0/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/u2/j$a;->f:Le/m/e/b0;

    .line 32
    :cond_c
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Ljava/util/List;

    goto/16 :goto_0

    .line 33
    :cond_d
    invoke-virtual {p1}, Le/m/e/g0/a;->L0()V

    goto/16 :goto_0

    .line 34
    :cond_e
    iget-object v3, p0, Le/i/b/u2/j$a;->e:Le/m/e/b0;

    if-nez v3, :cond_f

    .line 35
    iget-object v3, p0, Le/i/b/u2/j$a;->g:Le/m/e/k;

    const-class v4, Le/i/b/l2/c/c;

    invoke-virtual {v3, v4}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/u2/j$a;->e:Le/m/e/b0;

    .line 36
    :cond_f
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Le/i/b/l2/c/c;

    goto/16 :goto_0

    .line 37
    :cond_10
    invoke-virtual {p1}, Le/m/e/g0/a;->q()V

    .line 38
    new-instance v3, Le/i/b/u2/j;

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Le/i/b/u2/j;-><init>(Ljava/lang/String;Le/i/b/u2/a0;Le/i/b/u2/e0;Ljava/lang/String;ILe/i/b/l2/c/c;Ljava/util/List;)V

    :goto_1
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TypeAdapter(CdbRequest)"

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
    check-cast p2, Le/i/b/u2/q;

    .line 2
    const-class v0, Ljava/lang/String;

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto/16 :goto_6

    .line 4
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/c;->j()Le/m/e/g0/c;

    const-string v1, "id"

    .line 5
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 6
    invoke-virtual {p2}, Le/i/b/u2/q;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Le/i/b/u2/j$a;->a:Le/m/e/b0;

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Le/i/b/u2/j$a;->g:Le/m/e/k;

    invoke-virtual {v1, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/j$a;->a:Le/m/e/b0;

    .line 10
    :cond_2
    invoke-virtual {p2}, Le/i/b/u2/q;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_0
    const-string v1, "publisher"

    .line 11
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 12
    invoke-virtual {p2}, Le/i/b/u2/q;->d()Le/i/b/u2/a0;

    move-result-object v1

    if-nez v1, :cond_3

    .line 13
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_1

    .line 14
    :cond_3
    iget-object v1, p0, Le/i/b/u2/j$a;->b:Le/m/e/b0;

    if-nez v1, :cond_4

    .line 15
    iget-object v1, p0, Le/i/b/u2/j$a;->g:Le/m/e/k;

    const-class v2, Le/i/b/u2/a0;

    invoke-virtual {v1, v2}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/j$a;->b:Le/m/e/b0;

    .line 16
    :cond_4
    invoke-virtual {p2}, Le/i/b/u2/q;->d()Le/i/b/u2/a0;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_1
    const-string v1, "user"

    .line 17
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 18
    invoke-virtual {p2}, Le/i/b/u2/q;->g()Le/i/b/u2/e0;

    move-result-object v1

    if-nez v1, :cond_5

    .line 19
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_2

    .line 20
    :cond_5
    iget-object v1, p0, Le/i/b/u2/j$a;->c:Le/m/e/b0;

    if-nez v1, :cond_6

    .line 21
    iget-object v1, p0, Le/i/b/u2/j$a;->g:Le/m/e/k;

    const-class v2, Le/i/b/u2/e0;

    invoke-virtual {v1, v2}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/j$a;->c:Le/m/e/b0;

    .line 22
    :cond_6
    invoke-virtual {p2}, Le/i/b/u2/q;->g()Le/i/b/u2/e0;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_2
    const-string v1, "sdkVersion"

    .line 23
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 24
    invoke-virtual {p2}, Le/i/b/u2/q;->e()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    .line 25
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_3

    .line 26
    :cond_7
    iget-object v1, p0, Le/i/b/u2/j$a;->a:Le/m/e/b0;

    if-nez v1, :cond_8

    .line 27
    iget-object v1, p0, Le/i/b/u2/j$a;->g:Le/m/e/k;

    invoke-virtual {v1, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/j$a;->a:Le/m/e/b0;

    .line 28
    :cond_8
    invoke-virtual {p2}, Le/i/b/u2/q;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_3
    const-string v0, "profileId"

    .line 29
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 30
    iget-object v0, p0, Le/i/b/u2/j$a;->d:Le/m/e/b0;

    if-nez v0, :cond_9

    .line 31
    iget-object v0, p0, Le/i/b/u2/j$a;->g:Le/m/e/k;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/j$a;->d:Le/m/e/b0;

    .line 32
    :cond_9
    invoke-virtual {p2}, Le/i/b/u2/q;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    const-string v0, "gdprConsent"

    .line 33
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 34
    invoke-virtual {p2}, Le/i/b/u2/q;->a()Le/i/b/l2/c/c;

    move-result-object v0

    if-nez v0, :cond_a

    .line 35
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_4

    .line 36
    :cond_a
    iget-object v0, p0, Le/i/b/u2/j$a;->e:Le/m/e/b0;

    if-nez v0, :cond_b

    .line 37
    iget-object v0, p0, Le/i/b/u2/j$a;->g:Le/m/e/k;

    const-class v1, Le/i/b/l2/c/c;

    invoke-virtual {v0, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/j$a;->e:Le/m/e/b0;

    .line 38
    :cond_b
    invoke-virtual {p2}, Le/i/b/u2/q;->a()Le/i/b/l2/c/c;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_4
    const-string v0, "slots"

    .line 39
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 40
    invoke-virtual {p2}, Le/i/b/u2/q;->f()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_c

    .line 41
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_5

    .line 42
    :cond_c
    iget-object v0, p0, Le/i/b/u2/j$a;->f:Le/m/e/b0;

    if-nez v0, :cond_d

    .line 43
    iget-object v0, p0, Le/i/b/u2/j$a;->g:Le/m/e/k;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    const-class v3, Le/i/b/u2/s;

    aput-object v3, v1, v2

    const-class v2, Ljava/util/List;

    invoke-static {v2, v1}, Le/m/e/f0/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/j$a;->f:Le/m/e/b0;

    .line 44
    :cond_d
    invoke-virtual {p2}, Le/i/b/u2/q;->f()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    .line 45
    :goto_5
    invoke-virtual {p1}, Le/m/e/g0/c;->q()Le/m/e/g0/c;

    :goto_6
    return-void
.end method
