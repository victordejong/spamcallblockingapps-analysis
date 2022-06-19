.class public final Le/a/r5/j0$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r5/j0;->g(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.truecaller.whoviewedme.WhoViewedMeManagerImpl$isRevealProfileViewConditionSatisfied$2"
    f = "WhoViewedMeManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/r5/j0;


# direct methods
.method public constructor <init>(Le/a/r5/j0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r5/j0$a;->e:Le/a/r5/j0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/r5/j0$a;

    iget-object v0, p0, Le/a/r5/j0$a;->e:Le/a/r5/j0;

    invoke-direct {p1, v0, p2}, Le/a/r5/j0$a;-><init>(Le/a/r5/j0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/r5/j0$a;->e:Le/a/r5/j0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p2, p1, Le/a/r5/j0;->a:Le/a/u3/g;

    .line 6
    iget-object v0, p2, Le/a/u3/g;->x:Le/a/u3/g$a;

    sget-object v6, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v1, 0x14

    aget-object v1, v6, v1

    invoke-virtual {v0, p2, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p2

    .line 7
    invoke-interface {p2}, Le/a/u3/b;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p1

    .line 9
    invoke-static/range {v0 .. v5}, Le/a/p5/s0/g;->V(Le/a/r5/i0;JLcom/truecaller/whoviewedme/ProfileViewSource;ILjava/lang/Object;)I

    move-result p2

    .line 10
    iget-object p1, p1, Le/a/r5/j0;->a:Le/a/u3/g;

    .line 11
    iget-object v0, p1, Le/a/u3/g;->q:Le/a/u3/g$a;

    const/16 v1, 0xd

    aget-object v1, v6, v1

    invoke-virtual {v0, p1, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    check-cast p1, Le/a/u3/i;

    const/4 v0, 0x4

    .line 12
    invoke-interface {p1, v0}, Le/a/u3/i;->getInt(I)I

    move-result p1

    if-lt p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 13
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/r5/j0$a;->e:Le/a/r5/j0;

    .line 3
    iget-object p1, p1, Le/a/r5/j0;->a:Le/a/u3/g;

    .line 4
    iget-object v0, p1, Le/a/u3/g;->x:Le/a/u3/g$a;

    sget-object v1, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v2, 0x14

    aget-object v2, v1, v2

    invoke-virtual {v0, p1, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 6
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 7
    :cond_0
    iget-object v2, p0, Le/a/r5/j0$a;->e:Le/a/r5/j0;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Le/a/p5/s0/g;->V(Le/a/r5/i0;JLcom/truecaller/whoviewedme/ProfileViewSource;ILjava/lang/Object;)I

    move-result p1

    .line 8
    iget-object v0, p0, Le/a/r5/j0$a;->e:Le/a/r5/j0;

    .line 9
    iget-object v0, v0, Le/a/r5/j0;->a:Le/a/u3/g;

    .line 10
    iget-object v2, v0, Le/a/u3/g;->q:Le/a/u3/g$a;

    const/16 v3, 0xd

    aget-object v1, v1, v3

    invoke-virtual {v2, v0, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    const/4 v1, 0x4

    .line 11
    invoke-interface {v0, v1}, Le/a/u3/i;->getInt(I)I

    move-result v0

    if-lt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
