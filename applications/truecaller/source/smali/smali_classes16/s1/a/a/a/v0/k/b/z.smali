.class public final Ls1/a/a/a/v0/k/b/z;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ls1/a/a/a/v0/e/j;)Ls1/a/a/a/v0/b/b$a;
    .locals 2

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/b$a;->a:Ls1/a/a/a/v0/b/b$a;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    sget-object v0, Ls1/a/a/a/v0/b/b$a;->d:Ls1/a/a/a/v0/b/b$a;

    goto :goto_0

    .line 3
    :cond_2
    sget-object v0, Ls1/a/a/a/v0/b/b$a;->c:Ls1/a/a/a/v0/b/b$a;

    goto :goto_0

    .line 4
    :cond_3
    sget-object v0, Ls1/a/a/a/v0/b/b$a;->b:Ls1/a/a/a/v0/b/b$a;

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static final b(Ls1/a/a/a/v0/e/k;)Ls1/a/a/a/v0/b/y;
    .locals 2

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/y;->a:Ls1/a/a/a/v0/b/y;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_4

    const/4 v1, 0x1

    if-eq p0, v1, :cond_3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    sget-object v0, Ls1/a/a/a/v0/b/y;->b:Ls1/a/a/a/v0/b/y;

    goto :goto_0

    .line 3
    :cond_2
    sget-object v0, Ls1/a/a/a/v0/b/y;->d:Ls1/a/a/a/v0/b/y;

    goto :goto_0

    .line 4
    :cond_3
    sget-object v0, Ls1/a/a/a/v0/b/y;->c:Ls1/a/a/a/v0/b/y;

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static final c(Ls1/a/a/a/v0/e/x;)Ls1/a/a/a/v0/b/r;
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_6

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    .line 2
    :goto_0
    sget-object p0, Ls1/a/a/a/v0/b/q;->a:Ls1/a/a/a/v0/b/r;

    goto :goto_1

    .line 3
    :cond_1
    sget-object p0, Ls1/a/a/a/v0/b/q;->f:Ls1/a/a/a/v0/b/r;

    goto :goto_1

    .line 4
    :cond_2
    sget-object p0, Ls1/a/a/a/v0/b/q;->b:Ls1/a/a/a/v0/b/r;

    goto :goto_1

    .line 5
    :cond_3
    sget-object p0, Ls1/a/a/a/v0/b/q;->e:Ls1/a/a/a/v0/b/r;

    goto :goto_1

    .line 6
    :cond_4
    sget-object p0, Ls1/a/a/a/v0/b/q;->c:Ls1/a/a/a/v0/b/r;

    goto :goto_1

    .line 7
    :cond_5
    sget-object p0, Ls1/a/a/a/v0/b/q;->a:Ls1/a/a/a/v0/b/r;

    goto :goto_1

    .line 8
    :cond_6
    sget-object p0, Ls1/a/a/a/v0/b/q;->d:Ls1/a/a/a/v0/b/r;

    :goto_1
    const-string v0, "when (visibility) {\n    \u2026isibilities.PRIVATE\n    }"

    .line 9
    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
