.class public Le/k/a/c/d0/z/m0$a;
.super Le/k/a/c/d0/z/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/d0/z/m0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/b0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final e:Le/k/a/c/d0/z/m0$a;


# instance fields
.field public final d:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/d0/z/m0$a;

    invoke-direct {v0}, Le/k/a/c/d0/z/m0$a;-><init>()V

    sput-object v0, Le/k/a/c/d0/z/m0$a;->e:Le/k/a/c/d0/z/m0$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Le/k/a/c/d0/z/b0;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/k/a/c/d0/z/m0$a;->d:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 3
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Le/k/a/c/d0/z/b0;-><init>(Ljava/lang/Class;)V

    .line 4
    iput-boolean p1, p0, Le/k/a/c/d0/z/m0$a;->d:Z

    return-void
.end method


# virtual methods
.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    packed-switch v1, :pswitch_data_0

    .line 2
    :pswitch_0
    const-class v1, Ljava/lang/Object;

    invoke-virtual {p2, v1, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 3
    :pswitch_1
    invoke-virtual {p1}, Le/k/a/b/j;->p0()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_2
    return-object v2

    .line 4
    :pswitch_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 5
    :pswitch_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 6
    :pswitch_5
    sget-object v1, Le/k/a/c/h;->c:Le/k/a/c/h;

    invoke-virtual {p2, v1}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p1}, Le/k/a/b/j;->k0()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p1}, Le/k/a/b/j;->F0()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 9
    :pswitch_6
    sget v1, Le/k/a/c/d0/z/b0;->c:I

    invoke-virtual {p2, v1}, Le/k/a/c/g;->O(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/b0;->y(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 11
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->F0()Ljava/lang/Number;

    move-result-object v0

    return-object v0

    .line 12
    :pswitch_7
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 13
    :pswitch_8
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v1

    .line 14
    sget-object v2, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne v1, v2, :cond_3

    .line 15
    sget-object v1, Le/k/a/c/h;->f:Le/k/a/c/h;

    invoke-virtual {p2, v1}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    sget-object v0, Le/k/a/c/d0/z/m0;->k:[Ljava/lang/Object;

    return-object v0

    .line 17
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 18
    :cond_3
    sget-object v1, Le/k/a/c/h;->f:Le/k/a/c/h;

    invoke-virtual {p2, v1}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    .line 19
    invoke-virtual {p2}, Le/k/a/c/g;->U()Le/k/a/c/n0/u;

    move-result-object v1

    .line 20
    invoke-virtual {v1}, Le/k/a/c/n0/u;->g()[Ljava/lang/Object;

    move-result-object v2

    move v3, v4

    .line 21
    :goto_0
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0$a;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v5

    .line 22
    array-length v6, v2

    if-lt v3, v6, :cond_4

    .line 23
    invoke-virtual {v1, v2}, Le/k/a/c/n0/u;->c([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move v3, v4

    :cond_4
    add-int/lit8 v6, v3, 0x1

    .line 24
    aput-object v5, v2, v3

    .line 25
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v3

    sget-object v5, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne v3, v5, :cond_5

    .line 26
    iget v0, v1, Le/k/a/c/n0/u;->c:I

    add-int/2addr v0, v6

    .line 27
    new-array v3, v0, [Ljava/lang/Object;

    .line 28
    invoke-virtual {v1, v3, v0, v2, v6}, Le/k/a/c/n0/u;->a(Ljava/lang/Object;I[Ljava/lang/Object;I)V

    .line 29
    invoke-virtual {v1}, Le/k/a/c/n0/u;->b()V

    return-object v3

    :cond_5
    move v3, v6

    goto :goto_0

    .line 30
    :cond_6
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0$a;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v5

    if-ne v5, v2, :cond_7

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 34
    :cond_7
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0$a;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v5

    .line 35
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v6

    if-ne v6, v2, :cond_8

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 39
    :cond_8
    invoke-virtual {p2}, Le/k/a/c/g;->U()Le/k/a/c/n0/u;

    move-result-object v2

    .line 40
    invoke-virtual {v2}, Le/k/a/c/n0/u;->g()[Ljava/lang/Object;

    move-result-object v6

    .line 41
    aput-object v1, v6, v4

    const/4 v1, 0x1

    .line 42
    aput-object v5, v6, v1

    move v5, v3

    .line 43
    :goto_1
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0$a;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v7

    add-int/2addr v3, v1

    .line 44
    array-length v8, v6

    if-lt v5, v8, :cond_9

    .line 45
    invoke-virtual {v2, v6}, Le/k/a/c/n0/u;->c([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    move v5, v4

    :cond_9
    add-int/lit8 v8, v5, 0x1

    .line 46
    aput-object v7, v6, v5

    .line 47
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v5

    sget-object v7, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne v5, v7, :cond_a

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 49
    invoke-virtual {v2, v6, v8, v0}, Le/k/a/c/n0/u;->d([Ljava/lang/Object;ILjava/util/List;)V

    :goto_2
    return-object v0

    :cond_a
    move v5, v8

    goto :goto_1

    .line 50
    :pswitch_9
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-object v0

    .line 51
    :pswitch_a
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v1

    .line 52
    sget-object v2, Le/k/a/b/m;->k:Le/k/a/b/m;

    if-ne v1, v2, :cond_b

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-object v0

    .line 54
    :cond_b
    :pswitch_b
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 56
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0$a;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v6

    .line 57
    invoke-virtual {p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    .line 58
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 59
    invoke-virtual {v0, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 60
    :cond_c
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 61
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0$a;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v7

    .line 62
    invoke-virtual {p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_d

    .line 63
    new-instance v9, Ljava/util/LinkedHashMap;

    const/4 v2, 0x4

    invoke-direct {v9, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 64
    invoke-virtual {v9, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {v9, v1, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_e

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v9

    .line 66
    invoke-virtual/range {v1 .. v8}, Le/k/a/c/d0/z/m0$a;->m0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_3

    .line 67
    :cond_d
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    .line 68
    invoke-virtual {v9, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {v9, v1, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v9

    .line 70
    invoke-virtual/range {v1 .. v8}, Le/k/a/c/d0/z/m0$a;->m0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_e
    :goto_3
    move-object v0, v9

    goto :goto_4

    :cond_f
    move-object v5, v8

    .line 71
    :cond_10
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 72
    :try_start_0
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0$a;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    invoke-virtual {v9, v5, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 74
    invoke-virtual {p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v9

    .line 75
    invoke-virtual/range {v1 .. v8}, Le/k/a/c/d0/z/m0$a;->m0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_3

    .line 76
    :cond_11
    invoke-virtual {p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_10

    goto :goto_3

    :goto_4
    return-object v0

    .line 77
    :goto_5
    throw v2

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 78
    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/k/a/c/d0/z/m0$a;->d:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0$a;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    .line 5
    sget-object v1, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne v0, v1, :cond_2

    return-object p3

    .line 6
    :cond_2
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_a

    .line 7
    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    .line 8
    :cond_3
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0$a;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v1

    sget-object v2, Le/k/a/b/m;->m:Le/k/a/b/m;

    if-ne v1, v2, :cond_3

    :cond_4
    return-object p3

    .line 10
    :cond_5
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    move-result-object v0

    .line 11
    sget-object v1, Le/k/a/b/m;->k:Le/k/a/b/m;

    if-ne v0, v1, :cond_6

    return-object p3

    .line 12
    :cond_6
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 13
    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    .line 14
    invoke-virtual {p1}, Le/k/a/b/j;->k()Ljava/lang/String;

    move-result-object v1

    .line 15
    :cond_7
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 16
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 17
    invoke-virtual {p0, p1, p2, v2}, Le/k/a/c/d0/z/m0$a;->e(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 18
    :cond_8
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0$a;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    if-eq v3, v2, :cond_9

    .line 19
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_9
    invoke-virtual {p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    return-object p3

    .line 21
    :cond_a
    :goto_1
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0$a;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/b/j;->q()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    const-class p3, Ljava/lang/Object;

    invoke-virtual {p2, p3, p1}, Le/k/a/c/g;->J(Ljava/lang/Class;Le/k/a/b/j;)Ljava/lang/Object;

    throw v1

    .line 3
    :pswitch_0
    invoke-virtual {p1}, Le/k/a/b/j;->p0()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_1
    return-object v1

    .line 4
    :pswitch_2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 5
    :pswitch_3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 6
    :pswitch_4
    sget-object p3, Le/k/a/c/h;->c:Le/k/a/c/h;

    invoke-virtual {p2, p3}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p1}, Le/k/a/b/j;->k0()Ljava/math/BigDecimal;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Le/k/a/b/j;->F0()Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_5
    sget-object p3, Le/k/a/c/h;->d:Le/k/a/c/h;

    invoke-virtual {p2, p3}, Le/k/a/c/g;->R(Le/k/a/c/h;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p1}, Le/k/a/b/j;->E()Ljava/math/BigInteger;

    move-result-object p1

    return-object p1

    .line 11
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->F0()Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_6
    invoke-virtual {p1}, Le/k/a/b/j;->U0()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 13
    :cond_2
    :pswitch_7
    invoke-virtual {p3, p1, p2}, Le/k/a/c/j0/e;->b(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public m0(Le/k/a/b/j;Le/k/a/c/g;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/b/j;",
            "Le/k/a/c/g;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/q;->c:Le/k/a/b/q;

    invoke-virtual {p2, v0}, Le/k/a/c/g;->Q(Le/k/a/b/q;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p3, p4, p5, p6}, Le/k/a/c/d0/z/m0$a;->n0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    if-eqz p7, :cond_2

    .line 3
    invoke-virtual {p1}, Le/k/a/b/j;->i2()Le/k/a/b/m;

    .line 4
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/z/m0$a;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p4

    .line 5
    invoke-interface {p3, p7, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_1

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, p3, p7, p5, p4}, Le/k/a/c/d0/z/m0$a;->n0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    :cond_1
    invoke-virtual {p1}, Le/k/a/b/j;->b2()Ljava/lang/String;

    move-result-object p7

    goto :goto_0

    :cond_2
    return-object p3
.end method

.method public final n0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p3, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p3

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public o()Le/k/a/c/m0/f;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/m0/f;->e:Le/k/a/c/m0/f;

    return-object v0
.end method

.method public p(Le/k/a/c/f;)Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-boolean p1, p0, Le/k/a/c/d0/z/m0$a;->d:Z

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
