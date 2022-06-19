.class public Lcom/hiya/stingray/r/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/manager/s2;

.field private final c:Lcom/hiya/stingray/ui/login/o;

.field private final d:Lcom/hiya/stingray/q/b/y;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/s2;Lcom/hiya/stingray/ui/login/o;Lcom/hiya/stingray/q/b/y;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "experimentManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionHandler"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberInfoProvider"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/r/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/r/a;->b:Lcom/hiya/stingray/manager/s2;

    iput-object p3, p0, Lcom/hiya/stingray/r/a;->c:Lcom/hiya/stingray/ui/login/o;

    iput-object p4, p0, Lcom/hiya/stingray/r/a;->d:Lcom/hiya/stingray/q/b/y;

    return-void
.end method

.method private final c()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/r/a;->b:Lcom/hiya/stingray/manager/s2;

    sget-object v1, Lcom/hiya/stingray/manager/s2$c;->USER_REPORTS:Lcom/hiya/stingray/manager/s2$c;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/hiya/stingray/manager/s2;->r(Lcom/hiya/stingray/manager/s2;Lcom/hiya/stingray/manager/s2$c;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/r/a;->c:Lcom/hiya/stingray/ui/login/o;

    iget-object v1, p0, Lcom/hiya/stingray/r/a;->a:Landroid/content/Context;

    sget-object v3, Lcom/hiya/stingray/util/n;->f:[Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method


# virtual methods
.method public a(Lcom/hiya/stingray/t/d0;)Li/c/b0/b/e0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/t/d0;",
            ")",
            "Li/c/b0/b/e0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "callLogItem"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/r/a;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hiya/stingray/util/p;->w(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->m()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object v0

    const-string v3, "callLogItem.identityData"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/hiya/stingray/t/n0;->e()Lcom/hiya/stingray/t/o0;

    move-result-object v0

    sget-object v3, Lcom/hiya/stingray/t/o0;->CONTACT:Lcom/hiya/stingray/t/o0;

    if-eq v0, v3, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->j()Lcom/hiya/stingray/t/f0;

    move-result-object v0

    sget-object v3, Lcom/hiya/stingray/t/f0;->INCOMING:Lcom/hiya/stingray/t/f0;

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0xf

    .line 3
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->k()I

    move-result v4

    const-string v5, "callLogItem.reputationDataItem"

    if-le v2, v4, :cond_1

    goto :goto_1

    :cond_1
    if-le v3, v4, :cond_2

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/hiya/stingray/t/f1/c;->c(Lcom/hiya/stingray/t/y0;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x0

    .line 4
    :goto_2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->k()I

    move-result v4

    const/16 v6, 0xa

    if-le v4, v6, :cond_3

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->q()Lcom/hiya/stingray/t/y0;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/hiya/stingray/t/f1/c;->c(Lcom/hiya/stingray/t/y0;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    if-eqz v0, :cond_5

    if-nez v3, :cond_4

    if-eqz v4, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    if-nez v1, :cond_6

    .line 5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Li/c/b0/b/e0;->s(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object p1

    const-string v0, "Single.just(false)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 6
    :cond_6
    iget-object v0, p0, Lcom/hiya/stingray/r/a;->d:Lcom/hiya/stingray/q/b/y;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object p1

    const-string v1, "callLogItem.phone"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/b/y;->d(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/e0;->q(Li/c/b0/b/a0;)Li/c/b0/b/e0;

    move-result-object p1

    .line 7
    sget-object v0, Lcom/hiya/stingray/r/a$b;->f:Lcom/hiya/stingray/r/a$b;

    invoke-virtual {p1, v0}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    const-string v0, "Single.fromObservable(ph\u2026!it.get().repliedIsSpam }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public b(Lcom/hiya/stingray/t/s0;Lcom/hiya/stingray/notification/p;)Li/c/b0/b/e0;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/t/s0;",
            "Lcom/hiya/stingray/notification/p;",
            ")",
            "Li/c/b0/b/e0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationType"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/r/a;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/hiya/stingray/util/p;->w(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->b()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/hiya/stingray/notification/p;->POST_CALL:Lcom/hiya/stingray/notification/p;

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->e()Lcom/hiya/stingray/t/n0;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/hiya/stingray/t/n0;->e()Lcom/hiya/stingray/t/o0;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    sget-object v0, Lcom/hiya/stingray/t/o0;->CONTACT:Lcom/hiya/stingray/t/o0;

    if-eq p2, v0, :cond_1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->c()Lcom/hiya/stingray/util/i$a;

    move-result-object p2

    sget-object v0, Lcom/hiya/stingray/util/i$a;->INCOMING:Lcom/hiya/stingray/util/i$a;

    if-ne p2, v0, :cond_1

    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->h()Lcom/hiya/stingray/util/i$b;

    move-result-object p2

    sget-object v0, Lcom/hiya/stingray/util/i$b;->UNRECOGNIZED:Lcom/hiya/stingray/util/i$b;

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 3
    :goto_1
    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Lkotlin/w/c/k;->h(II)I

    move-result v0

    if-lez v0, :cond_4

    .line 5
    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->d()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0xf

    invoke-static {v0, v4}, Lkotlin/w/c/k;->h(II)I

    move-result v0

    if-gez v0, :cond_4

    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->g()Lcom/hiya/stingray/t/y0;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/hiya/stingray/t/f1/c;->c(Lcom/hiya/stingray/t/y0;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 6
    :cond_3
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_4
    const/4 v0, 0x0

    .line 7
    :goto_2
    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->d()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 8
    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->d()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v4, 0xa

    invoke-static {v1, v4}, Lkotlin/w/c/k;->h(II)I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->g()Lcom/hiya/stingray/t/y0;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {v1}, Lcom/hiya/stingray/t/f1/c;->c(Lcom/hiya/stingray/t/y0;)Z

    move-result v1

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_6
    const/4 v1, 0x0

    :goto_3
    if-eqz p2, :cond_7

    if-nez v0, :cond_8

    if-eqz v1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :cond_8
    :goto_4
    if-nez v2, :cond_9

    .line 9
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Li/c/b0/b/e0;->s(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object p1

    const-string p2, "Single.just(false)"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 10
    :cond_9
    iget-object p2, p0, Lcom/hiya/stingray/r/a;->d:Lcom/hiya/stingray/q/b/y;

    invoke-virtual {p1}, Lcom/hiya/stingray/t/s0;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "item.phone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/hiya/stingray/q/b/y;->d(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/e0;->q(Li/c/b0/b/a0;)Li/c/b0/b/e0;

    move-result-object p1

    .line 11
    sget-object p2, Lcom/hiya/stingray/r/a$a;->f:Lcom/hiya/stingray/r/a$a;

    invoke-virtual {p1, p2}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    const-string p2, "Single.fromObservable(ph\u2026!it.get().repliedIsSpam }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final d(Ljava/lang/String;)Li/c/b0/b/e;
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/r/a;->d:Lcom/hiya/stingray/q/b/y;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/b/y;->e(Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method
