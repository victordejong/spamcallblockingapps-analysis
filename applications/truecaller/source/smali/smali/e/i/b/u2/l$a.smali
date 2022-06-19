.class public final Le/i/b/u2/l$a;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/i/b/u2/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/e/b0<",
        "Le/i/b/u2/a0;",
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
    iput-object p1, p0, Le/i/b/u2/l$a;->c:Le/m/e/k;

    return-void
.end method


# virtual methods
.method public read(Le/m/e/g0/a;)Ljava/lang/Object;
    .locals 8
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

    move-object v2, v3

    move-object v4, v2

    .line 4
    :goto_0
    invoke-virtual {p1}, Le/m/e/g0/a;->I()Z

    move-result v5

    if-eqz v5, :cond_8

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

    const-string v6, "cpId"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    const-string v6, "bundleId"

    .line 9
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 10
    iget-object v3, p0, Le/i/b/u2/l$a;->a:Le/m/e/b0;

    if-nez v3, :cond_2

    .line 11
    iget-object v3, p0, Le/i/b/u2/l$a;->c:Le/m/e/k;

    invoke-virtual {v3, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v3

    iput-object v3, p0, Le/i/b/u2/l$a;->a:Le/m/e/b0;

    .line 12
    :cond_2
    invoke-virtual {v3, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v6, "ext"

    .line 13
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 14
    iget-object v4, p0, Le/i/b/u2/l$a;->b:Le/m/e/b0;

    if-nez v4, :cond_4

    .line 15
    iget-object v4, p0, Le/i/b/u2/l$a;->c:Le/m/e/k;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/reflect/Type;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const-class v6, Ljava/util/Map;

    invoke-static {v6, v5}, Le/m/e/f0/a;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Le/m/e/f0/a;

    move-result-object v5

    invoke-virtual {v4, v5}, Le/m/e/k;->h(Le/m/e/f0/a;)Le/m/e/b0;

    move-result-object v4

    iput-object v4, p0, Le/i/b/u2/l$a;->b:Le/m/e/b0;

    .line 16
    :cond_4
    invoke-virtual {v4, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    goto :goto_0

    .line 17
    :cond_5
    invoke-virtual {p1}, Le/m/e/g0/a;->L0()V

    goto :goto_0

    .line 18
    :cond_6
    iget-object v2, p0, Le/i/b/u2/l$a;->a:Le/m/e/b0;

    if-nez v2, :cond_7

    .line 19
    iget-object v2, p0, Le/i/b/u2/l$a;->c:Le/m/e/k;

    invoke-virtual {v2, v1}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v2

    iput-object v2, p0, Le/i/b/u2/l$a;->a:Le/m/e/b0;

    .line 20
    :cond_7
    invoke-virtual {v2, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_8
    invoke-virtual {p1}, Le/m/e/g0/a;->q()V

    .line 22
    new-instance p1, Le/i/b/u2/l;

    invoke-direct {p1, v3, v2, v4}, Le/i/b/u2/l;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object v3, p1

    :goto_1
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "TypeAdapter(Publisher)"

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
    check-cast p2, Le/i/b/u2/a0;

    .line 2
    const-class v0, Ljava/lang/String;

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto/16 :goto_3

    .line 4
    :cond_0
    invoke-virtual {p1}, Le/m/e/g0/c;->j()Le/m/e/g0/c;

    const-string v1, "bundleId"

    .line 5
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 6
    invoke-virtual {p2}, Le/i/b/u2/a0;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Le/i/b/u2/l$a;->a:Le/m/e/b0;

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Le/i/b/u2/l$a;->c:Le/m/e/k;

    invoke-virtual {v1, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/l$a;->a:Le/m/e/b0;

    .line 10
    :cond_2
    invoke-virtual {p2}, Le/i/b/u2/a0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_0
    const-string v1, "cpId"

    .line 11
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 12
    invoke-virtual {p2}, Le/i/b/u2/a0;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 13
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_1

    .line 14
    :cond_3
    iget-object v1, p0, Le/i/b/u2/l$a;->a:Le/m/e/b0;

    if-nez v1, :cond_4

    .line 15
    iget-object v1, p0, Le/i/b/u2/l$a;->c:Le/m/e/k;

    invoke-virtual {v1, v0}, Le/m/e/k;->i(Ljava/lang/Class;)Le/m/e/b0;

    move-result-object v1

    iput-object v1, p0, Le/i/b/u2/l$a;->a:Le/m/e/b0;

    .line 16
    :cond_4
    invoke-virtual {p2}, Le/i/b/u2/a0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    :goto_1
    const-string v1, "ext"

    .line 17
    invoke-virtual {p1, v1}, Le/m/e/g0/c;->s(Ljava/lang/String;)Le/m/e/g0/c;

    .line 18
    invoke-virtual {p2}, Le/i/b/u2/a0;->c()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_5

    .line 19
    invoke-virtual {p1}, Le/m/e/g0/c;->I()Le/m/e/g0/c;

    goto :goto_2

    .line 20
    :cond_5
    iget-object v1, p0, Le/i/b/u2/l$a;->b:Le/m/e/b0;

    if-nez v1, :cond_6

    .line 21
    iget-object v1, p0, Le/i/b/u2/l$a;->c:Le/m/e/k;

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

    iput-object v1, p0, Le/i/b/u2/l$a;->b:Le/m/e/b0;

    .line 22
    :cond_6
    invoke-virtual {p2}, Le/i/b/u2/a0;->c()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    .line 23
    :goto_2
    invoke-virtual {p1}, Le/m/e/g0/c;->q()Le/m/e/g0/c;

    :goto_3
    return-void
.end method
