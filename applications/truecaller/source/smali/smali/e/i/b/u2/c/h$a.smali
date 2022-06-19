.class public final Le/i/b/u2/c/h$a;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/u2/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/e/b0<",
        "Le/i/b/u2/c/n;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile a:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/util/List<",
            "Le/i/b/u2/c/r;",
            ">;>;"
        }
    .end annotation
.end field

.field public volatile b:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Le/i/b/u2/c/m;",
            ">;"
        }
    .end annotation
.end field

.field public volatile c:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Le/i/b/u2/c/q;",
            ">;"
        }
    .end annotation
.end field

.field public volatile d:Le/m/e/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/e/b0<",
            "Ljava/util/List<",
            "Le/i/b/u2/c/p;",
            ">;>;"
        }
    .end annotation
.end field

.field public final e:Le/m/e/k;


# direct methods
.method public constructor <init>(Le/m/e/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/e/b0;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/u2/c/h$a;->e:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public read(Le/m/e/g0/a;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/e/g0/b;->i:Le/m/e/g0/b;

    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    goto/16 :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/a;->d()V

    move-object v1, v2

    move-object v3, v1

    move-object v4, v3

    .line 4
    :goto_0
    invoke-virtual {p1}, Le/m/e/g0/a;->I()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 5
    invoke-virtual {p1}, Le/m/e/g0/a;->k0()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {p1}, Le/m/e/g0/a;->D0()Le/m/e/g0/b;

    move-result-object v6

    if-ne v6, v0, :cond_1

    .line 7
    invoke-virtual {p1}, Le/m/e/g0/a;->p0()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const-string v6, "products"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_8

    const-string v6, "impressionPixels"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "advertiser"

    .line 9
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 10
    iget-object v3, p0, Le/i/b/u2/c/h$a;->b:Le/m/e/b0;

    if-nez v3, :cond_2

    .line 11
    iget-object v3, p0, Le/i/b/u2/c/h$a;->e:Le/m/e/k;

    const-class v5, Le/i/b/u2/c/m;

    invoke-virtual {v3, v5}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/u2/c/h$a;->b:Le/m/e/b0;

    .line 12
    :cond_2
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/i/b/u2/c/m;

    const-string v5, "Null advertiser"

    .line 13
    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v6, "privacy"

    .line 14
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 15
    iget-object v4, p0, Le/i/b/u2/c/h$a;->c:Le/m/e/b0;

    if-nez v4, :cond_4

    .line 16
    iget-object v4, p0, Le/i/b/u2/c/h$a;->e:Le/m/e/k;

    const-class v5, Le/i/b/u2/c/q;

    invoke-virtual {v4, v5}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v4

    iput-object v4, p0, Le/i/b/u2/c/h$a;->c:Le/m/e/b0;

    .line 17
    :cond_4
    invoke-virtual {v4, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/i/b/u2/c/q;

    const-string v5, "Null privacy"

    .line 18
    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_5
    invoke-virtual {p1}, Le/m/e/g0/a;->L0()V

    goto :goto_0

    .line 20
    :cond_6
    iget-object v1, p0, Le/i/b/u2/c/h$a;->d:Le/m/e/b0;

    if-nez v1, :cond_7

    .line 21
    iget-object v1, p0, Le/i/b/u2/c/h$a;->e:Le/m/e/k;

    new-array v5, v8, [Ljava/lang/reflect/Type;

    const-class v6, Le/i/b/u2/c/p;

    aput-object v6, v5, v7

    const-class v6, Ljava/util/List;

    invoke-static {v6, v5}, Le/m/e/f0/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object v5

    invoke-virtual {v1, v5}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/c/h$a;->d:Le/m/e/b0;

    .line 22
    :cond_7
    invoke-virtual {v1, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v5, "Null pixels"

    .line 23
    invoke-static {v1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 24
    :cond_8
    iget-object v2, p0, Le/i/b/u2/c/h$a;->a:Le/m/e/b0;

    if-nez v2, :cond_9

    .line 25
    iget-object v2, p0, Le/i/b/u2/c/h$a;->e:Le/m/e/k;

    new-array v5, v8, [Ljava/lang/reflect/Type;

    const-class v6, Le/i/b/u2/c/r;

    aput-object v6, v5, v7

    const-class v6, Ljava/util/List;

    invoke-static {v6, v5}, Le/m/e/f0/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object v5

    invoke-virtual {v2, v5}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/c/h$a;->a:Le/m/e/b0;

    .line 26
    :cond_9
    invoke-virtual {v2, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const-string v5, "Null nativeProducts"

    .line 27
    invoke-static {v2, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 28
    :cond_a
    invoke-virtual {p1}, Le/m/e/g0/a;->q()V

    if-eqz v2, :cond_11

    .line 29
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_10

    if-eqz v1, :cond_f

    .line 30
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, ""

    if-nez v3, :cond_b

    const-string v0, " advertiser"

    .line 31
    invoke-static {p1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_b
    if-nez v4, :cond_c

    const-string v0, " privacy"

    .line 32
    invoke-static {p1, v0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 33
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 34
    new-instance p1, Le/i/b/u2/c/h;

    invoke-direct {p1, v2, v3, v4, v1}, Le/i/b/u2/c/h;-><init>(Ljava/util/List;Le/i/b/u2/c/m;Le/i/b/u2/c/q;Ljava/util/List;)V

    move-object v2, p1

    :goto_1
    return-object v2

    .line 35
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-static {v1, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_e
    new-instance p1, Le/m/e/u;

    const-string v0, "Expect that native payload has, at least, one impression pixel."

    invoke-direct {p1, v0}, Le/m/e/u;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Property \"pixels\" has not been set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_10
    new-instance p1, Le/m/e/u;

    const-string v0, "Expect that native payload has, at least, one product."

    invoke-direct {p1, v0}, Le/m/e/u;-><init>(Ljava/lang/String;)V

    throw p1

    .line 39
    :cond_11
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Property \"nativeProducts\" has not been set"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TypeAdapter(NativeAssets)"

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
    check-cast p2, Le/i/b/u2/c/n;

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/c;->j()Le/m/e/g0/c;

    const-string v0, "products"

    .line 4
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 5
    invoke-virtual {p2}, Le/i/b/u2/c/n;->d()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Le/i/b/u2/c/h$a;->a:Le/m/e/b0;

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Le/i/b/u2/c/h$a;->e:Le/m/e/k;

    new-array v3, v2, [Ljava/lang/reflect/Type;

    const-class v4, Le/i/b/u2/c/r;

    aput-object v4, v3, v1

    const-class v4, Ljava/util/List;

    invoke-static {v4, v3}, Le/m/e/f0/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object v3

    invoke-virtual {v0, v3}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/c/h$a;->a:Le/m/e/b0;

    .line 9
    :cond_2
    invoke-virtual {p2}, Le/i/b/u2/c/n;->d()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_0
    const-string v0, "advertiser"

    .line 10
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 11
    invoke-virtual {p2}, Le/i/b/u2/c/n;->a()Le/i/b/u2/c/m;

    move-result-object v0

    if-nez v0, :cond_3

    .line 12
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_1

    .line 13
    :cond_3
    iget-object v0, p0, Le/i/b/u2/c/h$a;->b:Le/m/e/b0;

    if-nez v0, :cond_4

    .line 14
    iget-object v0, p0, Le/i/b/u2/c/h$a;->e:Le/m/e/k;

    const-class v3, Le/i/b/u2/c/m;

    invoke-virtual {v0, v3}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/c/h$a;->b:Le/m/e/b0;

    .line 15
    :cond_4
    invoke-virtual {p2}, Le/i/b/u2/c/n;->a()Le/i/b/u2/c/m;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_1
    const-string v0, "privacy"

    .line 16
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 17
    invoke-virtual {p2}, Le/i/b/u2/c/n;->f()Le/i/b/u2/c/q;

    move-result-object v0

    if-nez v0, :cond_5

    .line 18
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_2

    .line 19
    :cond_5
    iget-object v0, p0, Le/i/b/u2/c/h$a;->c:Le/m/e/b0;

    if-nez v0, :cond_6

    .line 20
    iget-object v0, p0, Le/i/b/u2/c/h$a;->e:Le/m/e/k;

    const-class v3, Le/i/b/u2/c/q;

    invoke-virtual {v0, v3}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/c/h$a;->c:Le/m/e/b0;

    .line 21
    :cond_6
    invoke-virtual {p2}, Le/i/b/u2/c/n;->f()Le/i/b/u2/c/q;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_2
    const-string v0, "impressionPixels"

    .line 22
    invoke-virtual {p1, v0}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 23
    invoke-virtual {p2}, Le/i/b/u2/c/n;->e()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    .line 24
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_3

    .line 25
    :cond_7
    iget-object v0, p0, Le/i/b/u2/c/h$a;->d:Le/m/e/b0;

    if-nez v0, :cond_8

    .line 26
    iget-object v0, p0, Le/i/b/u2/c/h$a;->e:Le/m/e/k;

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Le/i/b/u2/c/p;

    aput-object v3, v2, v1

    const-class v1, Ljava/util/List;

    invoke-static {v1, v2}, Le/m/e/f0/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v0

    iput-object v0, p0, Le/i/b/u2/c/h$a;->d:Le/m/e/b0;

    .line 27
    :cond_8
    invoke-virtual {p2}, Le/i/b/u2/c/n;->e()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    .line 28
    :goto_3
    invoke-virtual {p1}, Le/m/e/g0/c;->q()Le/m/e/g0/c;

    :goto_4
    return-void
.end method
