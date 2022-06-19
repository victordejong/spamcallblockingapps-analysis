.class public final synthetic Ln3/e/b/j1/p0;
.super Ljava/lang/Object;
.source "ImageOutputConfig.java"


# direct methods
.method public static a(Ln3/e/b/j1/q0;Landroid/util/Size;)Landroid/util/Size;
    .locals 1
    .param p0, "_this"    # Ln3/e/b/j1/q0;

    .line 1
    sget-object p1, Ln3/e/b/j1/q0;->e:Ln3/e/b/j1/j0$a;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Ln3/e/b/j1/i1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    return-object p1
.end method

.method public static b(Ln3/e/b/j1/q0;Landroid/util/Size;)Landroid/util/Size;
    .locals 1
    .param p0, "_this"    # Ln3/e/b/j1/q0;

    .line 1
    sget-object p1, Ln3/e/b/j1/q0;->f:Ln3/e/b/j1/j0$a;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Ln3/e/b/j1/i1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    return-object p1
.end method

.method public static c(Ln3/e/b/j1/q0;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "_this"    # Ln3/e/b/j1/q0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/util/Size;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object p1, Ln3/e/b/j1/q0;->g:Ln3/e/b/j1/j0$a;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Ln3/e/b/j1/i1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public static d(Ln3/e/b/j1/q0;)I
    .locals 1
    .param p0, "_this"    # Ln3/e/b/j1/q0;

    .line 1
    sget-object v0, Ln3/e/b/j1/q0;->b:Ln3/e/b/j1/j0$a;

    invoke-interface {p0, v0}, Ln3/e/b/j1/i1;->a(Ln3/e/b/j1/j0$a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static e(Ln3/e/b/j1/q0;Landroid/util/Size;)Landroid/util/Size;
    .locals 1
    .param p0, "_this"    # Ln3/e/b/j1/q0;

    .line 1
    sget-object p1, Ln3/e/b/j1/q0;->d:Ln3/e/b/j1/j0$a;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Ln3/e/b/j1/i1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Size;

    return-object p1
.end method

.method public static f(Ln3/e/b/j1/q0;I)I
    .locals 1
    .param p0, "_this"    # Ln3/e/b/j1/q0;

    .line 1
    sget-object v0, Ln3/e/b/j1/q0;->c:Ln3/e/b/j1/j0$a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ln3/e/b/j1/i1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public static g(Ln3/e/b/j1/q0;)Z
    .locals 1
    .param p0, "_this"    # Ln3/e/b/j1/q0;

    .line 1
    sget-object v0, Ln3/e/b/j1/q0;->b:Ln3/e/b/j1/j0$a;

    invoke-interface {p0, v0}, Ln3/e/b/j1/i1;->c(Ln3/e/b/j1/j0$a;)Z

    move-result v0

    return v0
.end method
