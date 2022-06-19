.class public Lcom/hiya/stingray/manager/j3;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/hiya/stingray/manager/e1;

.field private final c:Lcom/hiya/stingray/t/i1/t;

.field private final d:Lcom/hiya/stingray/manager/u3;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/t/i1/t;Lcom/hiya/stingray/manager/u3;)V
    .locals 1

    const-string v0, "analyticsManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayTypeMapper"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/j3;->b:Lcom/hiya/stingray/manager/e1;

    iput-object p2, p0, Lcom/hiya/stingray/manager/j3;->c:Lcom/hiya/stingray/t/i1/t;

    iput-object p3, p0, Lcom/hiya/stingray/manager/j3;->d:Lcom/hiya/stingray/manager/u3;

    return-void
.end method

.method private final a(Ljava/lang/String;Lcom/hiya/stingray/manager/h2$c;)Lcom/hiya/stingray/t/p0;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/hiya/stingray/util/p;->w(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/hiya/stingray/t/p0;->PRIVATE:Lcom/hiya/stingray/t/p0;

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/manager/j3;->a:Lh/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-interface {v0}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    sget-object p1, Lcom/hiya/stingray/t/p0;->VOICEMAIL:Lcom/hiya/stingray/t/p0;

    goto :goto_2

    .line 5
    :cond_1
    iget-boolean p1, p2, Lcom/hiya/stingray/manager/h2$c;->g:Z

    if-eqz p1, :cond_2

    .line 6
    sget-object p1, Lcom/hiya/stingray/t/p0;->SAVED_CONTACT:Lcom/hiya/stingray/t/p0;

    goto :goto_2

    .line 7
    :cond_2
    iget-object p1, p2, Lcom/hiya/stingray/manager/h2$c;->k:Lg/g/b/c/f;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lg/g/b/c/f;->n()Lg/g/b/c/i;

    move-result-object p1

    goto :goto_0

    :cond_3
    move-object p1, v1

    :goto_0
    sget-object v0, Lg/g/b/c/i;->PERSON:Lg/g/b/c/i;

    if-eq p1, v0, :cond_7

    iget-object p1, p2, Lcom/hiya/stingray/manager/h2$c;->k:Lg/g/b/c/f;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lg/g/b/c/f;->n()Lg/g/b/c/i;

    move-result-object v1

    :cond_4
    sget-object p1, Lg/g/b/c/i;->BUSINESS:Lg/g/b/c/i;

    if-ne v1, p1, :cond_5

    goto :goto_1

    .line 8
    :cond_5
    iget-object p1, p2, Lcom/hiya/stingray/manager/h2$c;->m:Lcom/hiya/stingray/service/a/a;

    sget-object p2, Lcom/hiya/stingray/service/a/a;->BLOCKED_CALL_SCREENER:Lcom/hiya/stingray/service/a/a;

    if-ne p1, p2, :cond_6

    .line 9
    sget-object p1, Lcom/hiya/stingray/t/p0;->CALL_SCREENED:Lcom/hiya/stingray/t/p0;

    goto :goto_2

    .line 10
    :cond_6
    sget-object p1, Lcom/hiya/stingray/t/p0;->NOT_IDENTIFIED:Lcom/hiya/stingray/t/p0;

    goto :goto_2

    .line 11
    :cond_7
    :goto_1
    sget-object p1, Lcom/hiya/stingray/t/p0;->IDENTIFIED:Lcom/hiya/stingray/t/p0;

    :goto_2
    return-object p1

    :cond_8
    const-string p1, "voiceMailNumber"

    .line 12
    invoke-static {p1}, Lkotlin/w/c/k;->u(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public b(Ljava/lang/String;Lcom/hiya/stingray/manager/h2$c;)V
    .locals 9

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sources"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p2, Lcom/hiya/stingray/manager/h2$c;->k:Lg/g/b/c/f;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p2, Lcom/hiya/stingray/manager/h2$c;->j:Lcom/hiya/stingray/t/e0;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p2, Lcom/hiya/stingray/manager/h2$c;->l:Lg/g/b/c/k;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/hiya/stingray/t/i1/h0;->d(Lg/g/b/c/k;)Lcom/hiya/stingray/util/i$a;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/hiya/stingray/util/i$a;->UNKNOWN:Lcom/hiya/stingray/util/i$a;

    .line 4
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/manager/j3;->a(Ljava/lang/String;Lcom/hiya/stingray/manager/h2$c;)Lcom/hiya/stingray/t/p0;

    move-result-object v3

    .line 5
    iget-object v1, p0, Lcom/hiya/stingray/manager/j3;->c:Lcom/hiya/stingray/t/i1/t;

    .line 6
    iget-object p1, p2, Lcom/hiya/stingray/manager/h2$c;->k:Lg/g/b/c/f;

    const/4 v8, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Lg/g/b/c/f;->v()Lg/g/b/c/q;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/t/i1/h0;->e(Lg/g/b/c/q;)Lcom/hiya/stingray/t/z0;

    move-result-object v2

    .line 7
    iget-object p1, p2, Lcom/hiya/stingray/manager/h2$c;->k:Lg/g/b/c/f;

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lg/g/b/c/f;->r()Ljava/lang/String;

    move-result-object v4

    .line 8
    iget-object p1, p2, Lcom/hiya/stingray/manager/h2$c;->k:Lg/g/b/c/f;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lg/g/b/c/f;->n()Lg/g/b/c/i;

    move-result-object p1

    invoke-static {p1}, Lcom/hiya/stingray/t/i1/h0;->b(Lg/g/b/c/i;)Lcom/hiya/stingray/t/m0;

    move-result-object v6

    .line 9
    iget-object p1, p0, Lcom/hiya/stingray/manager/j3;->d:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {p1}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v7

    move-object v5, v0

    .line 10
    invoke-virtual/range {v1 .. v7}, Lcom/hiya/stingray/t/i1/t;->b(Lcom/hiya/stingray/t/z0;Lcom/hiya/stingray/t/p0;Ljava/lang/String;Lcom/hiya/stingray/util/i$a;Lcom/hiya/stingray/t/m0;Z)Lcom/hiya/stingray/ui/e;

    move-result-object p1

    .line 11
    iget-object v1, p2, Lcom/hiya/stingray/manager/h2$c;->j:Lcom/hiya/stingray/t/e0;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/hiya/stingray/t/e0;->f()I

    move-result v1

    .line 12
    iget-object v2, p2, Lcom/hiya/stingray/manager/h2$c;->m:Lcom/hiya/stingray/service/a/a;

    sget-object v3, Lcom/hiya/stingray/service/a/a;->AUTO_BLOCK_PASS:Lcom/hiya/stingray/service/a/a;

    if-eq v2, v3, :cond_3

    const-string v1, "blocked"

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const-string v1, "answered"

    goto :goto_2

    :cond_4
    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    goto :goto_1

    :cond_5
    const-string v1, ""

    goto :goto_2

    :cond_6
    :goto_1
    const-string v1, "not_answered"

    .line 13
    :goto_2
    iget-object v2, p0, Lcom/hiya/stingray/manager/j3;->b:Lcom/hiya/stingray/manager/e1;

    .line 14
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v3

    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v4, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v0, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v5, "(this as java.lang.String).toLowerCase()"

    invoke-static {v0, v5}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v5}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 17
    iget-object p1, p2, Lcom/hiya/stingray/manager/h2$c;->k:Lg/g/b/c/f;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lg/g/b/c/f;->n()Lg/g/b/c/i;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-static {p1}, Lcom/hiya/stingray/t/i1/h0;->b(Lg/g/b/c/i;)Lcom/hiya/stingray/t/m0;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    sget-object p1, Lcom/hiya/stingray/t/m0;->UNCATEGORIZED:Lcom/hiya/stingray/t/m0;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 18
    :goto_3
    invoke-virtual {v3, p1}, Lcom/hiya/stingray/util/g0/c$a;->f(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 19
    invoke-virtual {v3, v1}, Lcom/hiya/stingray/util/g0/c$a;->c(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 20
    iget-object p1, p2, Lcom/hiya/stingray/manager/h2$c;->k:Lg/g/b/c/f;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lg/g/b/c/f;->u()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    const-string p1, "-1"

    :goto_4
    invoke-virtual {v3, p1}, Lcom/hiya/stingray/util/g0/c$a;->d(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 21
    iget-boolean p1, p2, Lcom/hiya/stingray/manager/h2$c;->o:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/hiya/stingray/util/g0/c$a;->i(Ljava/lang/Boolean;)Lcom/hiya/stingray/util/g0/c$a;

    .line 22
    invoke-virtual {v3}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    const-string p2, "phone_call"

    .line 23
    invoke-virtual {v2, p2, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void

    .line 24
    :cond_9
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v8

    .line 25
    :cond_a
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v8

    .line 26
    :cond_b
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v8

    .line 27
    :cond_c
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v8
.end method
