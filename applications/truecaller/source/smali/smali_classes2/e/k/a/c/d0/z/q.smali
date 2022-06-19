.class public Le/k/a/c/d0/z/q;
.super Le/k/a/c/d0/w$a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Le/k/a/b/h;

    invoke-direct {p0, v0}, Le/k/a/c/d0/w$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public static E(Ljava/lang/String;Le/k/a/c/i;I)Le/k/a/c/d0/k;
    .locals 9

    .line 1
    invoke-static {p0}, Le/k/a/c/v;->a(Ljava/lang/String;)Le/k/a/c/v;

    move-result-object v0

    sget-object v8, Le/k/a/c/u;->h:Le/k/a/c/u;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    move v6, p2

    invoke-static/range {v0 .. v8}, Le/k/a/c/d0/k;->I(Le/k/a/c/v;Le/k/a/c/i;Le/k/a/c/v;Le/k/a/c/j0/e;Le/k/a/c/n0/b;Le/k/a/c/g0/m;ILe/k/a/a/b$a;Le/k/a/c/u;)Le/k/a/c/d0/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public C(Le/k/a/c/f;)[Le/k/a/c/d0/u;
    .locals 6

    .line 1
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Le/k/a/c/c0/k;->d(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v0

    .line 2
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Le/k/a/c/c0/k;->d(Ljava/lang/Class;)Le/k/a/c/i;

    move-result-object v1

    const/4 v2, 0x5

    new-array v2, v2, [Le/k/a/c/d0/u;

    .line 3
    const-class v3, Ljava/lang/Object;

    .line 4
    iget-object p1, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 5
    iget-object p1, p1, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 6
    sget-object v4, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v3, v4}, Le/k/a/c/m0/o;->b(Le/k/a/c/m0/c;Ljava/lang/reflect/Type;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object p1

    const-string v3, "sourceRef"

    const/4 v4, 0x0

    .line 7
    invoke-static {v3, p1, v4}, Le/k/a/c/d0/z/q;->E(Ljava/lang/String;Le/k/a/c/i;I)Le/k/a/c/d0/k;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "byteOffset"

    const/4 v3, 0x1

    .line 8
    invoke-static {p1, v1, v3}, Le/k/a/c/d0/z/q;->E(Ljava/lang/String;Le/k/a/c/i;I)Le/k/a/c/d0/k;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "charOffset"

    const/4 v3, 0x2

    .line 9
    invoke-static {p1, v1, v3}, Le/k/a/c/d0/z/q;->E(Ljava/lang/String;Le/k/a/c/i;I)Le/k/a/c/d0/k;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "lineNr"

    const/4 v1, 0x3

    .line 10
    invoke-static {p1, v0, v1}, Le/k/a/c/d0/z/q;->E(Ljava/lang/String;Le/k/a/c/i;I)Le/k/a/c/d0/k;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "columnNr"

    const/4 v1, 0x4

    .line 11
    invoke-static {p1, v0, v1}, Le/k/a/c/d0/z/q;->E(Ljava/lang/String;Le/k/a/c/i;I)Le/k/a/c/d0/k;

    move-result-object p1

    aput-object p1, v2, v1

    return-object v2
.end method

.method public g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public s(Le/k/a/c/g;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    new-instance p1, Le/k/a/b/h;

    const/4 v0, 0x0

    aget-object v1, p2, v0

    const/4 v2, 0x1

    aget-object v2, p2, v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    move-wide v5, v3

    goto :goto_0

    .line 2
    :cond_0
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    :goto_0
    const/4 v2, 0x2

    .line 3
    aget-object v2, p2, v2

    if-nez v2, :cond_1

    move-wide v7, v3

    goto :goto_1

    .line 4
    :cond_1
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    move-wide v7, v2

    :goto_1
    const/4 v2, 0x3

    .line 5
    aget-object v2, p2, v2

    if-nez v2, :cond_2

    move v9, v0

    goto :goto_2

    .line 6
    :cond_2
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    move v9, v2

    :goto_2
    const/4 v2, 0x4

    .line 7
    aget-object p2, p2, v2

    if-nez p2, :cond_3

    move p2, v0

    goto :goto_3

    .line 8
    :cond_3
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    :goto_3
    move-object v0, p1

    move-wide v2, v5

    move-wide v4, v7

    move v6, v9

    move v7, p2

    .line 9
    invoke-direct/range {v0 .. v7}, Le/k/a/b/h;-><init>(Ljava/lang/Object;JJII)V

    return-object p1
.end method
