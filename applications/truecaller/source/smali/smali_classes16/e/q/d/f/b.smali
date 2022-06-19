.class public final Le/q/d/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Le/q/d/e/d;Ljava/lang/String;Ljava/lang/String;)Le/q/d/e/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/q/d/e/d;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Le/q/d/e/b<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "root"

    invoke-static {p0, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "word"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Le/q/d/e/d;->a:Ljava/util/Map;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/q/d/e/a;

    const/4 p1, 0x0

    if-eqz p0, :cond_5

    const/4 v0, 0x0

    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_4

    .line 4
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz p0, :cond_3

    .line 5
    iget-boolean v4, p0, Le/q/d/e/a;->a:Z

    if-eqz v4, :cond_3

    .line 6
    iget-object v4, p0, Le/q/d/e/a;->c:Ljava/util/Map;

    .line 7
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 8
    invoke-static {v2}, Le/q/d/f/b;->f(C)Z

    move-result v4

    if-nez v4, :cond_1

    const/16 v4, 0x2e

    if-eq v2, v4, :cond_1

    const/16 v4, 0x20

    if-eq v2, v4, :cond_1

    const/16 v4, 0x2d

    if-eq v2, v4, :cond_1

    const/16 v4, 0x2c

    if-eq v2, v4, :cond_1

    const/16 v4, 0x2f

    if-eq v2, v4, :cond_1

    const/16 v4, 0x29

    if-eq v2, v4, :cond_1

    const/16 v4, 0x2b

    if-eq v2, v4, :cond_1

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_1

    const/16 v4, 0xd

    if-eq v2, v4, :cond_1

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1

    const/16 v4, 0x27

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    move v4, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v4, v3

    :goto_2
    if-eqz v4, :cond_3

    .line 9
    iget-object p0, p0, Le/q/d/e/a;->d:Ljava/lang/String;

    if-eqz p0, :cond_2

    .line 10
    new-instance p1, Le/q/d/e/b;

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Le/q/d/e/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p1

    :cond_3
    if-eqz p0, :cond_4

    .line 11
    iget-boolean v4, p0, Le/q/d/e/a;->b:Z

    if-eqz v4, :cond_4

    .line 12
    iget-object v4, p0, Le/q/d/e/a;->c:Ljava/util/Map;

    .line 13
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 14
    iget-object p0, p0, Le/q/d/e/a;->c:Ljava/util/Map;

    .line 15
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/q/d/e/a;

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    if-eqz p0, :cond_5

    .line 16
    iget-boolean v0, p0, Le/q/d/e/a;->a:Z

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-ne v1, p2, :cond_5

    .line 18
    iget-object p0, p0, Le/q/d/e/a;->d:Ljava/lang/String;

    if-eqz p0, :cond_5

    .line 19
    new-instance p1, Le/q/d/e/b;

    sub-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Le/q/d/e/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-object p1
.end method

.method public static final b(C)Z
    .locals 2

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-ge v0, p0, :cond_2

    :cond_0
    const/16 v0, 0x7a

    const/16 v1, 0x61

    if-le v1, p0, :cond_1

    goto :goto_0

    :cond_1
    if-lt v0, p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final c(C)Z
    .locals 1

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final d(CC)Z
    .locals 3

    const/16 v0, 0x31

    const/16 v1, 0x30

    if-eq p0, v1, :cond_0

    if-ne p0, v0, :cond_1

    .line 1
    :cond_0
    invoke-static {p1}, Le/q/d/f/b;->f(C)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    const/16 v2, 0x32

    if-ne p0, v2, :cond_2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_3

    const/16 p0, 0x33

    if-eq p1, p0, :cond_3

    const/16 p0, 0x34

    if-ne p1, p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final e(C)Z
    .locals 1

    const/16 v0, 0x61

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7a

    if-lt v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final f(C)Z
    .locals 1

    const/16 v0, 0x30

    if-le v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x39

    if-lt v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final g(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 3
    invoke-static {v4}, Le/q/d/f/b;->f(C)Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public static final h(C)Z
    .locals 1

    const/16 v0, 0x3a

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
