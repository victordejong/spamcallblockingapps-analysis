.class public final Le/a/b0/q/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/q/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/b0/q/a0$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/f/a/j;

.field public final b:Le/m/f/a/p;

.field public final c:Le/a/e4/p;

.field public final d:Le/a/b0/e/l;


# direct methods
.method public constructor <init>(Le/m/f/a/j;Le/m/f/a/p;Le/a/e4/p;Le/a/b0/e/l;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "phoneNumberUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shortNumberInfo"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/q/a0;->a:Le/m/f/a/j;

    iput-object p2, p0, Le/a/b0/q/a0;->b:Le/m/f/a/p;

    iput-object p3, p0, Le/a/b0/q/a0;->c:Le/a/e4/p;

    iput-object p4, p0, Le/a/b0/q/a0;->d:Le/a/b0/e/l;

    return-void
.end method

.method public static r(Le/a/b0/q/a0;Ljava/lang/String;Le/m/f/a/j$c;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 2

    and-int/lit8 v0, p6, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p3, v1

    :cond_0
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_1

    move-object p4, v1

    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    const/4 p5, 0x0

    .line 1
    :cond_2
    invoke-virtual {p0, p1, p3, p4}, Le/a/b0/q/a0;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/b0/q/a0$a;

    move-result-object p1

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    .line 2
    iget-boolean p3, p1, Le/a/b0/q/a0$a;->b:Z

    if-nez p3, :cond_3

    goto :goto_0

    .line 3
    :cond_3
    iget-object p0, p0, Le/a/b0/q/a0;->a:Le/m/f/a/j;

    .line 4
    iget-object p1, p1, Le/a/b0/q/a0$a;->a:Le/m/f/a/o;

    .line 5
    invoke-virtual {p0, p1, p2}, Le/m/f/a/j;->i(Le/m/f/a/o;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Le/a/b0/q/a0$a;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Le/a/b0/q/a0;->a:Le/m/f/a/j;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p2, v1}, Lw3/c/a/a/a/h;->z(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object p1

    .line 2
    new-instance p2, Le/a/b0/q/a0$a;

    iget-object v0, p0, Le/a/b0/q/a0;->a:Le/m/f/a/j;

    .line 3
    invoke-virtual {v0, p1}, Le/m/f/a/j;->z(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, p1, v1}, Le/m/f/a/j;->H(Le/m/f/a/o;Ljava/lang/String;)Z

    move-result v0

    .line 5
    invoke-direct {p2, p1, v0}, Le/a/b0/q/a0$a;-><init>(Le/m/f/a/o;Z)V
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b0/q/a0;->c:Le/a/e4/p;

    invoke-interface {v0}, Le/a/e4/p;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multiSimManager.defaultSimToken"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryIso"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/b0/q/a0;->a(Ljava/lang/String;Ljava/lang/String;)Le/a/b0/q/a0$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    sget-object p2, Le/m/f/a/j$c;->b:Le/m/f/a/j$c;

    .line 3
    iget-boolean v0, p1, Le/a/b0/q/a0$a;->b:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/b0/q/a0;->a:Le/m/f/a/j;

    .line 5
    iget-object p1, p1, Le/a/b0/q/a0$a;->a:Le/m/f/a/o;

    .line 6
    invoke-virtual {v0, p1, p2}, Le/m/f/a/j;->i(Le/m/f/a/o;Le/m/f/a/j$c;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simToken"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v3, Le/m/f/a/j$c;->a:Le/m/f/a/j$c;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xa

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Le/a/b0/q/a0;->r(Le/a/b0/q/a0;Ljava/lang/String;Le/m/f/a/j$c;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simToken"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v3, Le/m/f/a/j$c;->a:Le/m/f/a/j$c;

    const/4 v4, 0x0

    const/4 v7, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move v6, p3

    .line 2
    invoke-static/range {v1 .. v7}, Le/a/b0/q/a0;->r(Le/a/b0/q/a0;Ljava/lang/String;Le/m/f/a/j$c;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;)Le/m/f/a/o;
    .locals 2

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, v1, v1}, Le/a/b0/q/a0;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/b0/q/a0$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object v1, p1, Le/a/b0/q/a0$a;->a:Le/m/f/a/o;

    :cond_1
    :goto_0
    return-object v1
.end method

.method public g(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Le/a/b0/q/a0;->f(Ljava/lang/String;)Le/m/f/a/o;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Le/a/b0/q/a0;->a:Le/m/f/a/j;

    invoke-virtual {v1, p1}, Le/m/f/a/j;->G(Le/m/f/a/o;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Le/a/b0/q/a0;->b:Le/m/f/a/p;

    invoke-virtual {v1, p1}, Le/m/f/a/p;->b(Le/m/f/a/o;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    move v0, p1

    :cond_1
    return v0
.end method

.method public h(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Le/m/f/a/o;",
            ">;"
        }
    .end annotation

    const-string v0, "numbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object p1

    .line 2
    sget-object v0, Le/a/b0/q/a0$c;->j:Le/a/b0/q/a0$c;

    invoke-static {p1, v0}, Ls1/e0/x;->f(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object p1

    .line 3
    new-instance v0, Le/a/b0/q/a0$d;

    invoke-direct {v0, p0}, Le/a/b0/q/a0$d;-><init>(Le/a/b0/q/a0;)V

    invoke-static {p1, v0}, Ls1/e0/x;->l(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ls1/e0/x;->r(Ls1/e0/k;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/String;)I
    .locals 3

    const-string v0, "numberStr"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/m/f/a/j$d;->l:Le/m/f/a/j$d;

    .line 2
    invoke-virtual {p0}, Le/a/b0/q/a0;->o()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4
    iget-object v2, p0, Le/a/b0/q/a0;->b:Le/m/f/a/p;

    invoke-virtual {v2, p1, v1}, Le/m/f/a/p;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    sget-object v0, Le/m/f/a/j$d;->c:Le/m/f/a/j$d;

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    iget-object v2, p0, Le/a/b0/q/a0;->a:Le/m/f/a/j;

    invoke-virtual {v2, p1, v1}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object p1

    .line 7
    iget-object v1, p0, Le/a/b0/q/a0;->a:Le/m/f/a/j;

    invoke-virtual {v1, p1}, Le/m/f/a/j;->w(Le/m/f/a/o;)Le/m/f/a/j$d;

    move-result-object p1

    const-string v1, "phoneNumberUtil.getNumberType(parsedNumber)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 9
    :cond_1
    :goto_0
    invoke-static {v0}, Le/a/b0/q/c0;->d(Le/m/f/a/j$d;)I

    move-result p1

    return p1
.end method

.method public j(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v3, Le/m/f/a/j$c;->a:Le/m/f/a/j$c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Le/a/b0/q/a0;->r(Le/a/b0/q/a0;Ljava/lang/String;Le/m/f/a/j$c;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/b0/q/a0;->a:Le/m/f/a/j;

    invoke-virtual {v1, p1, v0}, Le/m/f/a/j;->R(Ljava/lang/CharSequence;Ljava/lang/String;)Le/m/f/a/o;

    move-result-object p1

    invoke-virtual {v1, p1}, Le/m/f/a/j;->z(Le/m/f/a/o;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Le/m/f/a/e; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public l(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Le/a/b0/q/c0;->c(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v3, Le/m/f/a/j$c;->c:Le/m/f/a/j$c;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v1 .. v7}, Le/a/b0/q/a0;->r(Le/a/b0/q/a0;Ljava/lang/String;Le/m/f/a/j$c;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "number"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "simToken"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v3, Le/m/f/a/j$c;->a:Le/m/f/a/j$c;

    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p2

    .line 2
    invoke-static/range {v1 .. v7}, Le/a/b0/q/a0;->r(Le/a/b0/q/a0;Ljava/lang/String;Le/m/f/a/j$c;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b0/q/a0;->d:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const-string v0, "simToken"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b0/q/a0;->d:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->n()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    sget-object v3, Le/m/f/a/j$c;->a:Le/m/f/a/j$c;

    .line 3
    invoke-virtual {p0}, Le/a/b0/q/a0;->o()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/16 v7, 0x8

    move-object v1, p0

    move-object v5, p1

    .line 4
    invoke-static/range {v1 .. v7}, Le/a/b0/q/a0;->r(Le/a/b0/q/a0;Ljava/lang/String;Le/m/f/a/j$c;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Le/a/b0/q/a0$a;
    .locals 5

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0}, Le/a/b0/q/a0;->b()Ljava/lang/String;

    move-result-object p3

    .line 2
    :goto_0
    iget-object v0, p0, Le/a/b0/q/a0;->c:Le/a/e4/p;

    invoke-interface {v0, p3}, Le/a/e4/p;->r(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/b0/q/a0;->c:Le/a/e4/p;

    invoke-interface {v1, p3}, Le/a/e4/p;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 4
    invoke-virtual {p0}, Le/a/b0/q/a0;->o()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p3, v2, p2

    const/4 p3, 0x2

    aput-object v0, v2, p3

    const/4 p3, 0x3

    aput-object v1, v2, p3

    .line 5
    invoke-static {v2}, Ls1/a/a/a/v0/f/d;->k3([Ljava/lang/Object;)Ls1/e0/k;

    move-result-object p3

    .line 6
    invoke-static {p3}, Ls1/e0/x;->h(Ls1/e0/k;)Ls1/e0/k;

    move-result-object p3

    .line 7
    sget-object v0, Le/a/b0/q/a0$b;->j:Le/a/b0/q/a0$b;

    invoke-static {p3, v0}, Ls1/e0/x;->f(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object p3

    .line 8
    check-cast p3, Ls1/e0/h;

    .line 9
    new-instance v0, Ls1/e0/h$a;

    invoke-direct {v0, p3}, Ls1/e0/h$a;-><init>(Ls1/e0/h;)V

    const/4 p3, 0x0

    move-object v1, p3

    .line 10
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ls1/e0/h$a;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Ls1/e0/h$a;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 11
    iget-boolean v4, v1, Le/a/b0/q/a0$a;->b:Z

    .line 12
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    invoke-static {v4}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0, p1, v2}, Le/a/b0/q/a0;->a(Ljava/lang/String;Ljava/lang/String;)Le/a/b0/q/a0$a;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 14
    iget-boolean v4, v2, Le/a/b0/q/a0$a;->b:Z

    if-nez v4, :cond_5

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    move v4, v3

    goto :goto_4

    :cond_5
    :goto_3
    move v4, p2

    :goto_4
    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    move-object v2, p3

    :goto_5
    if-eqz v2, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_7
    return-object v1
.end method
