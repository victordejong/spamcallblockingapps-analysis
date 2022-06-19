.class public Lcom/hiya/stingray/t/i1/f0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/hiya/stingray/t/i1/f0;Lg/g/b/c/f;ZILjava/lang/Object;)Lcom/hiya/stingray/t/h0;
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/t/i1/f0;->a(Lg/g/b/c/f;Z)Lcom/hiya/stingray/t/h0;

    move-result-object p0

    return-object p0

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: mapFromCallerId"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(Lg/g/b/c/f;Z)Lcom/hiya/stingray/t/h0;
    .locals 3

    const-string v0, "callerId"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/h0;->a()Lcom/hiya/stingray/t/h0$a;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lg/g/b/c/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/h0$a;->c(Ljava/lang/String;)Lcom/hiya/stingray/t/h0$a;

    .line 3
    invoke-virtual {p1}, Lg/g/b/c/f;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/t/h0$a;->d(Ljava/lang/String;)Lcom/hiya/stingray/t/h0$a;

    .line 4
    invoke-static {}, Lcom/hiya/stingray/t/n0;->a()Lcom/hiya/stingray/t/n0$a;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/t/n0$a;->g(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    .line 6
    invoke-virtual {p1}, Lg/g/b/c/f;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/t/n0$a;->i(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    if-eqz p2, :cond_0

    .line 7
    sget-object p2, Lcom/hiya/stingray/t/o0;->CONTACT:Lcom/hiya/stingray/t/o0;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lg/g/b/c/f;->w()Lg/g/b/c/r;

    move-result-object p2

    invoke-static {p2}, Lcom/hiya/stingray/t/i1/h0;->c(Lg/g/b/c/r;)Lcom/hiya/stingray/t/o0;

    move-result-object p2

    :goto_0
    invoke-virtual {v1, p2}, Lcom/hiya/stingray/t/n0$a;->d(Lcom/hiya/stingray/t/o0;)Lcom/hiya/stingray/t/n0$a;

    .line 8
    invoke-virtual {p1}, Lg/g/b/c/f;->n()Lg/g/b/c/i;

    move-result-object p2

    invoke-static {p2}, Lcom/hiya/stingray/t/i1/h0;->b(Lg/g/b/c/i;)Lcom/hiya/stingray/t/m0;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/hiya/stingray/t/n0$a;->e(Lcom/hiya/stingray/t/m0;)Lcom/hiya/stingray/t/n0$a;

    .line 9
    invoke-static {}, Lcom/hiya/stingray/t/r0;->a()Lcom/hiya/stingray/t/r0$a;

    move-result-object p2

    .line 10
    sget-object v2, Lcom/hiya/stingray/t/q0;->MOBILE:Lcom/hiya/stingray/t/q0;

    invoke-virtual {p2, v2}, Lcom/hiya/stingray/t/r0$a;->b(Lcom/hiya/stingray/t/q0;)Lcom/hiya/stingray/t/r0$a;

    .line 11
    invoke-virtual {p1}, Lg/g/b/c/f;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/hiya/stingray/t/r0$a;->c(Ljava/lang/String;)Lcom/hiya/stingray/t/r0$a;

    const-string v2, ""

    .line 12
    invoke-virtual {p2, v2}, Lcom/hiya/stingray/t/r0$a;->d(Ljava/lang/String;)Lcom/hiya/stingray/t/r0$a;

    .line 13
    invoke-virtual {p2}, Lcom/hiya/stingray/t/r0$a;->a()Lcom/hiya/stingray/t/r0;

    move-result-object p2

    .line 14
    invoke-virtual {v1, p2}, Lcom/hiya/stingray/t/n0$a;->f(Lcom/hiya/stingray/t/r0;)Lcom/hiya/stingray/t/n0$a;

    .line 15
    invoke-virtual {p1}, Lg/g/b/c/f;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/hiya/stingray/t/n0$a;->c(Ljava/lang/String;)Lcom/hiya/stingray/t/n0$a;

    .line 16
    invoke-static {}, Lcom/hiya/stingray/t/n;->a()Lcom/hiya/stingray/t/n$a;

    move-result-object p2

    .line 17
    invoke-virtual {p1}, Lg/g/b/c/f;->k()Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-virtual {p2, v2}, Lcom/hiya/stingray/t/n$a;->e(Ljava/lang/String;)Lcom/hiya/stingray/t/n$a;

    .line 19
    invoke-virtual {p2}, Lcom/hiya/stingray/t/n$a;->a()Lcom/hiya/stingray/t/n;

    move-result-object p2

    .line 20
    invoke-static {p2}, Lkotlin/s/k;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 21
    invoke-virtual {v1, p2}, Lcom/hiya/stingray/t/n0$a;->b(Ljava/util/List;)Lcom/hiya/stingray/t/n0$a;

    .line 22
    invoke-static {}, Lkotlin/s/b0;->e()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/hiya/stingray/t/n0$a;->h(Ljava/util/Map;)Lcom/hiya/stingray/t/n0$a;

    .line 23
    invoke-static {}, Lcom/google/common/collect/z;->y()Lcom/google/common/collect/z;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/hiya/stingray/t/n0$a;->j(Lcom/google/common/collect/z;)Lcom/hiya/stingray/t/n0$a;

    .line 24
    invoke-virtual {v1}, Lcom/hiya/stingray/t/n0$a;->a()Lcom/hiya/stingray/t/n0;

    move-result-object p2

    .line 25
    invoke-virtual {v0, p2}, Lcom/hiya/stingray/t/h0$a;->b(Lcom/hiya/stingray/t/n0;)Lcom/hiya/stingray/t/h0$a;

    .line 26
    invoke-static {}, Lcom/hiya/stingray/t/y0;->a()Lcom/hiya/stingray/t/y0$a;

    move-result-object p2

    .line 27
    invoke-virtual {p1}, Lg/g/b/c/f;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/hiya/stingray/t/y0$a;->b(Ljava/lang/String;)Lcom/hiya/stingray/t/y0$a;

    .line 28
    invoke-virtual {p1}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/t/i1/h0;->e(Lg/g/b/c/q;)Lcom/hiya/stingray/t/z0;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/hiya/stingray/t/y0$a;->c(Lcom/hiya/stingray/t/z0;)Lcom/hiya/stingray/t/y0$a;

    .line 29
    invoke-virtual {p2}, Lcom/hiya/stingray/t/y0$a;->a()Lcom/hiya/stingray/t/y0;

    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/h0$a;->e(Lcom/hiya/stingray/t/y0;)Lcom/hiya/stingray/t/h0$a;

    .line 31
    invoke-virtual {v0}, Lcom/hiya/stingray/t/h0$a;->a()Lcom/hiya/stingray/t/h0;

    move-result-object p1

    const-string p2, "CallerIdItem.builder()\n \u2026   )\n            .build()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(Ljava/lang/String;Lg/g/b/c/f;)Lcom/hiya/stingray/q/c/i/c;
    .locals 2

    const-string v0, "rawNum"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerId"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/c/i/c;

    invoke-direct {v0}, Lcom/hiya/stingray/q/c/i/c;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/c/i/c;->k1(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p2}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/t/i1/h0;->e(Lg/g/b/c/q;)Lcom/hiya/stingray/t/z0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/c/i/c;->p1(Ljava/lang/String;)V

    const-string p1, ""

    .line 4
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/c/i/c;->a1(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/c/i/c;->o1(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p2}, Lg/g/b/c/f;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/c/i/c;->d1(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, Lg/g/b/c/f;->n()Lg/g/b/c/i;

    move-result-object v1

    invoke-static {v1}, Lcom/hiya/stingray/t/i1/h0;->b(Lg/g/b/c/i;)Lcom/hiya/stingray/t/m0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/c/i/c;->e1(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Lg/g/b/c/f;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/c/i/c;->j1(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lg/g/b/c/f;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/c/i/c;->l1(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p2}, Lg/g/b/c/f;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/c/i/c;->h1(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2}, Lg/g/b/c/f;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/c/i/c;->g1(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/c/i/c;->i1(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p2}, Lg/g/b/c/f;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/c/i/c;->b1(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2}, Lg/g/b/c/f;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/c/i/c;->c1(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/t/i1/h0;->e(Lg/g/b/c/q;)Lcom/hiya/stingray/t/z0;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/c/i/c;->n1(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Lg/g/b/c/f;->t()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/c/i/c;->m1(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/hiya/stingray/q/c/i/c;->f1(J)V

    return-object v0
.end method
