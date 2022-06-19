.class public final Le/a/d/a/v$d;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/a/v;->o(Ljava/util/Set;)Lq3/a/n0;
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
        "Lcom/truecaller/voip/groupcall/action/InviteResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.debug.MockGroupCall$inviteByNumbers$1"
    f = "MockGroupCall.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/d/a/v;

.field public final synthetic f:Ljava/util/Set;


# direct methods
.method public constructor <init>(Le/a/d/a/v;Ljava/util/Set;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/a/v$d;->e:Le/a/d/a/v;

    iput-object p2, p0, Le/a/d/a/v$d;->f:Ljava/util/Set;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/d/a/v$d;

    iget-object v0, p0, Le/a/d/a/v$d;->e:Le/a/d/a/v;

    iget-object v1, p0, Le/a/d/a/v$d;->f:Ljava/util/Set;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/a/v$d;-><init>(Le/a/d/a/v;Ljava/util/Set;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/a/v$d;

    iget-object v0, p0, Le/a/d/a/v$d;->e:Le/a/d/a/v;

    iget-object v1, p0, Le/a/d/a/v$d;->f:Ljava/util/Set;

    invoke-direct {p1, v0, v1, p2}, Le/a/d/a/v$d;-><init>(Le/a/d/a/v;Ljava/util/Set;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/a/v$d;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/d/a/v$d;->f:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 5
    check-cast v2, Ljava/lang/String;

    .line 6
    iget-object v3, p0, Le/a/d/a/v$d;->e:Le/a/d/a/v;

    .line 7
    iget-object v3, v3, Le/a/d/a/v;->j:Le/a/d/a/p;

    .line 8
    invoke-virtual {v3, v2}, Le/a/d/a/p;->w(Ljava/lang/String;)I

    move-result v2

    .line 9
    new-instance v3, Le/a/d/a/o;

    iget-object v4, p0, Le/a/d/a/v$d;->e:Le/a/d/a/v;

    .line 10
    iget-object v4, v4, Le/a/d/a/v;->j:Le/a/d/a/p;

    .line 11
    invoke-direct {v3, v2, v4}, Le/a/d/a/o;-><init>(ILe/a/d/a/p;)V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d/a/o;

    .line 13
    iget-object v3, p0, Le/a/d/a/v$d;->e:Le/a/d/a/v;

    .line 14
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v6, Le/a/d/a/w;

    const/4 v4, 0x0

    invoke-direct {v6, v3, v2, v4}, Le/a/d/a/w;-><init>(Le/a/d/a/v;Le/a/d/a/o;Ls1/w/d;)V

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_1

    .line 16
    :cond_1
    iget-object p1, p0, Le/a/d/a/v$d;->e:Le/a/d/a/v;

    .line 17
    iget-object p1, p1, Le/a/d/a/v;->j:Le/a/d/a/p;

    .line 18
    iget-object v2, p0, Le/a/d/a/v$d;->f:Ljava/util/Set;

    .line 19
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    iget-object v4, p0, Le/a/d/a/v$d;->e:Le/a/d/a/v;

    .line 23
    iget-object v4, v4, Le/a/d/a/v;->j:Le/a/d/a/p;

    .line 24
    invoke-virtual {v4, v2}, Le/a/d/a/p;->w(Ljava/lang/String;)I

    move-result v2

    .line 25
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    .line 26
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-static {v3}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1, v1}, Le/a/d/a/p;->u(Ljava/util/Set;)V

    .line 27
    iget-object p1, p0, Le/a/d/a/v$d;->e:Le/a/d/a/v;

    .line 28
    iget-object p1, p1, Le/a/d/a/v;->f:Lq3/a/x2/a1;

    .line 29
    invoke-interface {p1}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {v1, v0}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 30
    sget-object p1, Lcom/truecaller/voip/groupcall/action/InviteResult;->INVITED:Lcom/truecaller/voip/groupcall/action/InviteResult;

    return-object p1
.end method
