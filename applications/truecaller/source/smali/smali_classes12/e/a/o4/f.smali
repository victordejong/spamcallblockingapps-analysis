.class public final Le/a/o4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o4/e;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ls1/w/f;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o4/g;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Ls1/w/f;Lo3/a;Lo3/a;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/b0/e/l;",
            ">;",
            "Ls1/w/f;",
            "Lo3/a<",
            "Le/a/o4/g;",
            ">;",
            "Lo3/a<",
            "Le/a/q2/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "accountManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bgCouritineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pushIdProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/o4/f;->a:Lo3/a;

    iput-object p2, p0, Le/a/o4/f;->b:Ls1/w/f;

    iput-object p3, p0, Le/a/o4/f;->c:Lo3/a;

    iput-object p4, p0, Le/a/o4/f;->d:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Le/a/o4/d;)Z
    .locals 6

    .line 1
    const-class v0, Le/a/o4/e;

    iget-object v1, p0, Le/a/o4/f;->a:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/e/l;

    invoke-interface {v1}, Le/a/b0/e/l;->d()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Le/a/o4/f;->c:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/o4/g;

    invoke-interface {p1}, Le/a/o4/g;->a()Le/a/o4/d;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": push ID is NULL"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Le/a/o4/f;->d(Ljava/lang/String;)V

    .line 4
    new-instance p1, Le/a/o4/a;

    invoke-direct {p1}, Le/a/o4/a;-><init>()V

    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    return v2

    .line 5
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": push ID for registration: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Le/a/o4/f;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 6
    :try_start_0
    invoke-static {p1}, Le/a/l4/k;->c(Le/a/o4/d;)Lcom/truecaller/push/PushIdDto;

    move-result-object v3

    const-string v4, "token"

    .line 7
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v4, Lcom/truecaller/common/network/util/KnownEndpoints;->PUSHID:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v5, Le/a/o4/j;

    invoke-static {v4, v5}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/o4/j;

    .line 9
    invoke-interface {v4, v3}, Le/a/o4/j;->a(Lcom/truecaller/push/PushIdDto;)Lx3/b;

    move-result-object v3

    .line 10
    invoke-interface {v3}, Lx3/b;->execute()Lx3/a0;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 11
    invoke-static {v3}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v3

    new-array v4, v2, [Ljava/lang/String;

    .line 12
    invoke-static {v3, v4}, Lcom/truecaller/log/AssertionUtil;->shouldNeverHappen(Ljava/lang/Throwable;[Ljava/lang/String;)V

    :goto_1
    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v1}, Lx3/a0;->b()Z

    move-result v1

    if-ne v1, v3, :cond_4

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": push ID is registered: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/a/o4/f;->d(Ljava/lang/String;)V

    .line 15
    iget-object v0, p1, Le/a/o4/d;->b:Le/a/d4/e;

    .line 16
    sget-object v1, Le/a/d4/e$a;->c:Le/a/d4/e$a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    iget-object v0, p0, Le/a/o4/f;->d:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q2/a;

    .line 18
    iget-object p1, p1, Le/a/o4/d;->a:Ljava/lang/String;

    .line 19
    invoke-interface {v0, p1}, Le/a/q2/a;->c(Ljava/lang/String;)V

    :cond_3
    move v2, v3

    :cond_4
    return v2
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o4/f;->a:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    return v0
.end method

.method public c(Le/a/o4/d;)V
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/o4/f;->b:Ls1/w/f;

    new-instance v3, Le/a/o4/f$a;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Le/a/o4/f$a;-><init>(Le/a/o4/f;Le/a/o4/d;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    invoke-static {v0}, Le/a/n3/a/b;->a([Ljava/lang/Object;)V

    return-void
.end method
