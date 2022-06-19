.class public Lcom/hiya/stingray/manager/w1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/manager/c2;

.field private final c:Lcom/hiya/stingray/manager/l4;

.field private final d:Lcom/hiya/stingray/manager/q1;

.field private final e:Lcom/hiya/stingray/manager/h4;

.field private final f:Lcom/hiya/stingray/manager/o2;

.field private final g:Lcom/hiya/stingray/ui/login/o;

.field private final h:Lcom/hiya/stingray/manager/u3;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/c2;Lcom/hiya/stingray/manager/l4;Lcom/hiya/stingray/manager/q1;Lcom/hiya/stingray/manager/h4;Lcom/hiya/stingray/manager/o2;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/manager/u3;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "blackListManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whiteListManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callScreenerManager"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userAccountManager"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceUserInfoManager"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionHandler"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumManager"

    invoke-static {p8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/w1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/w1;->b:Lcom/hiya/stingray/manager/c2;

    iput-object p3, p0, Lcom/hiya/stingray/manager/w1;->c:Lcom/hiya/stingray/manager/l4;

    iput-object p4, p0, Lcom/hiya/stingray/manager/w1;->d:Lcom/hiya/stingray/manager/q1;

    iput-object p5, p0, Lcom/hiya/stingray/manager/w1;->e:Lcom/hiya/stingray/manager/h4;

    iput-object p6, p0, Lcom/hiya/stingray/manager/w1;->f:Lcom/hiya/stingray/manager/o2;

    iput-object p7, p0, Lcom/hiya/stingray/manager/w1;->g:Lcom/hiya/stingray/ui/login/o;

    iput-object p8, p0, Lcom/hiya/stingray/manager/w1;->h:Lcom/hiya/stingray/manager/u3;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/manager/w1;)Lcom/hiya/stingray/manager/o2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/w1;->f:Lcom/hiya/stingray/manager/o2;

    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Lg/g/b/c/q;ZZZZZZZZZZ)Lcom/hiya/stingray/manager/n1;
    .locals 1

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reputationLevel"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p8, :cond_0

    .line 1
    invoke-static {p1}, Lcom/hiya/stingray/util/p;->w(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    new-instance p1, Lcom/hiya/stingray/manager/n1;

    sget-object p3, Lcom/hiya/stingray/t/b0;->AUTO_BLOCKED:Lcom/hiya/stingray/t/b0;

    sget-object p4, Lcom/hiya/stingray/service/a/a;->BLOCKED_AUTO_PRIVATE:Lcom/hiya/stingray/service/a/a;

    invoke-direct {p1, p3, p4}, Lcom/hiya/stingray/manager/n1;-><init>(Lcom/hiya/stingray/t/b0;Lcom/hiya/stingray/service/a/a;)V

    goto :goto_1

    :cond_0
    if-eqz p5, :cond_1

    .line 3
    new-instance p1, Lcom/hiya/stingray/manager/n1;

    sget-object p3, Lcom/hiya/stingray/t/b0;->WHITE_LISTED:Lcom/hiya/stingray/t/b0;

    sget-object p4, Lcom/hiya/stingray/service/a/a;->AUTO_BLOCK_PASS:Lcom/hiya/stingray/service/a/a;

    invoke-direct {p1, p3, p4}, Lcom/hiya/stingray/manager/n1;-><init>(Lcom/hiya/stingray/t/b0;Lcom/hiya/stingray/service/a/a;)V

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_4

    if-eqz p11, :cond_2

    if-eqz p3, :cond_2

    if-eqz p10, :cond_2

    .line 4
    new-instance p1, Lcom/hiya/stingray/manager/n1;

    sget-object p3, Lcom/hiya/stingray/t/b0;->NOT_BLOCKED:Lcom/hiya/stingray/t/b0;

    sget-object p4, Lcom/hiya/stingray/service/a/a;->AUTO_BLOCK_PASS:Lcom/hiya/stingray/service/a/a;

    invoke-direct {p1, p3, p4}, Lcom/hiya/stingray/manager/n1;-><init>(Lcom/hiya/stingray/t/b0;Lcom/hiya/stingray/service/a/a;)V

    goto :goto_1

    .line 5
    :cond_2
    new-instance p1, Lcom/hiya/stingray/manager/n1;

    .line 6
    sget-object p3, Lcom/hiya/stingray/t/b0;->MANUAL_BLOCKED:Lcom/hiya/stingray/t/b0;

    if-eqz p11, :cond_3

    .line 7
    sget-object p4, Lcom/hiya/stingray/service/a/a;->BLOCKED_STARTS_WITH:Lcom/hiya/stingray/service/a/a;

    goto :goto_0

    :cond_3
    sget-object p4, Lcom/hiya/stingray/service/a/a;->BLOCKED_BLACK_LIST:Lcom/hiya/stingray/service/a/a;

    .line 8
    :goto_0
    invoke-direct {p1, p3, p4}, Lcom/hiya/stingray/manager/n1;-><init>(Lcom/hiya/stingray/t/b0;Lcom/hiya/stingray/service/a/a;)V

    goto :goto_1

    :cond_4
    if-eqz p3, :cond_5

    .line 9
    new-instance p1, Lcom/hiya/stingray/manager/n1;

    sget-object p3, Lcom/hiya/stingray/t/b0;->NOT_BLOCKED:Lcom/hiya/stingray/t/b0;

    sget-object p4, Lcom/hiya/stingray/service/a/a;->AUTO_BLOCK_PASS:Lcom/hiya/stingray/service/a/a;

    invoke-direct {p1, p3, p4}, Lcom/hiya/stingray/manager/n1;-><init>(Lcom/hiya/stingray/t/b0;Lcom/hiya/stingray/service/a/a;)V

    goto :goto_1

    :cond_5
    if-eqz p12, :cond_6

    .line 10
    new-instance p1, Lcom/hiya/stingray/manager/n1;

    sget-object p3, Lcom/hiya/stingray/t/b0;->AUTO_BLOCKED:Lcom/hiya/stingray/t/b0;

    sget-object p4, Lcom/hiya/stingray/service/a/a;->BLOCKED_NON_CONTACT:Lcom/hiya/stingray/service/a/a;

    invoke-direct {p1, p3, p4}, Lcom/hiya/stingray/manager/n1;-><init>(Lcom/hiya/stingray/t/b0;Lcom/hiya/stingray/service/a/a;)V

    goto :goto_1

    :cond_6
    move-object p1, v0

    :goto_1
    if-eqz p6, :cond_7

    .line 11
    sget-object p3, Lg/g/b/c/q;->FRAUD:Lg/g/b/c/q;

    if-eq p2, p3, :cond_8

    :cond_7
    if-eqz p7, :cond_c

    sget-object p3, Lg/g/b/c/q;->SPAM:Lg/g/b/c/q;

    if-ne p2, p3, :cond_c

    :cond_8
    if-eqz p1, :cond_9

    .line 12
    invoke-virtual {p1}, Lcom/hiya/stingray/manager/n1;->b()Lcom/hiya/stingray/t/b0;

    move-result-object v0

    :cond_9
    sget-object p3, Lcom/hiya/stingray/t/b0;->MANUAL_BLOCKED:Lcom/hiya/stingray/t/b0;

    if-ne v0, p3, :cond_b

    .line 13
    sget-object p3, Lcom/hiya/stingray/t/b0;->AUTO_AND_MANUAL_BLOCKED:Lcom/hiya/stingray/t/b0;

    invoke-virtual {p1, p3}, Lcom/hiya/stingray/manager/n1;->d(Lcom/hiya/stingray/t/b0;)V

    .line 14
    sget-object p3, Lg/g/b/c/q;->FRAUD:Lg/g/b/c/q;

    if-ne p2, p3, :cond_a

    sget-object p2, Lcom/hiya/stingray/service/a/a;->BLOCKED_AUTO_FRAUD:Lcom/hiya/stingray/service/a/a;

    goto :goto_2

    .line 15
    :cond_a
    sget-object p2, Lcom/hiya/stingray/service/a/a;->BLOCKED_AUTO_SPAM:Lcom/hiya/stingray/service/a/a;

    .line 16
    :goto_2
    invoke-virtual {p1, p2}, Lcom/hiya/stingray/manager/n1;->c(Lcom/hiya/stingray/service/a/a;)V

    goto :goto_3

    :cond_b
    if-nez p1, :cond_d

    .line 17
    new-instance p1, Lcom/hiya/stingray/manager/n1;

    sget-object p2, Lcom/hiya/stingray/t/b0;->AUTO_BLOCKED:Lcom/hiya/stingray/t/b0;

    sget-object p3, Lcom/hiya/stingray/service/a/a;->AUTO_BLOCK_BLOCK:Lcom/hiya/stingray/service/a/a;

    invoke-direct {p1, p2, p3}, Lcom/hiya/stingray/manager/n1;-><init>(Lcom/hiya/stingray/t/b0;Lcom/hiya/stingray/service/a/a;)V

    goto :goto_3

    :cond_c
    if-nez p1, :cond_d

    .line 18
    new-instance p1, Lcom/hiya/stingray/manager/n1;

    sget-object p2, Lcom/hiya/stingray/t/b0;->NOT_BLOCKED:Lcom/hiya/stingray/t/b0;

    sget-object p3, Lcom/hiya/stingray/service/a/a;->AUTO_BLOCK_PASS:Lcom/hiya/stingray/service/a/a;

    invoke-direct {p1, p2, p3}, Lcom/hiya/stingray/manager/n1;-><init>(Lcom/hiya/stingray/t/b0;Lcom/hiya/stingray/service/a/a;)V

    .line 19
    :cond_d
    :goto_3
    invoke-virtual {p1}, Lcom/hiya/stingray/manager/n1;->b()Lcom/hiya/stingray/t/b0;

    move-result-object p2

    sget-object p3, Lcom/hiya/stingray/t/b0;->NOT_BLOCKED:Lcom/hiya/stingray/t/b0;

    if-ne p2, p3, :cond_e

    if-nez p9, :cond_e

    .line 20
    sget-object p2, Lcom/hiya/stingray/t/b0;->CALL_SCREENER_BLOCKED:Lcom/hiya/stingray/t/b0;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/manager/n1;->d(Lcom/hiya/stingray/t/b0;)V

    .line 21
    sget-object p2, Lcom/hiya/stingray/service/a/a;->BLOCKED_CALL_SCREENER:Lcom/hiya/stingray/service/a/a;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/manager/n1;->c(Lcom/hiya/stingray/service/a/a;)V

    :cond_e
    return-object p1
.end method

.method public final c(Ljava/lang/String;ZZLg/g/b/c/q;Lg/g/b/c/i;ZLg/g/b/c/k;)Li/c/b0/b/v;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lg/g/b/c/q;",
            "Lg/g/b/c/i;",
            "Z",
            "Lg/g/b/c/k;",
            ")",
            "Li/c/b0/b/v<",
            "Lcom/hiya/stingray/manager/n1;",
            ">;"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v0, p5

    move-object/from16 v1, p7

    const-string v4, "phone"

    invoke-static {v2, v4}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "reputationLevel"

    invoke-static {v3, v4}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "entityType"

    invoke-static {v0, v4}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "eventDirection"

    invoke-static {v1, v4}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v4, Lg/g/b/c/k;->OUTGOING:Lg/g/b/c/k;

    if-ne v1, v4, :cond_0

    .line 2
    new-instance v0, Lcom/hiya/stingray/manager/n1;

    .line 3
    sget-object v1, Lcom/hiya/stingray/t/b0;->NOT_BLOCKED:Lcom/hiya/stingray/t/b0;

    .line 4
    sget-object v2, Lcom/hiya/stingray/service/a/a;->AUTO_BLOCK_PASS:Lcom/hiya/stingray/service/a/a;

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/hiya/stingray/manager/n1;-><init>(Lcom/hiya/stingray/t/b0;Lcom/hiya/stingray/service/a/a;)V

    .line 6
    invoke-static {v0}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "Observable.just(\n       \u2026          )\n            )"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_0
    iget-object v1, v12, Lcom/hiya/stingray/manager/w1;->b:Lcom/hiya/stingray/manager/c2;

    iget-object v4, v12, Lcom/hiya/stingray/manager/w1;->e:Lcom/hiya/stingray/manager/h4;

    invoke-virtual {v4}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/hiya/stingray/manager/c2;->d(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v1

    .line 8
    sget-object v4, Lcom/hiya/stingray/manager/w1$c;->f:Lcom/hiya/stingray/manager/w1$c;

    invoke-virtual {v1, v4}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v1

    .line 9
    new-instance v4, Lcom/hiya/stingray/manager/w1$d;

    invoke-direct {v4, v12, v2}, Lcom/hiya/stingray/manager/w1$d;-><init>(Lcom/hiya/stingray/manager/w1;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v1

    .line 10
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v4

    invoke-virtual {v1, v4}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v13

    .line 11
    iget-object v1, v12, Lcom/hiya/stingray/manager/w1;->c:Lcom/hiya/stingray/manager/l4;

    iget-object v4, v12, Lcom/hiya/stingray/manager/w1;->e:Lcom/hiya/stingray/manager/h4;

    invoke-virtual {v4}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/hiya/stingray/manager/l4;->a(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v1

    .line 12
    sget-object v4, Lcom/hiya/stingray/manager/w1$e;->f:Lcom/hiya/stingray/manager/w1$e;

    invoke-virtual {v1, v4}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v1

    .line 13
    new-instance v4, Lcom/hiya/stingray/manager/w1$f;

    invoke-direct {v4, v2}, Lcom/hiya/stingray/manager/w1$f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v1

    .line 14
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v4

    invoke-virtual {v1, v4}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v14

    .line 15
    iget-object v1, v12, Lcom/hiya/stingray/manager/w1;->d:Lcom/hiya/stingray/manager/q1;

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/manager/q1;->m(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v1

    .line 16
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v4

    invoke-virtual {v1, v4}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v15

    .line 17
    iget-object v1, v12, Lcom/hiya/stingray/manager/w1;->d:Lcom/hiya/stingray/manager/q1;

    invoke-virtual {v1, v2}, Lcom/hiya/stingray/manager/q1;->i(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v1

    .line 18
    sget-object v4, Lcom/hiya/stingray/manager/w1$b;->f:Lcom/hiya/stingray/manager/w1$b;

    invoke-virtual {v1, v4}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v1

    .line 19
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v4

    invoke-virtual {v1, v4}, Li/c/b0/b/v;->subscribeOn(Li/c/b0/b/d0;)Li/c/b0/b/v;

    move-result-object v11

    .line 20
    iget-object v1, v12, Lcom/hiya/stingray/manager/w1;->d:Lcom/hiya/stingray/manager/q1;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/q1;->k()Z

    move-result v9

    .line 21
    iget-object v1, v12, Lcom/hiya/stingray/manager/w1;->f:Lcom/hiya/stingray/manager/o2;

    iget-object v4, v12, Lcom/hiya/stingray/manager/w1;->a:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/hiya/stingray/manager/o2;->u(Landroid/content/Context;)Z

    move-result v5

    .line 22
    iget-object v1, v12, Lcom/hiya/stingray/manager/w1;->f:Lcom/hiya/stingray/manager/o2;

    iget-object v4, v12, Lcom/hiya/stingray/manager/w1;->a:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/hiya/stingray/manager/o2;->B(Landroid/content/Context;)Z

    move-result v6

    .line 23
    iget-object v1, v12, Lcom/hiya/stingray/manager/w1;->f:Lcom/hiya/stingray/manager/o2;

    iget-object v4, v12, Lcom/hiya/stingray/manager/w1;->a:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/hiya/stingray/manager/o2;->y(Landroid/content/Context;)Z

    move-result v7

    .line 24
    iget-object v1, v12, Lcom/hiya/stingray/manager/w1;->f:Lcom/hiya/stingray/manager/o2;

    iget-object v4, v12, Lcom/hiya/stingray/manager/w1;->a:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/hiya/stingray/manager/o2;->w(Landroid/content/Context;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    .line 25
    iget-object v1, v12, Lcom/hiya/stingray/manager/w1;->g:Lcom/hiya/stingray/ui/login/o;

    .line 26
    iget-object v10, v12, Lcom/hiya/stingray/manager/w1;->a:Landroid/content/Context;

    .line 27
    sget-object v4, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

    .line 28
    invoke-virtual {v1, v10, v4}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v16, 0x1

    goto :goto_0

    :cond_1
    const/16 v16, 0x0

    .line 29
    :goto_0
    iget-object v1, v12, Lcom/hiya/stingray/manager/w1;->h:Lcom/hiya/stingray/manager/u3;

    move/from16 v4, p2

    move/from16 v10, p3

    invoke-virtual {v1, v3, v0, v4, v10}, Lcom/hiya/stingray/manager/u3;->R(Lg/g/b/c/q;Lg/g/b/c/i;ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, v12, Lcom/hiya/stingray/manager/w1;->h:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->P()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v17, 0x1

    goto :goto_1

    :cond_2
    const/16 v17, 0x0

    .line 30
    :goto_1
    new-instance v8, Lcom/hiya/stingray/manager/w1$a;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move/from16 v4, p3

    move-object v10, v8

    move/from16 v8, p6

    move-object v12, v10

    move/from16 v10, v17

    move-object/from16 v17, v12

    move-object v12, v11

    move/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Lcom/hiya/stingray/manager/w1$a;-><init>(Lcom/hiya/stingray/manager/w1;Ljava/lang/String;Lg/g/b/c/q;ZZZZZZZZ)V

    move-object/from16 v0, v17

    .line 31
    invoke-static {v13, v14, v15, v12, v0}, Li/c/b0/b/v;->zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/i;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "Observable.zip(\n        \u2026         )\n            })"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d(Ljava/util/Set;Ljava/lang/String;)[Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const-string v0, "blacklist"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {p2, v0}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-array p1, v3, [Ljava/lang/Boolean;

    .line 3
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p2, p1, v2

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p2, p1, v1

    return-object p1

    .line 4
    :cond_1
    invoke-static {v0}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-static {p2, v0, v2, v3, v4}, Lkotlin/c0/m;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-array p1, v3, [Ljava/lang/Boolean;

    .line 5
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object p2, p1, v2

    aput-object p2, p1, v1

    return-object p1

    :cond_2
    new-array p1, v3, [Ljava/lang/Boolean;

    .line 6
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p2, p1, v2

    aput-object p2, p1, v1

    return-object p1
.end method

.method public final e(Ljava/lang/String;ZZLg/g/b/c/q;Lg/g/b/c/i;ZLg/g/b/c/k;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Lg/g/b/c/q;",
            "Lg/g/b/c/i;",
            "Z",
            "Lg/g/b/c/k;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reputationLevel"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "entityType"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventDirection"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p7}, Lcom/hiya/stingray/manager/w1;->c(Ljava/lang/String;ZZLg/g/b/c/q;Lg/g/b/c/i;ZLg/g/b/c/k;)Li/c/b0/b/v;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/hiya/stingray/manager/w1$g;->f:Lcom/hiya/stingray/manager/w1$g;

    invoke-virtual {p1, p2}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    const-string p2, "findBlockHint(phone, has\u2026s.isBlocked\n            }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
