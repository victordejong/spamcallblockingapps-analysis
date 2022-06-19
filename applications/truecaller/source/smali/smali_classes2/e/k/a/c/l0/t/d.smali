.class public abstract Le/k/a/c/l0/t/d;
.super Le/k/a/c/l0/t/q0;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/l0/i;
.implements Le/k/a/c/l0/n;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/q0<",
        "Ljava/lang/Object;",
        ">;",
        "Le/k/a/c/l0/i;",
        "Le/k/a/c/l0/n;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final k:[Le/k/a/c/l0/c;


# instance fields
.field public final c:Le/k/a/c/i;

.field public final d:[Le/k/a/c/l0/c;

.field public final e:[Le/k/a/c/l0/c;

.field public final f:Le/k/a/c/l0/a;

.field public final g:Ljava/lang/Object;

.field public final h:Le/k/a/c/g0/i;

.field public final i:Le/k/a/c/l0/s/j;

.field public final j:Le/k/a/a/k$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/k/a/c/v;

    const-string v1, "#object-ref"

    invoke-direct {v0, v1}, Le/k/a/c/v;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Le/k/a/c/l0/c;

    .line 2
    sput-object v0, Le/k/a/c/l0/t/d;->k:[Le/k/a/c/l0/c;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/i;Le/k/a/c/l0/e;[Le/k/a/c/l0/c;[Le/k/a/c/l0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/l0/t/q0;-><init>(Le/k/a/c/i;)V

    .line 2
    iput-object p1, p0, Le/k/a/c/l0/t/d;->c:Le/k/a/c/i;

    .line 3
    iput-object p3, p0, Le/k/a/c/l0/t/d;->d:[Le/k/a/c/l0/c;

    .line 4
    iput-object p4, p0, Le/k/a/c/l0/t/d;->e:[Le/k/a/c/l0/c;

    const/4 p1, 0x0

    if-nez p2, :cond_0

    .line 5
    iput-object p1, p0, Le/k/a/c/l0/t/d;->h:Le/k/a/c/g0/i;

    .line 6
    iput-object p1, p0, Le/k/a/c/l0/t/d;->f:Le/k/a/c/l0/a;

    .line 7
    iput-object p1, p0, Le/k/a/c/l0/t/d;->g:Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Le/k/a/c/l0/t/d;->i:Le/k/a/c/l0/s/j;

    .line 9
    iput-object p1, p0, Le/k/a/c/l0/t/d;->j:Le/k/a/a/k$c;

    goto :goto_0

    .line 10
    :cond_0
    iget-object p3, p2, Le/k/a/c/l0/e;->g:Le/k/a/c/g0/i;

    .line 11
    iput-object p3, p0, Le/k/a/c/l0/t/d;->h:Le/k/a/c/g0/i;

    .line 12
    iget-object p3, p2, Le/k/a/c/l0/e;->e:Le/k/a/c/l0/a;

    .line 13
    iput-object p3, p0, Le/k/a/c/l0/t/d;->f:Le/k/a/c/l0/a;

    .line 14
    iget-object p3, p2, Le/k/a/c/l0/e;->f:Ljava/lang/Object;

    .line 15
    iput-object p3, p0, Le/k/a/c/l0/t/d;->g:Ljava/lang/Object;

    .line 16
    iget-object p3, p2, Le/k/a/c/l0/e;->h:Le/k/a/c/l0/s/j;

    .line 17
    iput-object p3, p0, Le/k/a/c/l0/t/d;->i:Le/k/a/c/l0/s/j;

    .line 18
    iget-object p2, p2, Le/k/a/c/l0/e;->a:Le/k/a/c/c;

    .line 19
    invoke-virtual {p2, p1}, Le/k/a/c/c;->b(Le/k/a/a/k$d;)Le/k/a/a/k$d;

    move-result-object p1

    .line 20
    iget-object p1, p1, Le/k/a/a/k$d;->b:Le/k/a/a/k$c;

    .line 21
    iput-object p1, p0, Le/k/a/c/l0/t/d;->j:Le/k/a/a/k$c;

    :goto_0
    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/t/d;Le/k/a/c/l0/s/j;Ljava/lang/Object;)V
    .locals 1

    .line 31
    iget-object v0, p1, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    invoke-direct {p0, v0}, Le/k/a/c/l0/t/q0;-><init>(Ljava/lang/Class;)V

    .line 32
    iget-object v0, p1, Le/k/a/c/l0/t/d;->c:Le/k/a/c/i;

    iput-object v0, p0, Le/k/a/c/l0/t/d;->c:Le/k/a/c/i;

    .line 33
    iget-object v0, p1, Le/k/a/c/l0/t/d;->d:[Le/k/a/c/l0/c;

    iput-object v0, p0, Le/k/a/c/l0/t/d;->d:[Le/k/a/c/l0/c;

    .line 34
    iget-object v0, p1, Le/k/a/c/l0/t/d;->e:[Le/k/a/c/l0/c;

    iput-object v0, p0, Le/k/a/c/l0/t/d;->e:[Le/k/a/c/l0/c;

    .line 35
    iget-object v0, p1, Le/k/a/c/l0/t/d;->h:Le/k/a/c/g0/i;

    iput-object v0, p0, Le/k/a/c/l0/t/d;->h:Le/k/a/c/g0/i;

    .line 36
    iget-object v0, p1, Le/k/a/c/l0/t/d;->f:Le/k/a/c/l0/a;

    iput-object v0, p0, Le/k/a/c/l0/t/d;->f:Le/k/a/c/l0/a;

    .line 37
    iput-object p2, p0, Le/k/a/c/l0/t/d;->i:Le/k/a/c/l0/s/j;

    .line 38
    iput-object p3, p0, Le/k/a/c/l0/t/d;->g:Ljava/lang/Object;

    .line 39
    iget-object p1, p1, Le/k/a/c/l0/t/d;->j:Le/k/a/a/k$c;

    iput-object p1, p0, Le/k/a/c/l0/t/d;->j:Le/k/a/a/k$c;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/t/d;Ljava/util/Set;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/t/d;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 40
    iget-object v0, p1, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    invoke-direct {p0, v0}, Le/k/a/c/l0/t/q0;-><init>(Ljava/lang/Class;)V

    .line 41
    iget-object v0, p1, Le/k/a/c/l0/t/d;->c:Le/k/a/c/i;

    iput-object v0, p0, Le/k/a/c/l0/t/d;->c:Le/k/a/c/i;

    .line 42
    iget-object v0, p1, Le/k/a/c/l0/t/d;->d:[Le/k/a/c/l0/c;

    .line 43
    iget-object v1, p1, Le/k/a/c/l0/t/d;->e:[Le/k/a/c/l0/c;

    .line 44
    array-length v2, v0

    .line 45
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move-object v5, v4

    goto :goto_0

    .line 46
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_3

    .line 47
    aget-object v7, v0, v6

    .line 48
    iget-object v8, v7, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    .line 49
    iget-object v8, v8, Le/k/a/b/w/i;->a:Ljava/lang/String;

    .line 50
    invoke-static {v8, p2, p3}, Ln3/g0/y;->U1(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    .line 51
    :cond_1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_2

    .line 52
    aget-object v7, v1, v6

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 53
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Le/k/a/c/l0/c;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Le/k/a/c/l0/c;

    iput-object p2, p0, Le/k/a/c/l0/t/d;->d:[Le/k/a/c/l0/c;

    if-nez v5, :cond_4

    goto :goto_3

    .line 54
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Le/k/a/c/l0/c;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, [Le/k/a/c/l0/c;

    :goto_3
    iput-object v4, p0, Le/k/a/c/l0/t/d;->e:[Le/k/a/c/l0/c;

    .line 55
    iget-object p2, p1, Le/k/a/c/l0/t/d;->h:Le/k/a/c/g0/i;

    iput-object p2, p0, Le/k/a/c/l0/t/d;->h:Le/k/a/c/g0/i;

    .line 56
    iget-object p2, p1, Le/k/a/c/l0/t/d;->f:Le/k/a/c/l0/a;

    iput-object p2, p0, Le/k/a/c/l0/t/d;->f:Le/k/a/c/l0/a;

    .line 57
    iget-object p2, p1, Le/k/a/c/l0/t/d;->i:Le/k/a/c/l0/s/j;

    iput-object p2, p0, Le/k/a/c/l0/t/d;->i:Le/k/a/c/l0/s/j;

    .line 58
    iget-object p2, p1, Le/k/a/c/l0/t/d;->g:Ljava/lang/Object;

    iput-object p2, p0, Le/k/a/c/l0/t/d;->g:Ljava/lang/Object;

    .line 59
    iget-object p1, p1, Le/k/a/c/l0/t/d;->j:Le/k/a/a/k$c;

    iput-object p1, p0, Le/k/a/c/l0/t/d;->j:Le/k/a/a/k$c;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/l0/t/d;[Le/k/a/c/l0/c;[Le/k/a/c/l0/c;)V
    .locals 1

    .line 22
    iget-object v0, p1, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    invoke-direct {p0, v0}, Le/k/a/c/l0/t/q0;-><init>(Ljava/lang/Class;)V

    .line 23
    iget-object v0, p1, Le/k/a/c/l0/t/d;->c:Le/k/a/c/i;

    iput-object v0, p0, Le/k/a/c/l0/t/d;->c:Le/k/a/c/i;

    .line 24
    iput-object p2, p0, Le/k/a/c/l0/t/d;->d:[Le/k/a/c/l0/c;

    .line 25
    iput-object p3, p0, Le/k/a/c/l0/t/d;->e:[Le/k/a/c/l0/c;

    .line 26
    iget-object p2, p1, Le/k/a/c/l0/t/d;->h:Le/k/a/c/g0/i;

    iput-object p2, p0, Le/k/a/c/l0/t/d;->h:Le/k/a/c/g0/i;

    .line 27
    iget-object p2, p1, Le/k/a/c/l0/t/d;->f:Le/k/a/c/l0/a;

    iput-object p2, p0, Le/k/a/c/l0/t/d;->f:Le/k/a/c/l0/a;

    .line 28
    iget-object p2, p1, Le/k/a/c/l0/t/d;->i:Le/k/a/c/l0/s/j;

    iput-object p2, p0, Le/k/a/c/l0/t/d;->i:Le/k/a/c/l0/s/j;

    .line 29
    iget-object p2, p1, Le/k/a/c/l0/t/d;->g:Ljava/lang/Object;

    iput-object p2, p0, Le/k/a/c/l0/t/d;->g:Ljava/lang/Object;

    .line 30
    iget-object p1, p1, Le/k/a/c/l0/t/d;->j:Le/k/a/a/k$c;

    iput-object p1, p0, Le/k/a/c/l0/t/d;->j:Le/k/a/a/k$c;

    return-void
.end method

.method public static final t([Le/k/a/c/l0/c;Le/k/a/c/n0/s;)[Le/k/a/c/l0/c;
    .locals 4

    if-eqz p0, :cond_3

    .line 1
    array-length v0, p0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    sget-object v0, Le/k/a/c/n0/s;->a:Le/k/a/c/n0/s;

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    array-length v0, p0

    .line 3
    new-array v1, v0, [Le/k/a/c/l0/c;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 4
    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3, p1}, Le/k/a/c/l0/c;->j(Le/k/a/c/n0/s;)Le/k/a/c/l0/c;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object p0
.end method


# virtual methods
.method public a(Le/k/a/c/a0;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/d;->e:[Le/k/a/c/l0/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    array-length v0, v0

    .line 2
    :goto_0
    iget-object v2, p0, Le/k/a/c/l0/t/d;->d:[Le/k/a/c/l0/c;

    array-length v2, v2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_c

    .line 3
    iget-object v4, p0, Le/k/a/c/l0/t/d;->d:[Le/k/a/c/l0/c;

    aget-object v4, v4, v3

    .line 4
    iget-boolean v5, v4, Le/k/a/c/l0/c;->p:Z

    const/4 v6, 0x1

    if-nez v5, :cond_2

    .line 5
    iget-object v5, v4, Le/k/a/c/l0/c;->m:Le/k/a/c/n;

    if-eqz v5, :cond_1

    move v5, v6

    goto :goto_2

    :cond_1
    move v5, v1

    :goto_2
    if-nez v5, :cond_2

    .line 6
    iget-object v5, p1, Le/k/a/c/a0;->h:Le/k/a/c/n;

    if-eqz v5, :cond_2

    .line 7
    invoke-virtual {v4, v5}, Le/k/a/c/l0/c;->h(Le/k/a/c/n;)V

    if-ge v3, v0, :cond_2

    .line 8
    iget-object v7, p0, Le/k/a/c/l0/t/d;->e:[Le/k/a/c/l0/c;

    aget-object v7, v7, v3

    if-eqz v7, :cond_2

    .line 9
    invoke-virtual {v7, v5}, Le/k/a/c/l0/c;->h(Le/k/a/c/n;)V

    .line 10
    :cond_2
    iget-object v5, v4, Le/k/a/c/l0/c;->l:Le/k/a/c/n;

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v6, v1

    :goto_3
    if-eqz v6, :cond_4

    goto/16 :goto_5

    .line 11
    :cond_4
    invoke-virtual {p1}, Le/k/a/c/a0;->E()Le/k/a/c/b;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_6

    .line 12
    iget-object v7, v4, Le/k/a/c/l0/c;->i:Le/k/a/c/g0/i;

    if-eqz v7, :cond_6

    .line 13
    invoke-virtual {v5, v7}, Le/k/a/c/b;->R(Le/k/a/c/g0/b;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 14
    iget-object v7, v4, Le/k/a/c/l0/c;->i:Le/k/a/c/g0/i;

    .line 15
    invoke-virtual {p1, v7, v5}, Le/k/a/c/e;->g(Le/k/a/c/g0/b;Ljava/lang/Object;)Le/k/a/c/n0/i;

    move-result-object v5

    .line 16
    invoke-virtual {p1}, Le/k/a/c/a0;->i()Le/k/a/c/m0/o;

    move-result-object v7

    invoke-interface {v5, v7}, Le/k/a/c/n0/i;->b(Le/k/a/c/m0/o;)Le/k/a/c/i;

    move-result-object v7

    .line 17
    invoke-virtual {v7}, Le/k/a/c/i;->E()Z

    move-result v8

    if-eqz v8, :cond_5

    goto :goto_4

    .line 18
    :cond_5
    invoke-virtual {p1, v7, v4}, Le/k/a/c/a0;->C(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v6

    .line 19
    :goto_4
    new-instance v8, Le/k/a/c/l0/t/j0;

    invoke-direct {v8, v5, v7, v6}, Le/k/a/c/l0/t/j0;-><init>(Le/k/a/c/n0/i;Le/k/a/c/i;Le/k/a/c/n;)V

    move-object v6, v8

    :cond_6
    if-nez v6, :cond_9

    .line 20
    iget-object v5, v4, Le/k/a/c/l0/c;->f:Le/k/a/c/i;

    if-nez v5, :cond_8

    .line 21
    iget-object v5, v4, Le/k/a/c/l0/c;->e:Le/k/a/c/i;

    .line 22
    invoke-virtual {v5}, Le/k/a/c/i;->C()Z

    move-result v6

    if-nez v6, :cond_8

    .line 23
    invoke-virtual {v5}, Le/k/a/c/i;->z()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v5}, Le/k/a/c/i;->g()I

    move-result v6

    if-lez v6, :cond_b

    .line 24
    :cond_7
    iput-object v5, v4, Le/k/a/c/l0/c;->g:Le/k/a/c/i;

    goto :goto_5

    .line 25
    :cond_8
    invoke-virtual {p1, v5, v4}, Le/k/a/c/a0;->C(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v6

    .line 26
    invoke-virtual {v5}, Le/k/a/c/i;->z()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 27
    invoke-virtual {v5}, Le/k/a/c/i;->k()Le/k/a/c/i;

    move-result-object v5

    .line 28
    iget-object v5, v5, Le/k/a/c/i;->d:Ljava/lang/Object;

    .line 29
    check-cast v5, Le/k/a/c/j0/h;

    if-eqz v5, :cond_9

    .line 30
    instance-of v7, v6, Le/k/a/c/l0/h;

    if-eqz v7, :cond_9

    .line 31
    check-cast v6, Le/k/a/c/l0/h;

    .line 32
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {v6, v5}, Le/k/a/c/l0/h;->p(Le/k/a/c/j0/h;)Le/k/a/c/l0/h;

    move-result-object v6

    :cond_9
    if-ge v3, v0, :cond_a

    .line 34
    iget-object v5, p0, Le/k/a/c/l0/t/d;->e:[Le/k/a/c/l0/c;

    aget-object v5, v5, v3

    if-eqz v5, :cond_a

    .line 35
    invoke-virtual {v5, v6}, Le/k/a/c/l0/c;->i(Le/k/a/c/n;)V

    goto :goto_5

    .line 36
    :cond_a
    invoke-virtual {v4, v6}, Le/k/a/c/l0/c;->i(Le/k/a/c/n;)V

    :cond_b
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 37
    :cond_c
    iget-object v0, p0, Le/k/a/c/l0/t/d;->f:Le/k/a/c/l0/a;

    if-eqz v0, :cond_d

    .line 38
    iget-object v1, v0, Le/k/a/c/l0/a;->c:Le/k/a/c/n;

    instance-of v2, v1, Le/k/a/c/l0/i;

    if-eqz v2, :cond_d

    .line 39
    iget-object v2, v0, Le/k/a/c/l0/a;->a:Le/k/a/c/d;

    invoke-virtual {p1, v1, v2}, Le/k/a/c/a0;->H(Le/k/a/c/n;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object p1

    .line 40
    iput-object p1, v0, Le/k/a/c/l0/a;->c:Le/k/a/c/n;

    .line 41
    instance-of v1, p1, Le/k/a/c/l0/t/t;

    if-eqz v1, :cond_d

    .line 42
    check-cast p1, Le/k/a/c/l0/t/t;

    iput-object p1, v0, Le/k/a/c/l0/a;->d:Le/k/a/c/l0/t/t;

    :cond_d
    return-void
.end method

.method public b(Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/n<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Le/k/a/c/a0;->E()Le/k/a/c/b;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v9, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface/range {p2 .. p2}, Le/k/a/c/d;->c()Le/k/a/c/g0/i;

    move-result-object v4

    goto :goto_1

    :cond_1
    :goto_0
    move-object v4, v3

    .line 3
    :goto_1
    iget-object v5, v1, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 4
    iget-object v6, v0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    invoke-virtual {v0, v1, v9, v6}, Le/k/a/c/l0/t/q0;->l(Le/k/a/c/a0;Le/k/a/c/d;Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_6

    .line 5
    iget-object v10, v6, Le/k/a/a/k$d;->b:Le/k/a/a/k$c;

    sget-object v11, Le/k/a/a/k$c;->a:Le/k/a/a/k$c;

    if-eq v10, v11, :cond_2

    move v12, v8

    goto :goto_2

    :cond_2
    move v12, v7

    :goto_2
    if-eqz v12, :cond_6

    if-eq v10, v11, :cond_7

    .line 6
    iget-object v11, v0, Le/k/a/c/l0/t/d;->j:Le/k/a/a/k$c;

    if-eq v10, v11, :cond_7

    .line 7
    iget-object v11, v0, Le/k/a/c/l0/t/d;->c:Le/k/a/c/i;

    invoke-virtual {v11}, Le/k/a/c/i;->B()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 8
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    const/4 v12, 0x5

    if-eq v11, v12, :cond_3

    const/4 v12, 0x7

    if-eq v11, v12, :cond_3

    const/16 v12, 0x8

    if-eq v11, v12, :cond_3

    goto :goto_3

    .line 9
    :cond_3
    iget-object v2, v0, Le/k/a/c/l0/t/d;->c:Le/k/a/c/i;

    invoke-virtual {v5, v2}, Le/k/a/c/c0/k;->l(Le/k/a/c/i;)Le/k/a/c/c;

    .line 10
    iget-object v2, v0, Le/k/a/c/l0/t/d;->c:Le/k/a/c/i;

    .line 11
    iget-object v2, v2, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 12
    iget-object v4, v1, Le/k/a/c/a0;->a:Le/k/a/c/y;

    .line 13
    invoke-static {v4, v2}, Le/k/a/c/n0/k;->a(Le/k/a/c/c0/k;Ljava/lang/Class;)Le/k/a/c/n0/k;

    move-result-object v4

    .line 14
    invoke-static {v2, v6, v8, v3}, Le/k/a/c/l0/t/m;->p(Ljava/lang/Class;Le/k/a/a/k$d;ZLjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    .line 15
    new-instance v3, Le/k/a/c/l0/t/m;

    invoke-direct {v3, v4, v2}, Le/k/a/c/l0/t/m;-><init>(Le/k/a/c/n0/k;Ljava/lang/Boolean;)V

    .line 16
    invoke-virtual {v1, v3, v9}, Le/k/a/c/a0;->H(Le/k/a/c/n;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v1

    return-object v1

    .line 17
    :cond_4
    sget-object v6, Le/k/a/a/k$c;->b:Le/k/a/a/k$c;

    if-ne v10, v6, :cond_7

    .line 18
    iget-object v6, v0, Le/k/a/c/l0/t/d;->c:Le/k/a/c/i;

    invoke-virtual {v6}, Le/k/a/c/i;->F()Z

    move-result v6

    if-eqz v6, :cond_5

    const-class v6, Ljava/util/Map;

    iget-object v11, v0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    invoke-virtual {v6, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    .line 19
    :cond_5
    const-class v6, Ljava/util/Map$Entry;

    iget-object v11, v0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    invoke-virtual {v6, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 20
    iget-object v2, v0, Le/k/a/c/l0/t/d;->c:Le/k/a/c/i;

    const-class v3, Ljava/util/Map$Entry;

    invoke-virtual {v2, v3}, Le/k/a/c/i;->i(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v2

    .line 21
    invoke-virtual {v2, v7}, Le/k/a/c/i;->h(I)Le/k/a/c/i;

    move-result-object v4

    .line 22
    invoke-virtual {v2, v8}, Le/k/a/c/i;->h(I)Le/k/a/c/i;

    move-result-object v5

    .line 23
    new-instance v10, Le/k/a/c/l0/s/i;

    iget-object v3, v0, Le/k/a/c/l0/t/d;->c:Le/k/a/c/i;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v10

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Le/k/a/c/l0/s/i;-><init>(Le/k/a/c/i;Le/k/a/c/i;Le/k/a/c/i;ZLe/k/a/c/j0/h;Le/k/a/c/d;)V

    .line 24
    invoke-virtual {v1, v10, v9}, Le/k/a/c/a0;->H(Le/k/a/c/n;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v1

    return-object v1

    :cond_6
    move-object v10, v3

    .line 25
    :cond_7
    :goto_3
    iget-object v6, v0, Le/k/a/c/l0/t/d;->i:Le/k/a/c/l0/s/j;

    if-eqz v4, :cond_f

    .line 26
    invoke-virtual {v2, v5, v4}, Le/k/a/c/b;->H(Le/k/a/c/c0/k;Le/k/a/c/g0/b;)Le/k/a/a/p$a;

    move-result-object v11

    invoke-virtual {v11}, Le/k/a/a/p$a;->e()Ljava/util/Set;

    move-result-object v11

    .line 27
    invoke-virtual {v2, v5, v4}, Le/k/a/c/b;->K(Le/k/a/c/c0/k;Le/k/a/c/g0/b;)Le/k/a/a/s$a;

    move-result-object v5

    .line 28
    iget-object v5, v5, Le/k/a/a/s$a;->a:Ljava/util/Set;

    .line 29
    invoke-virtual {v2, v4}, Le/k/a/c/b;->y(Le/k/a/c/g0/b;)Le/k/a/c/g0/a0;

    move-result-object v12

    if-nez v12, :cond_9

    if-eqz v6, :cond_d

    .line 30
    invoke-virtual {v2, v4, v3}, Le/k/a/c/b;->z(Le/k/a/c/g0/b;Le/k/a/c/g0/a0;)Le/k/a/c/g0/a0;

    move-result-object v12

    if-eqz v12, :cond_d

    .line 31
    iget-object v6, v0, Le/k/a/c/l0/t/d;->i:Le/k/a/c/l0/s/j;

    .line 32
    iget-boolean v12, v12, Le/k/a/c/g0/a0;->e:Z

    .line 33
    iget-boolean v13, v6, Le/k/a/c/l0/s/j;->e:Z

    if-ne v12, v13, :cond_8

    goto/16 :goto_5

    .line 34
    :cond_8
    new-instance v19, Le/k/a/c/l0/s/j;

    iget-object v14, v6, Le/k/a/c/l0/s/j;->a:Le/k/a/c/i;

    iget-object v15, v6, Le/k/a/c/l0/s/j;->b:Le/k/a/b/p;

    iget-object v13, v6, Le/k/a/c/l0/s/j;->c:Le/k/a/a/k0;

    iget-object v6, v6, Le/k/a/c/l0/s/j;->d:Le/k/a/c/n;

    move-object/from16 v16, v13

    move-object/from16 v13, v19

    move-object/from16 v17, v6

    move/from16 v18, v12

    invoke-direct/range {v13 .. v18}, Le/k/a/c/l0/s/j;-><init>(Le/k/a/c/i;Le/k/a/b/p;Le/k/a/a/k0;Le/k/a/c/n;Z)V

    move-object/from16 v6, v19

    goto :goto_5

    .line 35
    :cond_9
    invoke-virtual {v2, v4, v12}, Le/k/a/c/b;->z(Le/k/a/c/g0/b;Le/k/a/c/g0/a0;)Le/k/a/c/g0/a0;

    move-result-object v6

    .line 36
    iget-object v12, v6, Le/k/a/c/g0/a0;->b:Ljava/lang/Class;

    .line 37
    invoke-virtual {v1, v12}, Le/k/a/c/e;->f(Ljava/lang/reflect/Type;)Le/k/a/c/i;

    move-result-object v13

    .line 38
    invoke-virtual/range {p1 .. p1}, Le/k/a/c/a0;->i()Le/k/a/c/m0/o;

    move-result-object v14

    const-class v15, Le/k/a/a/k0;

    invoke-virtual {v14, v13, v15}, Le/k/a/c/m0/o;->n(Le/k/a/c/i;Ljava/lang/Class;)[Le/k/a/c/i;

    move-result-object v13

    aget-object v13, v13, v7

    .line 39
    const-class v14, Le/k/a/a/m0;

    if-ne v12, v14, :cond_c

    .line 40
    iget-object v12, v6, Le/k/a/c/g0/a0;->a:Le/k/a/c/v;

    .line 41
    iget-object v12, v12, Le/k/a/c/v;->a:Ljava/lang/String;

    .line 42
    iget-object v13, v0, Le/k/a/c/l0/t/d;->d:[Le/k/a/c/l0/c;

    array-length v13, v13

    move v14, v7

    :goto_4
    if-eq v14, v13, :cond_b

    .line 43
    iget-object v15, v0, Le/k/a/c/l0/t/d;->d:[Le/k/a/c/l0/c;

    aget-object v15, v15, v14

    .line 44
    iget-object v8, v15, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    .line 45
    iget-object v8, v8, Le/k/a/b/w/i;->a:Ljava/lang/String;

    .line 46
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 47
    iget-object v8, v15, Le/k/a/c/l0/c;->e:Le/k/a/c/i;

    .line 48
    new-instance v12, Le/k/a/c/l0/s/k;

    invoke-direct {v12, v6, v15}, Le/k/a/c/l0/s/k;-><init>(Le/k/a/c/g0/a0;Le/k/a/c/l0/c;)V

    .line 49
    iget-boolean v6, v6, Le/k/a/c/g0/a0;->e:Z

    .line 50
    invoke-static {v8, v3, v12, v6}, Le/k/a/c/l0/s/j;->a(Le/k/a/c/i;Le/k/a/c/v;Le/k/a/a/k0;Z)Le/k/a/c/l0/s/j;

    move-result-object v6

    goto :goto_6

    :cond_a
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x1

    goto :goto_4

    .line 51
    :cond_b
    iget-object v2, v0, Le/k/a/c/l0/t/d;->c:Le/k/a/c/i;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 52
    iget-object v5, v0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    .line 53
    invoke-static {v5}, Le/k/a/c/n0/g;->E(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v12}, Le/k/a/c/n0/g;->D(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "Invalid Object Id definition for %s: cannot find property with name %s"

    .line 54
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Le/k/a/c/a0;->m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;

    throw v3

    .line 55
    :cond_c
    invoke-virtual {v1, v4, v6}, Le/k/a/c/e;->k(Le/k/a/c/g0/b;Le/k/a/c/g0/a0;)Le/k/a/a/k0;

    move-result-object v8

    .line 56
    iget-object v12, v6, Le/k/a/c/g0/a0;->a:Le/k/a/c/v;

    .line 57
    iget-boolean v6, v6, Le/k/a/c/g0/a0;->e:Z

    .line 58
    invoke-static {v13, v12, v8, v6}, Le/k/a/c/l0/s/j;->a(Le/k/a/c/i;Le/k/a/c/v;Le/k/a/a/k0;Z)Le/k/a/c/l0/s/j;

    move-result-object v6

    :cond_d
    :goto_5
    move v14, v7

    .line 59
    :goto_6
    invoke-virtual {v2, v4}, Le/k/a/c/b;->m(Le/k/a/c/g0/b;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 60
    iget-object v4, v0, Le/k/a/c/l0/t/d;->g:Ljava/lang/Object;

    if-eqz v4, :cond_10

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto :goto_7

    :cond_e
    move-object v2, v3

    goto :goto_7

    :cond_f
    move-object v2, v3

    move-object v5, v2

    move-object v11, v5

    move v14, v7

    :cond_10
    :goto_7
    if-lez v14, :cond_12

    .line 61
    iget-object v4, v0, Le/k/a/c/l0/t/d;->d:[Le/k/a/c/l0/c;

    array-length v8, v4

    invoke-static {v4, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Le/k/a/c/l0/c;

    .line 62
    aget-object v8, v4, v14

    const/4 v12, 0x1

    .line 63
    invoke-static {v4, v7, v4, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    aput-object v8, v4, v7

    .line 65
    iget-object v8, v0, Le/k/a/c/l0/t/d;->e:[Le/k/a/c/l0/c;

    if-nez v8, :cond_11

    goto :goto_8

    .line 66
    :cond_11
    array-length v3, v8

    invoke-static {v8, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Le/k/a/c/l0/c;

    .line 67
    aget-object v8, v3, v14

    .line 68
    invoke-static {v3, v7, v3, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    aput-object v8, v3, v7

    .line 70
    :goto_8
    invoke-virtual {v0, v4, v3}, Le/k/a/c/l0/t/d;->y([Le/k/a/c/l0/c;[Le/k/a/c/l0/c;)Le/k/a/c/l0/t/d;

    move-result-object v3

    goto :goto_9

    :cond_12
    move-object v3, v0

    :goto_9
    if-eqz v6, :cond_13

    .line 71
    iget-object v4, v6, Le/k/a/c/l0/s/j;->a:Le/k/a/c/i;

    invoke-virtual {v1, v4, v9}, Le/k/a/c/a0;->C(Le/k/a/c/i;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v16

    .line 72
    new-instance v1, Le/k/a/c/l0/s/j;

    iget-object v13, v6, Le/k/a/c/l0/s/j;->a:Le/k/a/c/i;

    iget-object v14, v6, Le/k/a/c/l0/s/j;->b:Le/k/a/b/p;

    iget-object v15, v6, Le/k/a/c/l0/s/j;->c:Le/k/a/a/k0;

    iget-boolean v4, v6, Le/k/a/c/l0/s/j;->e:Z

    move-object v12, v1

    move/from16 v17, v4

    invoke-direct/range {v12 .. v17}, Le/k/a/c/l0/s/j;-><init>(Le/k/a/c/i;Le/k/a/b/p;Le/k/a/a/k0;Le/k/a/c/n;Z)V

    .line 73
    iget-object v4, v0, Le/k/a/c/l0/t/d;->i:Le/k/a/c/l0/s/j;

    if-eq v1, v4, :cond_13

    .line 74
    invoke-virtual {v3, v1}, Le/k/a/c/l0/t/d;->x(Le/k/a/c/l0/s/j;)Le/k/a/c/l0/t/d;

    move-result-object v3

    :cond_13
    if-eqz v11, :cond_14

    .line 75
    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    if-eqz v5, :cond_16

    .line 76
    :cond_15
    invoke-virtual {v3, v11, v5}, Le/k/a/c/l0/t/d;->v(Ljava/util/Set;Ljava/util/Set;)Le/k/a/c/l0/t/d;

    move-result-object v3

    :cond_16
    if-eqz v2, :cond_17

    .line 77
    invoke-virtual {v3, v2}, Le/k/a/c/l0/t/d;->w(Ljava/lang/Object;)Le/k/a/c/l0/t/d;

    move-result-object v3

    :cond_17
    if-nez v10, :cond_18

    .line 78
    iget-object v10, v0, Le/k/a/c/l0/t/d;->j:Le/k/a/a/k$c;

    .line 79
    :cond_18
    sget-object v1, Le/k/a/a/k$c;->d:Le/k/a/a/k$c;

    if-ne v10, v1, :cond_19

    .line 80
    invoke-virtual {v3}, Le/k/a/c/l0/t/d;->s()Le/k/a/c/l0/t/d;

    move-result-object v1

    return-object v1

    :cond_19
    return-object v3
.end method

.method public g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/d;->i:Le/k/a/c/l0/s/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2, p1}, Le/k/a/b/g;->J(Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Le/k/a/c/l0/t/d;->p(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p2, p1}, Le/k/a/b/g;->J(Ljava/lang/Object;)V

    .line 5
    sget-object v0, Le/k/a/b/m;->j:Le/k/a/b/m;

    invoke-virtual {p0, p4, p1, v0}, Le/k/a/c/l0/t/d;->r(Le/k/a/c/j0/h;Ljava/lang/Object;Le/k/a/b/m;)Le/k/a/b/z/b;

    move-result-object v0

    .line 6
    invoke-virtual {p4, p2, v0}, Le/k/a/c/j0/h;->e(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    .line 7
    iget-object v1, p0, Le/k/a/c/l0/t/d;->g:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 8
    iget-object p2, p0, Le/k/a/c/l0/t/d;->e:[Le/k/a/c/l0/c;

    if-eqz p2, :cond_1

    .line 9
    iget-object p2, p3, Le/k/a/c/a0;->b:Ljava/lang/Class;

    .line 10
    :cond_1
    invoke-virtual {p0, p3, v1, p1}, Le/k/a/c/l0/t/q0;->m(Le/k/a/c/a0;Ljava/lang/Object;Ljava/lang/Object;)Le/k/a/c/l0/l;

    const/4 p1, 0x0

    throw p1

    .line 11
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/t/d;->u(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    .line 12
    invoke-virtual {p4, p2, v0}, Le/k/a/c/j0/h;->f(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/d;->i:Le/k/a/c/l0/s/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final p(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/d;->i:Le/k/a/c/l0/s/j;

    .line 2
    iget-object v1, v0, Le/k/a/c/l0/s/j;->c:Le/k/a/a/k0;

    invoke-virtual {p3, p1, v1}, Le/k/a/c/a0;->x(Ljava/lang/Object;Le/k/a/a/k0;)Le/k/a/c/l0/s/u;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p2, p3, v0}, Le/k/a/c/l0/s/u;->b(Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/l0/s/j;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v2, v1, Le/k/a/c/l0/s/u;->b:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 5
    iget-object v2, v1, Le/k/a/c/l0/s/u;->a:Le/k/a/a/k0;

    invoke-virtual {v2, p1}, Le/k/a/a/k0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Le/k/a/c/l0/s/u;->b:Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object v2, v1, Le/k/a/c/l0/s/u;->b:Ljava/lang/Object;

    .line 7
    iget-boolean v3, v0, Le/k/a/c/l0/s/j;->e:Z

    if-eqz v3, :cond_2

    .line 8
    iget-object p1, v0, Le/k/a/c/l0/s/j;->d:Le/k/a/c/n;

    invoke-virtual {p1, v2, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void

    .line 9
    :cond_2
    iget-object v0, p0, Le/k/a/c/l0/t/d;->i:Le/k/a/c/l0/s/j;

    .line 10
    sget-object v2, Le/k/a/b/m;->j:Le/k/a/b/m;

    invoke-virtual {p0, p4, p1, v2}, Le/k/a/c/l0/t/d;->r(Le/k/a/c/j0/h;Ljava/lang/Object;Le/k/a/b/m;)Le/k/a/b/z/b;

    move-result-object v2

    .line 11
    invoke-virtual {p4, p2, v2}, Le/k/a/c/j0/h;->e(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    .line 12
    invoke-virtual {v1, p2, p3, v0}, Le/k/a/c/l0/s/u;->a(Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/l0/s/j;)V

    .line 13
    iget-object v0, p0, Le/k/a/c/l0/t/d;->g:Ljava/lang/Object;

    if-nez v0, :cond_3

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/t/d;->u(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    .line 15
    invoke-virtual {p4, p2, v2}, Le/k/a/c/j0/h;->f(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    return-void

    .line 16
    :cond_3
    invoke-virtual {p0, p3, v0, p1}, Le/k/a/c/l0/t/q0;->m(Le/k/a/c/a0;Ljava/lang/Object;Ljava/lang/Object;)Le/k/a/c/l0/l;

    const/4 p1, 0x0

    throw p1
.end method

.method public final q(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/d;->i:Le/k/a/c/l0/s/j;

    .line 2
    iget-object v1, v0, Le/k/a/c/l0/s/j;->c:Le/k/a/a/k0;

    invoke-virtual {p3, p1, v1}, Le/k/a/c/a0;->x(Ljava/lang/Object;Le/k/a/a/k0;)Le/k/a/c/l0/s/u;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p2, p3, v0}, Le/k/a/c/l0/s/u;->b(Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/l0/s/j;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v2, v1, Le/k/a/c/l0/s/u;->b:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 5
    iget-object v2, v1, Le/k/a/c/l0/s/u;->a:Le/k/a/a/k0;

    invoke-virtual {v2, p1}, Le/k/a/a/k0;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Le/k/a/c/l0/s/u;->b:Ljava/lang/Object;

    .line 6
    :cond_1
    iget-object v2, v1, Le/k/a/c/l0/s/u;->b:Ljava/lang/Object;

    .line 7
    iget-boolean v3, v0, Le/k/a/c/l0/s/j;->e:Z

    if-eqz v3, :cond_2

    .line 8
    iget-object p1, v0, Le/k/a/c/l0/s/j;->d:Le/k/a/c/n;

    invoke-virtual {p1, v2, p2, p3}, Le/k/a/c/n;->f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void

    :cond_2
    if-eqz p4, :cond_3

    .line 9
    invoke-virtual {p2, p1}, Le/k/a/b/g;->O1(Ljava/lang/Object;)V

    .line 10
    :cond_3
    invoke-virtual {v1, p2, p3, v0}, Le/k/a/c/l0/s/u;->a(Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/l0/s/j;)V

    .line 11
    iget-object v0, p0, Le/k/a/c/l0/t/d;->g:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/l0/t/d;->u(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    if-eqz p4, :cond_4

    .line 13
    invoke-virtual {p2}, Le/k/a/b/g;->t0()V

    :cond_4
    return-void

    .line 14
    :cond_5
    invoke-virtual {p0, p3, v0, p1}, Le/k/a/c/l0/t/q0;->m(Le/k/a/c/a0;Ljava/lang/Object;Ljava/lang/Object;)Le/k/a/c/l0/l;

    const/4 p1, 0x0

    throw p1
.end method

.method public final r(Le/k/a/c/j0/h;Ljava/lang/Object;Le/k/a/b/m;)Le/k/a/b/z/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/d;->h:Le/k/a/c/g0/i;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, p2, p3}, Le/k/a/c/j0/h;->d(Ljava/lang/Object;Le/k/a/b/m;)Le/k/a/b/z/b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0, p2}, Le/k/a/c/g0/i;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 4
    :cond_1
    invoke-virtual {p1, p2, p3}, Le/k/a/c/j0/h;->d(Ljava/lang/Object;Le/k/a/b/m;)Le/k/a/b/z/b;

    move-result-object p1

    .line 5
    iput-object v0, p1, Le/k/a/b/z/b;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public abstract s()Le/k/a/c/l0/t/d;
.end method

.method public u(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "[anySetter]"

    .line 1
    iget-object v1, p0, Le/k/a/c/l0/t/d;->e:[Le/k/a/c/l0/c;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, p3, Le/k/a/c/a0;->b:Ljava/lang/Class;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Le/k/a/c/l0/t/d;->d:[Le/k/a/c/l0/c;

    :goto_0
    const/4 v2, 0x0

    .line 4
    :try_start_0
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_2

    .line 5
    aget-object v4, v1, v2

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v4, p1, p2, p3}, Le/k/a/c/l0/c;->l(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7
    :cond_2
    iget-object v3, p0, Le/k/a/c/l0/t/d;->f:Le/k/a/c/l0/a;

    if-eqz v3, :cond_3

    .line 8
    invoke-virtual {v3, p1, p2, p3}, Le/k/a/c/l0/a;->a(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p3

    .line 9
    new-instance v3, Le/k/a/c/k;

    const-string v4, "Infinite recursion (StackOverflowError)"

    invoke-direct {v3, p2, v4, p3}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    array-length p2, v1

    if-ne v2, p2, :cond_4

    goto :goto_2

    :cond_4
    aget-object p2, v1, v2

    .line 11
    iget-object p2, p2, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    .line 12
    iget-object v0, p2, Le/k/a/b/w/i;->a:Ljava/lang/String;

    .line 13
    :goto_2
    new-instance p2, Le/k/a/c/k$a;

    invoke-direct {p2, p1, v0}, Le/k/a/c/k$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Le/k/a/c/k;->f(Le/k/a/c/k$a;)V

    .line 14
    throw v3

    :catch_1
    move-exception p2

    .line 15
    array-length v3, v1

    if-ne v2, v3, :cond_5

    goto :goto_3

    :cond_5
    aget-object v0, v1, v2

    .line 16
    iget-object v0, v0, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    .line 17
    iget-object v0, v0, Le/k/a/b/w/i;->a:Ljava/lang/String;

    .line 18
    :goto_3
    invoke-virtual {p0, p3, p2, p1, v0}, Le/k/a/c/l0/t/q0;->o(Le/k/a/c/a0;Ljava/lang/Throwable;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract v(Ljava/util/Set;Ljava/util/Set;)Le/k/a/c/l0/t/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Le/k/a/c/l0/t/d;"
        }
    .end annotation
.end method

.method public abstract w(Ljava/lang/Object;)Le/k/a/c/l0/t/d;
.end method

.method public abstract x(Le/k/a/c/l0/s/j;)Le/k/a/c/l0/t/d;
.end method

.method public abstract y([Le/k/a/c/l0/c;[Le/k/a/c/l0/c;)Le/k/a/c/l0/t/d;
.end method
