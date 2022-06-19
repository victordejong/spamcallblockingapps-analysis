.class public final Ls1/a/a/a/v0/j/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls1/a/a/a/v0/j/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ls1/a/a/a/v0/j/e;

    invoke-direct {v0}, Ls1/a/a/a/v0/j/e;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/j/e;->a:Ls1/a/a/a/v0/j/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/k;ZZ)Z
    .locals 5

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/b/e;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ls1/a/a/a/v0/b/e;

    if-eqz v0, :cond_0

    check-cast p1, Ls1/a/a/a/v0/b/e;

    check-cast p2, Ls1/a/a/a/v0/b/e;

    .line 2
    invoke-interface {p1}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object p1

    invoke-interface {p2}, Ls1/a/a/a/v0/b/h;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object p2

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto/16 :goto_2

    .line 3
    :cond_0
    instance-of v0, p1, Ls1/a/a/a/v0/b/w0;

    if-eqz v0, :cond_1

    instance-of v0, p2, Ls1/a/a/a/v0/b/w0;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Ls1/a/a/a/v0/b/w0;

    .line 5
    check-cast p2, Ls1/a/a/a/v0/b/w0;

    .line 6
    sget-object p4, Ls1/a/a/a/v0/j/d;->b:Ls1/a/a/a/v0/j/d;

    invoke-virtual {p0, p1, p2, p3, p4}, Ls1/a/a/a/v0/j/e;->b(Ls1/a/a/a/v0/b/w0;Ls1/a/a/a/v0/b/w0;ZLs1/z/b/p;)Z

    move-result p1

    goto/16 :goto_2

    .line 7
    :cond_1
    instance-of v0, p1, Ls1/a/a/a/v0/b/a;

    if-eqz v0, :cond_a

    instance-of v0, p2, Ls1/a/a/a/v0/b/a;

    if-eqz v0, :cond_a

    .line 8
    check-cast p1, Ls1/a/a/a/v0/b/a;

    .line 9
    check-cast p2, Ls1/a/a/a/v0/b/a;

    .line 10
    sget-object v0, Ls1/a/a/a/v0/m/l1/e$a;->a:Ls1/a/a/a/v0/m/l1/e$a;

    const/4 v1, 0x0

    const-string v2, "a"

    .line 11
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "b"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "kotlinTypeRefiner"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    goto/16 :goto_0

    .line 13
    :cond_2
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v2

    invoke-interface {p2}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v4

    invoke-static {v2, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_3

    goto/16 :goto_1

    :cond_3
    if-eqz p4, :cond_4

    .line 14
    instance-of p4, p1, Ls1/a/a/a/v0/b/x;

    if-eqz p4, :cond_4

    instance-of p4, p2, Ls1/a/a/a/v0/b/x;

    if-eqz p4, :cond_4

    move-object p4, p1

    check-cast p4, Ls1/a/a/a/v0/b/x;

    invoke-interface {p4}, Ls1/a/a/a/v0/b/x;->x0()Z

    move-result p4

    move-object v2, p2

    check-cast v2, Ls1/a/a/a/v0/b/x;

    invoke-interface {v2}, Ls1/a/a/a/v0/b/x;->x0()Z

    move-result v2

    if-eq p4, v2, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    invoke-interface {p1}, Ls1/a/a/a/v0/b/l;->b()Ls1/a/a/a/v0/b/k;

    move-result-object p4

    invoke-interface {p2}, Ls1/a/a/a/v0/b/l;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v2

    invoke-static {p4, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    if-nez p3, :cond_5

    goto :goto_1

    .line 16
    :cond_5
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/j/e;->d(Ls1/a/a/a/v0/b/a;)Ls1/a/a/a/v0/b/r0;

    move-result-object p4

    invoke-virtual {p0, p2}, Ls1/a/a/a/v0/j/e;->d(Ls1/a/a/a/v0/b/a;)Ls1/a/a/a/v0/b/r0;

    move-result-object v2

    invoke-static {p4, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    xor-int/2addr p4, v3

    if-eqz p4, :cond_6

    goto :goto_1

    .line 17
    :cond_6
    invoke-static {p1}, Ls1/a/a/a/v0/j/g;->t(Ls1/a/a/a/v0/b/k;)Z

    move-result p4

    if-nez p4, :cond_9

    invoke-static {p2}, Ls1/a/a/a/v0/j/g;->t(Ls1/a/a/a/v0/b/k;)Z

    move-result p4

    if-eqz p4, :cond_7

    goto :goto_1

    .line 18
    :cond_7
    sget-object p4, Ls1/a/a/a/v0/j/a;->b:Ls1/a/a/a/v0/j/a;

    invoke-virtual {p0, p1, p2, p4, p3}, Ls1/a/a/a/v0/j/e;->c(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/k;Ls1/z/b/p;Z)Z

    move-result p4

    if-nez p4, :cond_8

    goto :goto_1

    .line 19
    :cond_8
    new-instance p4, Ls1/a/a/a/v0/j/c;

    invoke-direct {p4, p3, p1, p2}, Ls1/a/a/a/v0/j/c;-><init>(ZLs1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;)V

    .line 20
    new-instance p3, Ls1/a/a/a/v0/j/l;

    invoke-direct {p3, p4, v0}, Ls1/a/a/a/v0/j/l;-><init>(Ls1/a/a/a/v0/m/l1/d$a;Ls1/a/a/a/v0/m/l1/e;)V

    const-string p4, "OverridingUtil.create(ko\u2026= a && y == b }\n        }"

    .line 21
    invoke-static {p3, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p4, 0x0

    .line 22
    invoke-virtual {p3, p1, p2, p4, v3}, Ls1/a/a/a/v0/j/l;->m(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/e;Z)Ls1/a/a/a/v0/j/l$c;

    move-result-object v0

    const-string v2, "overridingUtil.isOverrid\u2026 null, !ignoreReturnType)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ls1/a/a/a/v0/j/l$c;->c()Ls1/a/a/a/v0/j/l$c$a;

    move-result-object v0

    sget-object v4, Ls1/a/a/a/v0/j/l$c$a;->a:Ls1/a/a/a/v0/j/l$c$a;

    if-ne v0, v4, :cond_9

    .line 23
    invoke-virtual {p3, p2, p1, p4, v3}, Ls1/a/a/a/v0/j/l;->m(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/e;Z)Ls1/a/a/a/v0/j/l$c;

    move-result-object p1

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ls1/a/a/a/v0/j/l$c;->c()Ls1/a/a/a/v0/j/l$c$a;

    move-result-object p1

    if-ne p1, v4, :cond_9

    :goto_0
    move p1, v3

    goto :goto_2

    :cond_9
    :goto_1
    move p1, v1

    goto :goto_2

    .line 24
    :cond_a
    instance-of p3, p1, Ls1/a/a/a/v0/b/c0;

    if-eqz p3, :cond_b

    instance-of p3, p2, Ls1/a/a/a/v0/b/c0;

    if-eqz p3, :cond_b

    check-cast p1, Ls1/a/a/a/v0/b/c0;

    invoke-interface {p1}, Ls1/a/a/a/v0/b/c0;->d()Ls1/a/a/a/v0/f/b;

    move-result-object p1

    check-cast p2, Ls1/a/a/a/v0/b/c0;

    invoke-interface {p2}, Ls1/a/a/a/v0/b/c0;->d()Ls1/a/a/a/v0/f/b;

    move-result-object p2

    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_2

    .line 25
    :cond_b
    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    :goto_2
    return p1
.end method

.method public final b(Ls1/a/a/a/v0/b/w0;Ls1/a/a/a/v0/b/w0;ZLs1/z/b/p;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/w0;",
            "Ls1/a/a/a/v0/b/w0;",
            "Z",
            "Ls1/z/b/p<",
            "-",
            "Ls1/a/a/a/v0/b/k;",
            "-",
            "Ls1/a/a/a/v0/b/k;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p1}, Ls1/a/a/a/v0/b/l;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v0

    invoke-interface {p2}, Ls1/a/a/a/v0/b/l;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v2

    invoke-static {v0, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p0, p1, p2, p4, p3}, Ls1/a/a/a/v0/j/e;->c(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/k;Ls1/z/b/p;Z)Z

    move-result p3

    if-nez p3, :cond_2

    return v2

    .line 4
    :cond_2
    invoke-interface {p1}, Ls1/a/a/a/v0/b/w0;->j()I

    move-result p1

    invoke-interface {p2}, Ls1/a/a/a/v0/b/w0;->j()I

    move-result p2

    if-ne p1, p2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1
.end method

.method public final c(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/k;Ls1/z/b/p;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/b/k;",
            "Ls1/a/a/a/v0/b/k;",
            "Ls1/z/b/p<",
            "-",
            "Ls1/a/a/a/v0/b/k;",
            "-",
            "Ls1/a/a/a/v0/b/k;",
            "Ljava/lang/Boolean;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/k;->b()Ls1/a/a/a/v0/b/k;

    move-result-object p1

    .line 2
    invoke-interface {p2}, Ls1/a/a/a/v0/b/k;->b()Ls1/a/a/a/v0/b/k;

    move-result-object p2

    .line 3
    instance-of v0, p1, Ls1/a/a/a/v0/b/b;

    if-nez v0, :cond_1

    instance-of v0, p2, Ls1/a/a/a/v0/b/b;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 4
    invoke-virtual {p0, p1, p2, p4, p3}, Ls1/a/a/a/v0/j/e;->a(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/k;ZZ)Z

    move-result p1

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-interface {p3, p1, p2}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_1
    return p1
.end method

.method public final d(Ls1/a/a/a/v0/b/a;)Ls1/a/a/a/v0/b/r0;
    .locals 3

    .line 1
    :goto_0
    instance-of v0, p1, Ls1/a/a/a/v0/b/b;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ls1/a/a/a/v0/b/b;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/b;->getKind()Ls1/a/a/a/v0/b/b$a;

    move-result-object v1

    sget-object v2, Ls1/a/a/a/v0/b/b$a;->b:Ls1/a/a/a/v0/b/b$a;

    if-eq v1, v2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {v0}, Ls1/a/a/a/v0/b/b;->e()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "overriddenDescriptors"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ls1/u/i;->C0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/b/b;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_2
    :goto_1
    invoke-interface {p1}, Ls1/a/a/a/v0/b/n;->getSource()Ls1/a/a/a/v0/b/r0;

    move-result-object p1

    return-object p1
.end method
