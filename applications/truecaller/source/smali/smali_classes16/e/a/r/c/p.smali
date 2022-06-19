.class public final Le/a/r/c/p;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.wizard.utils.ReturningUserHelperImpl$isReturningUser$2"
    f = "ReturningUserHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# direct methods
.method public constructor <init>(Ls1/w/d;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/r/c/p;

    invoke-direct {p1, p2}, Le/a/r/c/p;-><init>(Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    :try_start_0
    sget-object p2, Lcom/truecaller/common/network/util/KnownEndpoints;->LAST_ACTIVITY:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v0, Le/a/b0/b/k/a;

    invoke-static {p2, v0}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/b0/b/k/a;

    invoke-interface {p2}, Le/a/b0/b/k/a;->a()Lx3/b;

    move-result-object p2

    .line 6
    invoke-interface {p2}, Lx3/b;->execute()Lx3/a0;

    move-result-object p2

    .line 7
    iget-object p2, p2, Lx3/a0;->a:Lu3/k0;

    .line 8
    iget p2, p2, Lu3/k0;->e:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 9
    :catch_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    :try_start_0
    sget-object v0, Lcom/truecaller/common/network/util/KnownEndpoints;->LAST_ACTIVITY:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v1, Le/a/b0/b/k/a;

    invoke-static {v0, v1}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/b/k/a;

    invoke-interface {v0}, Le/a/b0/b/k/a;->a()Lx3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Lx3/b;->execute()Lx3/a0;

    move-result-object v0

    .line 4
    iget-object v0, v0, Lx3/a0;->a:Lu3/k0;

    .line 5
    iget v0, v0, Lu3/k0;->e:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 6
    :catch_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
