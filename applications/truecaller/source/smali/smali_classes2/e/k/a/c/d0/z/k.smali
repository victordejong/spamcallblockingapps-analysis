.class public Le/k/a/c/d0/z/k;
.super Le/k/a/c/d0/z/e0;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/d0/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/e0<",
        "Ljava/lang/Object;",
        ">;",
        "Le/k/a/c/d0/i;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final synthetic i:I


# instance fields
.field public d:[Ljava/lang/Object;

.field public final e:Ljava/lang/Enum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation
.end field

.field public final f:Le/k/a/c/n0/h;

.field public g:Le/k/a/c/n0/h;

.field public final h:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Le/k/a/c/d0/z/k;Ljava/lang/Boolean;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/d0/z/e0;-><init>(Le/k/a/c/d0/z/e0;)V

    .line 2
    iget-object v0, p1, Le/k/a/c/d0/z/k;->f:Le/k/a/c/n0/h;

    iput-object v0, p0, Le/k/a/c/d0/z/k;->f:Le/k/a/c/n0/h;

    .line 3
    iget-object v0, p1, Le/k/a/c/d0/z/k;->d:[Ljava/lang/Object;

    iput-object v0, p0, Le/k/a/c/d0/z/k;->d:[Ljava/lang/Object;

    .line 4
    iget-object p1, p1, Le/k/a/c/d0/z/k;->e:Ljava/lang/Enum;

    iput-object p1, p0, Le/k/a/c/d0/z/k;->e:Ljava/lang/Enum;

    .line 5
    iput-object p2, p0, Le/k/a/c/d0/z/k;->h:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/n0/j;Ljava/lang/Boolean;)V
    .locals 1

    .line 6
    iget-object v0, p1, Le/k/a/c/n0/j;->a:Ljava/lang/Class;

    .line 7
    invoke-direct {p0, v0}, Le/k/a/c/d0/z/e0;-><init>(Ljava/lang/Class;)V

    .line 8
    invoke-virtual {p1}, Le/k/a/c/n0/j;->c()Le/k/a/c/n0/h;

    move-result-object v0

    iput-object v0, p0, Le/k/a/c/d0/z/k;->f:Le/k/a/c/n0/h;

    .line 9
    iget-object v0, p1, Le/k/a/c/n0/j;->b:[Ljava/lang/Enum;

    .line 10
    iput-object v0, p0, Le/k/a/c/d0/z/k;->d:[Ljava/lang/Object;

    .line 11
    iget-object p1, p1, Le/k/a/c/n0/j;->d:Ljava/lang/Enum;

    .line 12
    iput-object p1, p0, Le/k/a/c/d0/z/k;->e:Ljava/lang/Enum;

    .line 13
    iput-object p2, p0, Le/k/a/c/d0/z/k;->h:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/g;Le/k/a/c/d;)Le/k/a/c/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/g;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/j<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 2
    sget-object v1, Le/k/a/a/k$a;->b:Le/k/a/a/k$a;

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/b0;->h0(Le/k/a/c/g;Le/k/a/c/d;Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1, v1}, Le/k/a/a/k$d;->b(Le/k/a/a/k$a;)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Le/k/a/c/d0/z/k;->h:Ljava/lang/Boolean;

    .line 6
    :cond_1
    iget-object p2, p0, Le/k/a/c/d0/z/k;->h:Ljava/lang/Boolean;

    invoke-static {p2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    move-object p2, p0

    goto :goto_1

    .line 7
    :cond_2
    new-instance p2, Le/k/a/c/d0/z/k;

    invoke-direct {p2, p0, p1}, Le/k/a/c/d0/z/k;-><init>(Le/k/a/c/d0/z/k;Ljava/lang/Boolean;)V

    :goto_1
    return-object p2
.end method

.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->p:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/d0/z/k;->m0(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v0, Le/k/a/b/m;->q:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4
    invoke-virtual {p1}, Le/k/a/b/j;->z0()I

    move-result p1

    .line 5
    sget-object v0, Le/k/a/c/m0/f;->i:Le/k/a/c/m0/f;

    .line 6
    iget-object v2, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 7
    sget-object v3, Le/k/a/c/c0/d;->c:Le/k/a/c/c0/d;

    invoke-virtual {p2, v0, v2, v3}, Le/k/a/c/g;->q(Le/k/a/c/m0/f;Ljava/lang/Class;Le/k/a/c/c0/d;)Le/k/a/c/c0/b;

    move-result-object v0

    .line 8
    sget-object v2, Le/k/a/c/c0/b;->a:Le/k/a/c/c0/b;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    .line 9
    sget-object v2, Le/k/a/c/h;->i:Le/k/a/c/h;

    invoke-virtual {p2, v2}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    iget-object v7, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v2, "Integer value ("

    const-string v4, ")"

    invoke-static {v2, p1, v4}, Le/d/c/a/a;->l2(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v4, p0

    move-object v5, p2

    move-object v6, v0

    invoke-virtual/range {v4 .. v9}, Le/k/a/c/d0/z/b0;->r(Le/k/a/c/g;Le/k/a/c/c0/b;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Le/k/a/c/c0/b;

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "not allowed to deserialize Enum value out of number: disable DeserializationConfig.DeserializationFeature.FAIL_ON_NUMBERS_FOR_ENUMS to allow"

    invoke-virtual {p2, v0, p1, v3, v2}, Le/k/a/c/g;->M(Ljava/lang/Class;Ljava/lang/Number;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v1

    .line 14
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    if-eq v0, v2, :cond_6

    if-ltz p1, :cond_3

    .line 15
    iget-object v0, p0, Le/k/a/c/d0/z/k;->d:[Ljava/lang/Object;

    array-length v2, v0

    if-ge p1, v2, :cond_3

    .line 16
    aget-object v1, v0, p1

    goto :goto_1

    .line 17
    :cond_3
    iget-object v0, p0, Le/k/a/c/d0/z/k;->e:Ljava/lang/Enum;

    if-eqz v0, :cond_4

    sget-object v0, Le/k/a/c/h;->A:Le/k/a/c/h;

    .line 18
    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 19
    iget-object v1, p0, Le/k/a/c/d0/z/k;->e:Ljava/lang/Enum;

    goto :goto_1

    .line 20
    :cond_4
    sget-object v0, Le/k/a/c/h;->z:Le/k/a/c/h;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 21
    :cond_5
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Le/k/a/c/d0/z/k;->d:[Ljava/lang/Object;

    array-length v5, v5

    sub-int/2addr v5, v2

    .line 23
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    const-string v2, "index value outside legal index range [0..%s]"

    .line 24
    invoke-virtual {p2, v0, p1, v2, v4}, Le/k/a/c/g;->M(Ljava/lang/Class;Ljava/lang/Number;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v1

    .line 25
    :cond_6
    iget-object v1, p0, Le/k/a/c/d0/z/k;->e:Ljava/lang/Enum;

    :cond_7
    :goto_1
    return-object v1

    .line 26
    :cond_8
    invoke-virtual {p1}, Le/k/a/b/j;->Y1()Z

    move-result v0

    if-nez v0, :cond_a

    .line 27
    sget-object v0, Le/k/a/b/m;->l:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->A(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 29
    :cond_9
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 30
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v1

    .line 31
    :cond_a
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 32
    invoke-virtual {p2, v0, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v1
.end method

.method public j(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/k/a/c/d0/z/k;->e:Ljava/lang/Enum;

    return-object p1
.end method

.method public m0(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object p1, Le/k/a/c/h;->y:Le/k/a/c/h;

    invoke-virtual {p2, p1}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Le/k/a/c/d0/z/k;->g:Le/k/a/c/n0/h;

    if-nez p1, :cond_1

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object p1, p2, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 5
    iget-object v0, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    .line 6
    invoke-static {p1, v0}, Le/k/a/c/n0/j;->d(Le/k/a/c/f;Ljava/lang/Class;)Le/k/a/c/n0/j;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Le/k/a/c/n0/j;->c()Le/k/a/c/n0/h;

    move-result-object p1

    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iput-object p1, p0, Le/k/a/c/d0/z/k;->g:Le/k/a/c/n0/h;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 11
    :cond_0
    iget-object p1, p0, Le/k/a/c/d0/z/k;->f:Le/k/a/c/n0/h;

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {p1, p3}, Le/k/a/c/n0/h;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 13
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    if-eq v5, p3, :cond_2

    .line 14
    invoke-virtual {p1, v5}, Le/k/a/c/n0/h;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 15
    :cond_2
    sget-object p3, Le/k/a/c/m0/f;->i:Le/k/a/c/m0/f;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 18
    invoke-virtual {p0}, Le/k/a/c/d0/z/b0;->m()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Le/k/a/c/c0/d;->j:Le/k/a/c/c0/d;

    invoke-virtual {p2, p3, p1, v0}, Le/k/a/c/g;->q(Le/k/a/c/m0/f;Ljava/lang/Class;Le/k/a/c/c0/d;)Le/k/a/c/c0/b;

    move-result-object p1

    .line 19
    iget-object v4, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    const-string v6, "empty String (\"\")"

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    .line 20
    invoke-virtual/range {v1 .. v6}, Le/k/a/c/d0/z/b0;->r(Le/k/a/c/g;Le/k/a/c/c0/b;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Le/k/a/c/c0/b;

    goto :goto_1

    .line 21
    :cond_3
    invoke-virtual {p0}, Le/k/a/c/d0/z/b0;->m()Ljava/lang/Class;

    move-result-object p1

    sget-object v0, Le/k/a/c/c0/b;->a:Le/k/a/c/c0/b;

    invoke-virtual {p2, p3, p1, v0}, Le/k/a/c/g;->r(Le/k/a/c/m0/f;Ljava/lang/Class;Le/k/a/c/c0/b;)Le/k/a/c/c0/b;

    move-result-object p1

    .line 22
    iget-object v4, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    const-string v6, "blank String (all whitespace)"

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    .line 23
    invoke-virtual/range {v1 .. v6}, Le/k/a/c/d0/z/b0;->r(Le/k/a/c/g;Le/k/a/c/c0/b;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Le/k/a/c/c0/b;

    .line 24
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eq p1, v7, :cond_4

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    goto/16 :goto_5

    .line 25
    :cond_4
    iget-object v8, p0, Le/k/a/c/d0/z/k;->e:Ljava/lang/Enum;

    goto/16 :goto_5

    .line 26
    :cond_5
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Le/k/a/c/d0/z/k;->h:Ljava/lang/Boolean;

    invoke-virtual {p3, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_8

    .line 27
    iget-object p3, p1, Le/k/a/c/n0/h;->c:[Ljava/lang/Object;

    array-length p3, p3

    move v2, v1

    :goto_2
    if-ge v2, p3, :cond_7

    .line 28
    iget-object v3, p1, Le/k/a/c/n0/h;->c:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-eqz v3, :cond_6

    .line 29
    check-cast v3, Ljava/lang/String;

    .line 30
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 31
    iget-object p3, p1, Le/k/a/c/n0/h;->c:[Ljava/lang/Object;

    add-int/2addr v2, v7

    aget-object p3, p3, v2

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_7
    move-object p3, v8

    :goto_3
    if-eqz p3, :cond_a

    move-object v8, p3

    goto/16 :goto_5

    .line 32
    :cond_8
    sget-object p3, Le/k/a/c/h;->i:Le/k/a/c/h;

    invoke-virtual {p2, p3}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result p3

    if-nez p3, :cond_a

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 v2, 0x30

    if-lt p3, v2, :cond_a

    const/16 v2, 0x39

    if-gt p3, v2, :cond_a

    .line 34
    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    .line 35
    sget-object v2, Le/k/a/c/p;->D:Le/k/a/c/p;

    invoke-virtual {p2, v2}, Le/k/a/c/g;->S(Le/k/a/c/p;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-ltz p3, :cond_a

    .line 36
    iget-object v2, p0, Le/k/a/c/d0/z/k;->d:[Ljava/lang/Object;

    array-length v3, v2

    if-ge p3, v3, :cond_a

    .line 37
    aget-object v8, v2, p3

    goto :goto_5

    .line 38
    :cond_9
    iget-object p3, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    const-string v2, "value looks like quoted Enum index, but `MapperFeature.ALLOW_COERCION_OF_SCALARS` prevents use"

    new-array v3, v1, [Ljava/lang/Object;

    .line 39
    invoke-virtual {p2, p3, v0, v2, v3}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    throw v8

    .line 40
    :catch_0
    :cond_a
    iget-object p3, p0, Le/k/a/c/d0/z/k;->e:Ljava/lang/Enum;

    if-eqz p3, :cond_b

    sget-object p3, Le/k/a/c/h;->A:Le/k/a/c/h;

    .line 41
    invoke-virtual {p2, p3}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 42
    iget-object v8, p0, Le/k/a/c/d0/z/k;->e:Ljava/lang/Enum;

    goto :goto_5

    .line 43
    :cond_b
    sget-object p3, Le/k/a/c/h;->z:Le/k/a/c/h;

    invoke-virtual {p2, p3}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result p3

    if-nez p3, :cond_e

    .line 44
    iget-object p3, p0, Le/k/a/c/d0/z/b0;->a:Ljava/lang/Class;

    new-array v2, v7, [Ljava/lang/Object;

    .line 45
    iget-object v3, p1, Le/k/a/c/n0/h;->c:[Ljava/lang/Object;

    array-length v3, v3

    .line 46
    new-instance v4, Ljava/util/ArrayList;

    shr-int/lit8 v5, v3, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v1

    :goto_4
    if-ge v5, v3, :cond_d

    .line 47
    iget-object v6, p1, Le/k/a/c/n0/h;->c:[Ljava/lang/Object;

    aget-object v6, v6, v5

    if-eqz v6, :cond_c

    .line 48
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v5, v5, 0x2

    goto :goto_4

    :cond_d
    aput-object v4, v2, v1

    const-string p1, "not one of the values accepted for Enum class: %s"

    .line 49
    invoke-virtual {p2, p3, v0, p1, v2}, Le/k/a/c/g;->N(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v8

    :cond_e
    :goto_5
    return-object v8

    :cond_f
    return-object v0
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->i:Le/k/a/c/m0/f;

    return-object v0
.end method
