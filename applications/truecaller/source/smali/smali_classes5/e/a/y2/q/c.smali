.class public final Le/a/y2/q/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;)Ln3/m0/s;
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Le/a/y2/q/c;->c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;)Ln3/m0/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/m0/y;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ls1/k<",
            "+",
            "Ln3/m0/a;",
            "Lw3/b/a/i;",
            ">;",
            "Ln3/m0/f;",
            ")",
            "Ln3/m0/s;"
        }
    .end annotation

    const-string v0, "$this$scheduleOneOffWorkAction"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backoffConfig"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p3, p4, p2, p0}, Lcom/truecaller/background_work/StandaloneActionWorker;->s(Ljava/lang/String;Ls1/k;Ln3/m0/f;Landroid/content/Context;Ln3/m0/y;)Ln3/m0/s;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;I)Ln3/m0/s;
    .locals 0

    and-int/lit8 p4, p5, 0x4

    if-eqz p4, :cond_0

    .line 1
    invoke-static {}, Le/m/d/y/n;->g0()Ls1/k;

    move-result-object p3

    :cond_0
    and-int/lit8 p4, p5, 0x8

    const/4 p4, 0x0

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Le/a/y2/q/c;->b(Ln3/m0/y;Ljava/lang/String;Landroid/content/Context;Ls1/k;Ln3/m0/f;)Ln3/m0/s;

    move-result-object p0

    return-object p0
.end method
