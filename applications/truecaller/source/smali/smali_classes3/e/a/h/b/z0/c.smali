.class public final Le/a/h/b/z0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/z0/b;


# instance fields
.field public final a:Le/a/k/h;

.field public final b:Le/a/p5/c;

.field public final c:Le/a/h/b/x0/b;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/h/b/s0;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/k/h;Le/a/p5/c;Le/a/h/b/x0/b;Lo3/a;Ljavax/inject/Provider;)V
    .locals 1
    .param p5    # Ljavax/inject/Provider;
        .annotation runtime Ljavax/inject/Named;
            value = "videoCallerIdOnboardingFavoriteContactIntervalDays"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k/h;",
            "Le/a/p5/c;",
            "Le/a/h/b/x0/b;",
            "Lo3/a<",
            "Le/a/h/b/s0;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "videoCallerId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suggestedPremiumManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promoHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerIdOnboardingFavoriteContactIntervalDays"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/b/z0/c;->a:Le/a/k/h;

    iput-object p2, p0, Le/a/h/b/z0/c;->b:Le/a/p5/c;

    iput-object p3, p0, Le/a/h/b/z0/c;->c:Le/a/h/b/x0/b;

    iput-object p4, p0, Le/a/h/b/z0/c;->d:Lo3/a;

    iput-object p5, p0, Le/a/h/b/z0/c;->e:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v2, p1, Le/a/h/b/z0/c$a;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Le/a/h/b/z0/c$a;

    iget v3, v2, Le/a/h/b/z0/c$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/h/b/z0/c$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/h/b/z0/c$a;

    invoke-direct {v2, p0, p1}, Le/a/h/b/z0/c$a;-><init>(Le/a/h/b/z0/c;Ls1/w/d;)V

    :goto_0
    iget-object p1, v2, Le/a/h/b/z0/c$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/h/b/z0/c$a;->e:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Le/a/h/b/z0/c$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/h/b/z0/c;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/h/b/z0/c;->d:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h/b/s0;

    iput-object p0, v2, Le/a/h/b/z0/c$a;->g:Ljava/lang/Object;

    iput v5, v2, Le/a/h/b/z0/c$a;->e:I

    invoke-interface {p1, v2}, Le/a/h/b/s0;->f7(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_3

    return-object v3

    :cond_3
    move-object v2, p0

    .line 5
    :goto_1
    iget-object p1, v2, Le/a/h/b/z0/c;->a:Le/a/k/h;

    invoke-interface {p1}, Le/a/k/h;->z()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, v2, Le/a/h/b/z0/c;->a:Le/a/k/h;

    invoke-interface {p1}, Le/a/k/h;->b()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, v2, Le/a/h/b/z0/c;->c:Le/a/h/b/x0/b;

    invoke-interface {p1}, Le/a/h/b/x0/b;->b()Z

    move-result p1

    if-nez p1, :cond_8

    .line 6
    iget-object p1, v2, Le/a/h/b/z0/c;->d:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/h/b/s0;

    .line 7
    invoke-interface {p1}, Le/a/a/m/j2;->ze()Le/a/a/m/d1;

    move-result-object p1

    sget-object v3, Le/a/a/m/d1$a0;->b:Le/a/a/m/d1$a0;

    invoke-static {p1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, v2, Le/a/h/b/z0/c;->a:Le/a/k/h;

    invoke-interface {p1}, Le/a/k/h;->u()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    .line 8
    :cond_4
    iget-object p1, v2, Le/a/h/b/z0/c;->e:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    .line 9
    move-object v3, p1

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long v3, v3, v6

    if-lez v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    .line 10
    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_8

    .line 12
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    .line 13
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v3, v4}, Ljava/lang/Long;-><init>(J)V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 15
    iget-object p1, v2, Le/a/h/b/z0/c;->a:Le/a/k/h;

    invoke-interface {p1}, Le/a/k/h;->N()J

    move-result-wide v8

    cmp-long p1, v8, v6

    if-nez p1, :cond_7

    return-object v0

    .line 16
    :cond_7
    iget-object p1, v2, Le/a/h/b/z0/c;->b:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->c()J

    move-result-wide v5

    sub-long/2addr v5, v8

    cmp-long p1, v5, v3

    if-ltz p1, :cond_8

    return-object v0

    :cond_8
    :goto_4
    return-object v1
.end method
