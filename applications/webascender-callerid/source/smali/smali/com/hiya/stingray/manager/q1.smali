.class public Lcom/hiya/stingray/manager/q1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/t/i1/i;

.field private final c:Lcom/hiya/stingray/q/b/n;

.field private final d:Lcom/hiya/stingray/manager/e1;

.field private final e:Lcom/hiya/stingray/manager/x3;

.field private final f:Lcom/hiya/stingray/q/d/f;

.field private final g:Lcom/hiya/stingray/manager/o2;

.field private final h:Lcom/hiya/stingray/ui/login/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/t/i1/i;Lcom/hiya/stingray/q/b/n;Lcom/hiya/stingray/manager/x3;Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/manager/o2;Lcom/hiya/stingray/ui/login/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/manager/q1;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/manager/q1;->b:Lcom/hiya/stingray/t/i1/i;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/manager/q1;->c:Lcom/hiya/stingray/q/b/n;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/manager/q1;->e:Lcom/hiya/stingray/manager/x3;

    .line 6
    iput-object p5, p0, Lcom/hiya/stingray/manager/q1;->d:Lcom/hiya/stingray/manager/e1;

    .line 7
    iput-object p6, p0, Lcom/hiya/stingray/manager/q1;->f:Lcom/hiya/stingray/q/d/f;

    .line 8
    iput-object p7, p0, Lcom/hiya/stingray/manager/q1;->g:Lcom/hiya/stingray/manager/o2;

    .line 9
    iput-object p8, p0, Lcom/hiya/stingray/manager/q1;->h:Lcom/hiya/stingray/ui/login/o;

    return-void
.end method

.method static synthetic a(Lcom/hiya/stingray/manager/q1;)Lcom/hiya/stingray/q/b/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/q1;->c:Lcom/hiya/stingray/q/b/n;

    return-object p0
.end method

.method static synthetic b(Lcom/hiya/stingray/manager/q1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/manager/q1;->q(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/hiya/stingray/manager/q1;Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/e;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/manager/q1;->p(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/hiya/stingray/manager/q1;)Lcom/hiya/stingray/t/i1/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/q1;->b:Lcom/hiya/stingray/t/i1/i;

    return-object p0
.end method

.method static synthetic e(Lcom/hiya/stingray/manager/q1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/q1;->s(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic f(Lcom/hiya/stingray/manager/q1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/q1;->r(Ljava/lang/String;)V

    return-void
.end method

.method private n(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/stingray/manager/q1$f;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/manager/q1$f;-><init>(Lcom/hiya/stingray/manager/q1;Ljava/lang/String;)V

    invoke-static {v0}, Li/c/b0/b/v;->fromCallable(Ljava/util/concurrent/Callable;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private p(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/q1;->c:Lcom/hiya/stingray/q/b/n;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/b/n;->b(Ljava/lang/String;)Lcom/google/common/base/j;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/common/base/j;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Realm CallScreener should not be null. updating first response sms"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Li/c/b0/b/e;->r(Ljava/lang/Throwable;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/hiya/stingray/manager/q1;->b:Lcom/hiya/stingray/t/i1/i;

    invoke-virtual {v0}, Lcom/google/common/base/j;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/q/c/i/b;

    invoke-virtual {v1, v0, p2}, Lcom/hiya/stingray/t/i1/i;->c(Lcom/hiya/stingray/q/c/i/b;Ljava/lang/String;)Lcom/hiya/stingray/q/c/i/b;

    .line 5
    iget-object p2, p0, Lcom/hiya/stingray/manager/q1;->c:Lcom/hiya/stingray/q/b/n;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/hiya/stingray/q/b/n;->e(Ljava/util/List;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/q1;->t(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method private q(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/q1;->a:Landroid/content/Context;

    const v1, 0x7f1102d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "incoming.text.rcs"

    goto :goto_0

    :cond_0
    const-string p2, "incoming.text.sms"

    .line 2
    :goto_0
    invoke-static {}, Lcom/hiya/stingray/util/g0/c$a;->b()Lcom/hiya/stingray/util/g0/c$a;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 4
    invoke-virtual {v0, p2}, Lcom/hiya/stingray/util/g0/c$a;->c(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/manager/q1;->d:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p2

    const-string v0, "count_call_text_activity"

    invoke-virtual {p1, v0, p2}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void
.end method

.method private r(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/q1;->e:Lcom/hiya/stingray/manager/x3;

    const-string v1, "call_screener_whitelisted_text_message"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/u;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private s(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/q1;->e:Lcom/hiya/stingray/manager/x3;

    const-string v1, "call_screener_blocked_text_message"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/u;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private t(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/q1;->e:Lcom/hiya/stingray/manager/x3;

    const-string v1, "call_screener_call_again_text_message"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/x3;->q(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/hiya/stingray/util/u;->l(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public g(Ljava/lang/String;)Li/c/b0/b/e;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    new-instance v0, Lcom/hiya/stingray/manager/q1$d;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/manager/q1$d;-><init>(Lcom/hiya/stingray/manager/q1;Ljava/lang/String;)V

    invoke-static {v0}, Li/c/b0/b/e;->t(Ljava/util/concurrent/Callable;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;)Li/c/b0/b/e;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    new-instance v0, Lcom/hiya/stingray/manager/q1$e;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/manager/q1$e;-><init>(Lcom/hiya/stingray/manager/q1;Ljava/lang/String;)V

    invoke-static {v0}, Li/c/b0/b/e;->t(Ljava/util/concurrent/Callable;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    new-instance v0, Lcom/hiya/stingray/manager/q1$b;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/manager/q1$b;-><init>(Lcom/hiya/stingray/manager/q1;Ljava/lang/String;)V

    invoke-static {v0}, Li/c/b0/b/v;->fromCallable(Ljava/util/concurrent/Callable;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public j()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/q1;->l()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/q1;->f:Lcom/hiya/stingray/q/d/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/q/d/f;->A(Z)V

    :cond_0
    return-void
.end method

.method public k()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/q1;->g:Lcom/hiya/stingray/manager/o2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/o2;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/stingray/manager/q1;->h:Lcom/hiya/stingray/ui/login/o;

    iget-object v1, p0, Lcom/hiya/stingray/manager/q1;->a:Landroid/content/Context;

    sget-object v2, Lcom/hiya/stingray/util/n;->d:[Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/ui/login/o;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Ljava/lang/Boolean;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/q1;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 2
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/util/Locale;->CANADA:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 3
    iget-object v2, p0, Lcom/hiya/stingray/manager/q1;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/hiya/stingray/util/d0;->c(Landroid/content/Context;)Lcom/google/common/base/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/common/base/j;->g()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-ge v3, v0, :cond_3

    .line 5
    aget-object v5, v1, v3

    .line 6
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    :goto_1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    .line 8
    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public m(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    new-instance v0, Lcom/hiya/stingray/manager/q1$a;

    invoke-direct {v0, p0, p1}, Lcom/hiya/stingray/manager/q1$a;-><init>(Lcom/hiya/stingray/manager/q1;Ljava/lang/String;)V

    invoke-static {v0}, Li/c/b0/b/v;->fromCallable(Ljava/util/concurrent/Callable;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/e;
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1
    :goto_0
    invoke-static {v2}, Lcom/google/common/base/m;->d(Z)V

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 2
    :goto_1
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 3
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/q1;->n(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/manager/q1$c;

    invoke-direct {v1, p0, p2, p1}, Lcom/hiya/stingray/manager/q1$c;-><init>(Lcom/hiya/stingray/manager/q1;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Li/c/b0/b/v;->ignoreElements()Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method
