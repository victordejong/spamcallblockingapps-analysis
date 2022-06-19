.class public final Le/a/f4/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/u$b;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Le/a/p5/c;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/z4/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Le/a/p5/c;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;>;",
            "Le/a/p5/c;",
            "Lo3/a<",
            "Le/a/z4/d;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "eventsTracker"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "generalSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f4/c/a;->a:Lo3/a;

    iput-object p2, p0, Le/a/f4/c/a;->b:Le/a/p5/c;

    iput-object p3, p0, Le/a/f4/c/a;->c:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Lu3/f;)Lu3/u;
    .locals 5

    const-string v0, "call"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Lu3/p0/g/e;

    .line 2
    iget-object p1, p1, Lu3/p0/g/e;->q:Lu3/g0;

    .line 3
    iget-object p1, p1, Lu3/g0;->b:Lu3/a0;

    .line 4
    iget-object p1, p1, Lu3/a0;->e:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    iget-object v0, p0, Le/a/f4/c/a;->c:Lo3/a;

    .line 7
    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/z4/d;

    const-string v1, "httpAnalyitcsHosts"

    const-string v2, ""

    .line 8
    invoke-interface {v0, v1, v2}, Le/a/z4/d;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "generalSettings\n        \u2026HTTP_ANALYTICS_HOSTS, \"\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ","

    .line 9
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 12
    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x2

    .line 15
    invoke-static {p1, v1, v3, v2}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    :cond_4
    :goto_1
    if-eqz v3, :cond_5

    .line 16
    new-instance v0, Le/a/f4/c/c;

    .line 17
    iget-object v1, p0, Le/a/f4/c/a;->a:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "eventsTracker.get()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Le/a/r2/f;

    .line 18
    iget-object v2, p0, Le/a/f4/c/a;->b:Le/a/p5/c;

    .line 19
    invoke-direct {v0, v1, v2, p1}, Le/a/f4/c/c;-><init>(Le/a/r2/f;Le/a/p5/c;Ljava/lang/String;)V

    goto :goto_2

    .line 20
    :cond_5
    sget-object v0, Le/a/f4/c/d;->b:Le/a/f4/c/d;

    :goto_2
    return-object v0
.end method
