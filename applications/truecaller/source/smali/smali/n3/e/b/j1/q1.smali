.class public final synthetic Ln3/e/b/j1/q1;
.super Ljava/lang/Object;
.source "UseCaseConfig.java"


# direct methods
.method public static a(Ln3/e/b/j1/r1;Ln3/e/b/m0;)Ln3/e/b/m0;
    .locals 1
    .param p0, "_this"    # Ln3/e/b/j1/r1;

    .line 1
    sget-object p1, Ln3/e/b/j1/r1;->m:Ln3/e/b/j1/j0$a;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Ln3/e/b/j1/i1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/e/b/m0;

    return-object p1
.end method

.method public static b(Ln3/e/b/j1/r1;Ln3/e/b/j1/j1;)Ln3/e/b/j1/j1;
    .locals 1
    .param p0, "_this"    # Ln3/e/b/j1/r1;

    .line 1
    sget-object p1, Ln3/e/b/j1/r1;->h:Ln3/e/b/j1/j0$a;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Ln3/e/b/j1/i1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/e/b/j1/j1;

    return-object p1
.end method

.method public static c(Ln3/e/b/j1/r1;Ln3/e/b/j1/j1$d;)Ln3/e/b/j1/j1$d;
    .locals 1
    .param p0, "_this"    # Ln3/e/b/j1/r1;

    .line 1
    sget-object p1, Ln3/e/b/j1/r1;->j:Ln3/e/b/j1/j0$a;

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Ln3/e/b/j1/i1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/e/b/j1/j1$d;

    return-object p1
.end method

.method public static d(Ln3/e/b/j1/r1;I)I
    .locals 1
    .param p0, "_this"    # Ln3/e/b/j1/r1;

    .line 1
    sget-object v0, Ln3/e/b/j1/r1;->l:Ln3/e/b/j1/j0$a;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ln3/e/b/j1/i1;->b(Ln3/e/b/j1/j0$a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method
