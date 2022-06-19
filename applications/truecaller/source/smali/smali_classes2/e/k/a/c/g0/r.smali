.class public Le/k/a/c/g0/r;
.super Le/k/a/c/g0/t;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public static final b:Le/k/a/c/g0/q;

.field public static final c:Le/k/a/c/g0/q;

.field public static final d:Le/k/a/c/g0/q;

.field public static final e:Le/k/a/c/g0/q;

.field public static final f:Le/k/a/c/g0/q;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/lang/Object;

    .line 2
    const-class v2, Le/k/a/c/l;

    sput-object v2, Le/k/a/c/g0/r;->a:Ljava/lang/Class;

    .line 3
    invoke-static {v0}, Le/k/a/c/m0/l;->U(Ljava/lang/Class;)Le/k/a/c/m0/l;

    move-result-object v2

    .line 4
    sget-object v3, Le/k/a/c/g0/d;->i:Ljava/lang/Class;

    .line 5
    new-instance v3, Le/k/a/c/g0/c;

    invoke-direct {v3, v0}, Le/k/a/c/g0/c;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 6
    invoke-static {v0, v2, v3}, Le/k/a/c/g0/q;->i(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/g0/c;)Le/k/a/c/g0/q;

    move-result-object v2

    sput-object v2, Le/k/a/c/g0/r;->b:Le/k/a/c/g0/q;

    .line 7
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Le/k/a/c/m0/l;->U(Ljava/lang/Class;)Le/k/a/c/m0/l;

    move-result-object v3

    .line 8
    new-instance v4, Le/k/a/c/g0/c;

    invoke-direct {v4, v2}, Le/k/a/c/g0/c;-><init>(Ljava/lang/Class;)V

    .line 9
    invoke-static {v0, v3, v4}, Le/k/a/c/g0/q;->i(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/g0/c;)Le/k/a/c/g0/q;

    move-result-object v2

    sput-object v2, Le/k/a/c/g0/r;->c:Le/k/a/c/g0/q;

    .line 10
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Le/k/a/c/m0/l;->U(Ljava/lang/Class;)Le/k/a/c/m0/l;

    move-result-object v3

    .line 11
    new-instance v4, Le/k/a/c/g0/c;

    invoke-direct {v4, v2}, Le/k/a/c/g0/c;-><init>(Ljava/lang/Class;)V

    .line 12
    invoke-static {v0, v3, v4}, Le/k/a/c/g0/q;->i(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/g0/c;)Le/k/a/c/g0/q;

    move-result-object v2

    sput-object v2, Le/k/a/c/g0/r;->d:Le/k/a/c/g0/q;

    .line 13
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Le/k/a/c/m0/l;->U(Ljava/lang/Class;)Le/k/a/c/m0/l;

    move-result-object v3

    .line 14
    new-instance v4, Le/k/a/c/g0/c;

    invoke-direct {v4, v2}, Le/k/a/c/g0/c;-><init>(Ljava/lang/Class;)V

    .line 15
    invoke-static {v0, v3, v4}, Le/k/a/c/g0/q;->i(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/g0/c;)Le/k/a/c/g0/q;

    move-result-object v2

    sput-object v2, Le/k/a/c/g0/r;->e:Le/k/a/c/g0/q;

    .line 16
    invoke-static {v1}, Le/k/a/c/m0/l;->U(Ljava/lang/Class;)Le/k/a/c/m0/l;

    move-result-object v2

    .line 17
    new-instance v3, Le/k/a/c/g0/c;

    invoke-direct {v3, v1}, Le/k/a/c/g0/c;-><init>(Ljava/lang/Class;)V

    .line 18
    invoke-static {v0, v2, v3}, Le/k/a/c/g0/q;->i(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/g0/c;)Le/k/a/c/g0/q;

    move-result-object v0

    sput-object v0, Le/k/a/c/g0/r;->f:Le/k/a/c/g0/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/g0/t;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/c0/k;Le/k/a/c/i;)Le/k/a/c/g0/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/g0/q;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Le/k/a/c/i;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Le/k/a/c/i;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p2, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 3
    invoke-static {v0}, Le/k/a/c/n0/g;->x(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Ljava/util/Map;

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0, p1, p2, p1}, Le/k/a/c/g0/r;->c(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/g0/t$a;)Le/k/a/c/g0/c;

    move-result-object v0

    .line 7
    invoke-static {p1, p2, v0}, Le/k/a/c/g0/q;->i(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/g0/c;)Le/k/a/c/g0/q;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Le/k/a/c/c0/k;Le/k/a/c/i;)Le/k/a/c/g0/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/i;",
            ")",
            "Le/k/a/c/g0/q;"
        }
    .end annotation

    .line 1
    iget-object v0, p2, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_0

    .line 4
    sget-object p1, Le/k/a/c/g0/r;->d:Le/k/a/c/g0/q;

    return-object p1

    .line 5
    :cond_0
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_1

    .line 6
    sget-object p1, Le/k/a/c/g0/r;->e:Le/k/a/c/g0/q;

    return-object p1

    .line 7
    :cond_1
    sget-object p1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p1, :cond_8

    .line 8
    sget-object p1, Le/k/a/c/g0/r;->c:Le/k/a/c/g0/q;

    return-object p1

    .line 9
    :cond_2
    invoke-static {v0}, Le/k/a/c/n0/g;->x(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 10
    const-class p1, Ljava/lang/Object;

    if-ne v0, p1, :cond_3

    .line 11
    sget-object p1, Le/k/a/c/g0/r;->f:Le/k/a/c/g0/q;

    return-object p1

    .line 12
    :cond_3
    const-class p1, Ljava/lang/String;

    if-ne v0, p1, :cond_4

    .line 13
    sget-object p1, Le/k/a/c/g0/r;->b:Le/k/a/c/g0/q;

    return-object p1

    .line 14
    :cond_4
    const-class p1, Ljava/lang/Integer;

    if-ne v0, p1, :cond_5

    .line 15
    sget-object p1, Le/k/a/c/g0/r;->d:Le/k/a/c/g0/q;

    return-object p1

    .line 16
    :cond_5
    const-class p1, Ljava/lang/Long;

    if-ne v0, p1, :cond_6

    .line 17
    sget-object p1, Le/k/a/c/g0/r;->e:Le/k/a/c/g0/q;

    return-object p1

    .line 18
    :cond_6
    const-class p1, Ljava/lang/Boolean;

    if-ne v0, p1, :cond_8

    .line 19
    sget-object p1, Le/k/a/c/g0/r;->c:Le/k/a/c/g0/q;

    return-object p1

    .line 20
    :cond_7
    sget-object v1, Le/k/a/c/g0/r;->a:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 21
    sget-object v1, Le/k/a/c/g0/d;->i:Ljava/lang/Class;

    .line 22
    new-instance v1, Le/k/a/c/g0/c;

    invoke-direct {v1, v0}, Le/k/a/c/g0/c;-><init>(Ljava/lang/Class;)V

    .line 23
    invoke-static {p1, p2, v1}, Le/k/a/c/g0/q;->i(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/g0/c;)Le/k/a/c/g0/q;

    move-result-object p1

    return-object p1

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/g0/t$a;)Le/k/a/c/g0/c;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/i;",
            "Le/k/a/c/g0/t$a;",
            ")",
            "Le/k/a/c/g0/c;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1
    sget-object v2, Le/k/a/c/g0/d;->i:Ljava/lang/Class;

    .line 2
    invoke-virtual/range {p2 .. p2}, Le/k/a/c/i;->w()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    .line 3
    iget-object v2, v1, Le/k/a/c/i;->a:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 4
    move-object v5, v0

    check-cast v5, Le/k/a/c/c0/l;

    invoke-virtual {v5, v2}, Le/k/a/c/c0/l;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    if-eqz v2, :cond_2

    .line 5
    iget-object v0, v1, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 6
    new-instance v1, Le/k/a/c/g0/c;

    invoke-direct {v1, v0}, Le/k/a/c/g0/c;-><init>(Ljava/lang/Class;)V

    goto :goto_4

    .line 7
    :cond_2
    new-instance v2, Le/k/a/c/g0/d;

    move-object/from16 v5, p3

    invoke-direct {v2, v0, v1, v5}, Le/k/a/c/g0/d;-><init>(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/g0/t$a;)V

    .line 8
    new-instance v8, Ljava/util/ArrayList;

    const/16 v0, 0x8

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    iget-object v0, v2, Le/k/a/c/g0/d;->e:Le/k/a/c/i;

    const-class v1, Ljava/lang/Object;

    .line 10
    iget-object v5, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    if-ne v5, v1, :cond_3

    goto :goto_2

    :cond_3
    move v3, v4

    :goto_2
    if-nez v3, :cond_5

    .line 11
    invoke-virtual {v0}, Le/k/a/c/i;->D()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 12
    iget-object v0, v2, Le/k/a/c/g0/d;->e:Le/k/a/c/i;

    invoke-static {v0, v8, v4}, Le/k/a/c/g0/d;->d(Le/k/a/c/i;Ljava/util/List;Z)V

    goto :goto_3

    .line 13
    :cond_4
    iget-object v0, v2, Le/k/a/c/g0/d;->e:Le/k/a/c/i;

    invoke-static {v0, v8, v4}, Le/k/a/c/g0/d;->e(Le/k/a/c/i;Ljava/util/List;Z)V

    .line 14
    :cond_5
    :goto_3
    new-instance v1, Le/k/a/c/g0/c;

    iget-object v6, v2, Le/k/a/c/g0/d;->e:Le/k/a/c/i;

    iget-object v7, v2, Le/k/a/c/g0/d;->f:Ljava/lang/Class;

    iget-object v9, v2, Le/k/a/c/g0/d;->g:Ljava/lang/Class;

    .line 15
    invoke-virtual {v2, v8}, Le/k/a/c/g0/d;->g(Ljava/util/List;)Le/k/a/c/n0/b;

    move-result-object v10

    iget-object v11, v2, Le/k/a/c/g0/d;->d:Le/k/a/c/m0/n;

    iget-object v12, v2, Le/k/a/c/g0/d;->b:Le/k/a/c/b;

    iget-object v13, v2, Le/k/a/c/g0/d;->c:Le/k/a/c/g0/t$a;

    iget-object v0, v2, Le/k/a/c/g0/d;->a:Le/k/a/c/c0/k;

    .line 16
    iget-object v0, v0, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 17
    iget-object v14, v0, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 18
    iget-boolean v15, v2, Le/k/a/c/g0/d;->h:Z

    move-object v5, v1

    invoke-direct/range {v5 .. v15}, Le/k/a/c/g0/c;-><init>(Le/k/a/c/i;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Le/k/a/c/n0/b;Le/k/a/c/m0/n;Le/k/a/c/b;Le/k/a/c/g0/t$a;Le/k/a/c/m0/o;Z)V

    :goto_4
    return-object v1
.end method

.method public d(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/g0/t$a;Z)Le/k/a/c/g0/b0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Le/k/a/c/i;",
            "Le/k/a/c/g0/t$a;",
            "Z)",
            "Le/k/a/c/g0/b0;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Le/k/a/c/g0/r;->c(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/g0/t$a;)Le/k/a/c/g0/c;

    move-result-object p3

    .line 2
    invoke-virtual {p2}, Le/k/a/c/i;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 4
    iget-object v0, v0, Le/k/a/c/c0/a;->e:Le/k/a/c/g0/a$a;

    .line 5
    check-cast v0, Le/k/a/c/g0/w$b;

    .line 6
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v0, Le/k/a/c/g0/w$c;

    invoke-direct {v0, p1, p3}, Le/k/a/c/g0/w$c;-><init>(Le/k/a/c/c0/k;Le/k/a/c/g0/c;)V

    move-object v5, v0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 9
    iget-object v0, v0, Le/k/a/c/c0/a;->e:Le/k/a/c/g0/a$a;

    .line 10
    check-cast v0, Le/k/a/c/g0/w$b;

    .line 11
    new-instance v7, Le/k/a/c/g0/w;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v3, "set"

    const-string v4, "get"

    const-string v5, "is"

    move-object v0, v7

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v6}, Le/k/a/c/g0/w;-><init>(Le/k/a/c/c0/k;Le/k/a/c/g0/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Le/k/a/c/g0/w$a;)V

    move-object v5, v7

    .line 12
    :goto_0
    new-instance v6, Le/k/a/c/g0/b0;

    move-object v0, v6

    move-object v1, p1

    move v2, p4

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Le/k/a/c/g0/b0;-><init>(Le/k/a/c/c0/k;ZLe/k/a/c/i;Le/k/a/c/g0/c;Le/k/a/c/g0/a;)V

    return-object v6
.end method
