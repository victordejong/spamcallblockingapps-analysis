.class public final Le/i/b/u2/c/l$a;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/u2/c/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/e/b0<",
        "Le/i/b/u2/c/r;",
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
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation
.end field

.field public volatile c:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Le/i/b/u2/c/o;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/m/e/k;


# direct methods
.method public constructor <init>(Le/m/e/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/e/b0;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/u2/c/l$a;->d:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public read(Le/m/e/g0/a;)Ljava/lang/Object;
    .locals 11
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

    .line 4
    :goto_0
    invoke-virtual {p1}, Le/m/e/g0/a;->I()Z

    move-result v2

    if-eqz v2, :cond_e

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

    const-string v3, "title"

    .line 9
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 10
    iget-object v2, p0, Le/i/b/u2/c/l$a;->a:Le/m/e/b0;

    if-nez v2, :cond_2

    .line 11
    iget-object v2, p0, Le/i/b/u2/c/l$a;->d:Le/m/e/k;

    invoke-virtual {v2, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/c/l$a;->a:Le/m/e/b0;

    .line 12
    :cond_2
    invoke-virtual {v2, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v3, "description"

    .line 13
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 14
    iget-object v2, p0, Le/i/b/u2/c/l$a;->a:Le/m/e/b0;

    if-nez v2, :cond_4

    .line 15
    iget-object v2, p0, Le/i/b/u2/c/l$a;->d:Le/m/e/k;

    invoke-virtual {v2, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/c/l$a;->a:Le/m/e/b0;

    .line 16
    :cond_4
    invoke-virtual {v2, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    goto :goto_0

    :cond_5
    const-string v3, "price"

    .line 17
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 18
    iget-object v2, p0, Le/i/b/u2/c/l$a;->a:Le/m/e/b0;

    if-nez v2, :cond_6

    .line 19
    iget-object v2, p0, Le/i/b/u2/c/l$a;->d:Le/m/e/k;

    invoke-virtual {v2, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/c/l$a;->a:Le/m/e/b0;

    .line 20
    :cond_6
    invoke-virtual {v2, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    goto :goto_0

    :cond_7
    const-string v3, "clickUrl"

    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 22
    iget-object v2, p0, Le/i/b/u2/c/l$a;->b:Le/m/e/b0;

    if-nez v2, :cond_8

    .line 23
    iget-object v2, p0, Le/i/b/u2/c/l$a;->d:Le/m/e/k;

    const-class v3, Ljava/net/URI;

    invoke-virtual {v2, v3}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/c/l$a;->b:Le/m/e/b0;

    .line 24
    :cond_8
    invoke-virtual {v2, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/net/URI;

    goto/16 :goto_0

    :cond_9
    const-string v3, "callToAction"

    .line 25
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 26
    iget-object v2, p0, Le/i/b/u2/c/l$a;->a:Le/m/e/b0;

    if-nez v2, :cond_a

    .line 27
    iget-object v2, p0, Le/i/b/u2/c/l$a;->d:Le/m/e/k;

    invoke-virtual {v2, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/c/l$a;->a:Le/m/e/b0;

    .line 28
    :cond_a
    invoke-virtual {v2, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    const-string v3, "image"

    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 30
    iget-object v2, p0, Le/i/b/u2/c/l$a;->c:Le/m/e/b0;

    if-nez v2, :cond_c

    .line 31
    iget-object v2, p0, Le/i/b/u2/c/l$a;->d:Le/m/e/k;

    const-class v3, Le/i/b/u2/c/o;

    invoke-virtual {v2, v3}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/c/l$a;->c:Le/m/e/b0;

    .line 32
    :cond_c
    invoke-virtual {v2, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Le/i/b/u2/c/o;

    goto/16 :goto_0

    .line 33
    :cond_d
    invoke-virtual {p1}, Le/m/e/g0/a;->L0()V

    goto/16 :goto_0

    .line 34
    :cond_e
    invoke-virtual {p1}, Le/m/e/g0/a;->q()V

    .line 35
    new-instance v3, Le/i/b/u2/c/l;

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Le/i/b/u2/c/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;Ljava/lang/String;Le/i/b/u2/c/o;)V

    :goto_1
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TypeAdapter(NativeProduct)"

    return-object v0
.end method

.method public write(Le/m/e/g0/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Le/i/b/u2/c/r;

    .line 2
    const-class v0, Ljava/lang/String;

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto/16 :goto_6

    .line 4
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/c;->j()Le/m/e/g0/c;

    const-string v1, "title"

    .line 5
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 6
    invoke-virtual {p2}, Le/i/b/u2/c/r;->g()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Le/i/b/u2/c/l$a;->a:Le/m/e/b0;

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Le/i/b/u2/c/l$a;->d:Le/m/e/k;

    invoke-virtual {v1, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/c/l$a;->a:Le/m/e/b0;

    .line 10
    :cond_2
    invoke-virtual {p2}, Le/i/b/u2/c/r;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_0
    const-string v1, "description"

    .line 11
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 12
    invoke-virtual {p2}, Le/i/b/u2/c/r;->c()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 13
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_1

    .line 14
    :cond_3
    iget-object v1, p0, Le/i/b/u2/c/l$a;->a:Le/m/e/b0;

    if-nez v1, :cond_4

    .line 15
    iget-object v1, p0, Le/i/b/u2/c/l$a;->d:Le/m/e/k;

    invoke-virtual {v1, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/c/l$a;->a:Le/m/e/b0;

    .line 16
    :cond_4
    invoke-virtual {p2}, Le/i/b/u2/c/r;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_1
    const-string v1, "price"

    .line 17
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 18
    invoke-virtual {p2}, Le/i/b/u2/c/r;->f()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 19
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_2

    .line 20
    :cond_5
    iget-object v1, p0, Le/i/b/u2/c/l$a;->a:Le/m/e/b0;

    if-nez v1, :cond_6

    .line 21
    iget-object v1, p0, Le/i/b/u2/c/l$a;->d:Le/m/e/k;

    invoke-virtual {v1, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/c/l$a;->a:Le/m/e/b0;

    .line 22
    :cond_6
    invoke-virtual {p2}, Le/i/b/u2/c/r;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_2
    const-string v1, "clickUrl"

    .line 23
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 24
    invoke-virtual {p2}, Le/i/b/u2/c/r;->b()Ljava/net/URI;

    move-result-object v1

    if-nez v1, :cond_7

    .line 25
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_3

    .line 26
    :cond_7
    iget-object v1, p0, Le/i/b/u2/c/l$a;->b:Le/m/e/b0;

    if-nez v1, :cond_8

    .line 27
    iget-object v1, p0, Le/i/b/u2/c/l$a;->d:Le/m/e/k;

    const-class v2, Ljava/net/URI;

    invoke-virtual {v1, v2}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/c/l$a;->b:Le/m/e/b0;

    .line 28
    :cond_8
    invoke-virtual {p2}, Le/i/b/u2/c/r;->b()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_3
    const-string v1, "callToAction"

    .line 29
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 30
    invoke-virtual {p2}, Le/i/b/u2/c/r;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    .line 31
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_4

    .line 32
    :cond_9
    iget-object v1, p0, Le/i/b/u2/c/l$a;->a:Le/m/e/b0;

    if-nez v1, :cond_a

    .line 33
    iget-object v1, p0, Le/i/b/u2/c/l$a;->d:Le/m/e/k;

    invoke-virtual {v1, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/c/l$a;->a:Le/m/e/b0;

    .line 34
    :cond_a
    invoke-virtual {p2}, Le/i/b/u2/c/r;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_4
    const-string v0, "image"

    .line 35
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 36
    invoke-virtual {p2}, Le/i/b/u2/c/r;->d()Le/i/b/u2/c/o;

    move-result-object v0

    if-nez v0, :cond_b

    .line 37
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_5

    .line 38
    :cond_b
    iget-object v0, p0, Le/i/b/u2/c/l$a;->c:Le/m/e/b0;

    if-nez v0, :cond_c

    .line 39
    iget-object v0, p0, Le/i/b/u2/c/l$a;->d:Le/m/e/k;

    const-class v1, Le/i/b/u2/c/o;

    invoke-virtual {v0, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/c/l$a;->c:Le/m/e/b0;

    .line 40
    :cond_c
    invoke-virtual {p2}, Le/i/b/u2/c/r;->d()Le/i/b/u2/c/o;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    .line 41
    :goto_5
    invoke-virtual {p1}, Le/m/e/g0/c;->q()Le/m/e/g0/c;

    :goto_6
    return-void
.end method
