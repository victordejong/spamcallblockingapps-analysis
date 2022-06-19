.class public final Lcom/hiya/stingray/t/i1/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/hiya/stingray/q/b/x;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/hiya/stingray/q/b/x;)V
    .locals 1

    const-string v0, "iso"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hashingCountryListProvider"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/t/i1/o0;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/hiya/stingray/t/i1/o0;->b:Lcom/hiya/stingray/q/b/x;

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/t/g1/a;)Lcom/hiya/stingray/q/c/i/e;
    .locals 3

    const-string v0, "phoneSendEvent"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/stingray/q/c/i/e;

    invoke-direct {v0}, Lcom/hiya/stingray/q/c/i/e;-><init>()V

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->i()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/q/c/i/e;->j1(J)V

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/c/i/e;->f1(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/c/i/e;->d1(Ljava/lang/Integer;)V

    .line 5
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->l()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/c/i/e;->b1(Ljava/lang/Boolean;)V

    .line 6
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->b()Lcom/hiya/stingray/util/i$a;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/c/i/e;->c1(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->h()Lcom/hiya/stingray/util/i$b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/c/i/e;->i1(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/c/i/e;->g1(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->d()Lcom/hiya/stingray/q/c/g/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/c/i/e;->e1(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->j()Lg/g/a/a/i/k/f;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/c/i/e;->k1(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->a()Lg/g/a/a/i/k/a;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {v0, v2}, Lcom/hiya/stingray/q/c/i/e;->a1(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/hiya/stingray/t/g1/a;->k()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/c/i/e;->Z0(Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final b(Lcom/hiya/stingray/q/c/i/e;)Lcom/hiya/stingray/t/g1/a;
    .locals 8

    const-string v0, "realmPhoneSendEvent"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/e;->S0()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    iget-object v2, p0, Lcom/hiya/stingray/t/i1/o0;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/hiya/stingray/t/i1/o0;->b:Lcom/hiya/stingray/q/b/x;

    invoke-static {v0, v2, v3}, Lcom/hiya/stingray/util/y;->e(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/q/b/x;)Lg/g/c/a/c/a/b;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/hiya/stingray/t/g1/a;->m()Lcom/hiya/stingray/t/g1/a$b;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/e;->V0()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/hiya/stingray/t/g1/a$b;->x(J)Lcom/hiya/stingray/t/g1/a$b;

    .line 4
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/e;->S0()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/t/g1/a$b;->t(Ljava/lang/String;)Lcom/hiya/stingray/t/g1/a$b;

    .line 5
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/e;->Y0()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/t/g1/a$b;->s(Z)Lcom/hiya/stingray/t/g1/a$b;

    .line 6
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/e;->P0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).toUpperCase(locale)"

    const-string v5, "null cannot be cast to non-null type java.lang.String"

    const-string v6, "Locale.ROOT"

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/e;->P0()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v7, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/hiya/stingray/util/i$a;->valueOf(Ljava/lang/String;)Lcom/hiya/stingray/util/i$a;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_1
    move-object v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/hiya/stingray/t/g1/a$b;->o(Lcom/hiya/stingray/util/i$a;)Lcom/hiya/stingray/t/g1/a$b;

    .line 7
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/e;->U0()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/e;->U0()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v7, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/hiya/stingray/util/i$b;->valueOf(Ljava/lang/String;)Lcom/hiya/stingray/util/i$b;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_3
    move-object v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/hiya/stingray/t/g1/a$b;->w(Lcom/hiya/stingray/util/i$b;)Lcom/hiya/stingray/t/g1/a$b;

    .line 8
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/e;->T0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/hiya/stingray/t/g1/a$b;->v(Ljava/lang/String;)Lcom/hiya/stingray/t/g1/a$b;

    if-eqz v0, :cond_b

    .line 9
    invoke-virtual {v2, v0}, Lcom/hiya/stingray/t/g1/a$b;->u(Lg/g/c/a/c/a/b;)Lcom/hiya/stingray/t/g1/a$b;

    .line 10
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/e;->Q0()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/hiya/stingray/t/g1/a$b;->p(I)Lcom/hiya/stingray/t/g1/a$b;

    .line 11
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/e;->W0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/e;->W0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v3, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lg/g/a/a/i/k/f;->valueOf(Ljava/lang/String;)Lg/g/a/a/i/k/f;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_5
    move-object v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Lcom/hiya/stingray/t/g1/a$b;->y(Lg/g/a/a/i/k/f;)Lcom/hiya/stingray/t/g1/a$b;

    .line 12
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/e;->O0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/e;->O0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v3, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lg/g/a/a/i/k/a;->valueOf(Ljava/lang/String;)Lg/g/a/a/i/k/a;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_7
    move-object v0, v1

    :goto_3
    invoke-virtual {v2, v0}, Lcom/hiya/stingray/t/g1/a$b;->n(Lg/g/a/a/i/k/a;)Lcom/hiya/stingray/t/g1/a$b;

    .line 13
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/e;->R0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v3, v6}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/w/c/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/hiya/stingray/q/c/g/a;->valueOf(Ljava/lang/String;)Lcom/hiya/stingray/q/c/g/a;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/hiya/stingray/t/g1/a$b;->q(Lcom/hiya/stingray/q/c/g/a;)Lcom/hiya/stingray/t/g1/a$b;

    .line 14
    invoke-virtual {p1}, Lcom/hiya/stingray/q/c/i/e;->X0()Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/hiya/stingray/t/g1/a$b;->r(Z)Lcom/hiya/stingray/t/g1/a$b;

    .line 15
    invoke-virtual {v2}, Lcom/hiya/stingray/t/g1/a$b;->m()Lcom/hiya/stingray/t/g1/a;

    move-result-object p1

    const-string v0, "PhoneSendEvent.newBuilde\u2026\n                .build()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 16
    :cond_8
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 17
    :cond_9
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 18
    :cond_a
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 19
    :cond_b
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 20
    :cond_c
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 21
    :cond_d
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 22
    :cond_e
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1
.end method
