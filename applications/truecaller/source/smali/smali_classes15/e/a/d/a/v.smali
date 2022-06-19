.class public final Le/a/d/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/v/b;
.implements Lq3/a/i0;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/truecaller/voip/groupcall/call/CallDirection;

.field public final c:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Le/a/d/v/h;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Le/a/d/c0/x1/b;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Le/a/d/v/a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Ljava/util/Set<",
            "Le/a/d/a/o;",
            ">;>;"
        }
    .end annotation
.end field

.field public final g:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Le/a/d/v/k/z;",
            ">;>;"
        }
    .end annotation
.end field

.field public final i:Lq3/a/y;

.field public final j:Le/a/d/a/p;


# direct methods
.method public constructor <init>(Le/a/d/a/p;)V
    .locals 8

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/a/v;->j:Le/a/d/a/p;

    const-string v0, "1234"

    .line 2
    iput-object v0, p0, Le/a/d/a/v;->a:Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/truecaller/voip/groupcall/call/CallDirection;->OUTGOING:Lcom/truecaller/voip/groupcall/call/CallDirection;

    iput-object v0, p0, Le/a/d/a/v;->b:Lcom/truecaller/voip/groupcall/call/CallDirection;

    .line 4
    sget-object v0, Le/a/d/v/h$a;->b:Le/a/d/v/h$a;

    invoke-static {v0}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object v0

    iput-object v0, p0, Le/a/d/a/v;->c:Lq3/a/x2/a1;

    .line 5
    new-instance v0, Le/a/d/c0/x1/b;

    .line 6
    sget-object v1, Le/a/d/c0/x1/a$b;->a:Le/a/d/c0/x1/a$b;

    .line 7
    sget-object v2, Ls1/u/s;->a:Ls1/u/s;

    .line 8
    invoke-direct {v0, v1, v2}, Le/a/d/c0/x1/b;-><init>(Le/a/d/c0/x1/a;Ljava/util/List;)V

    .line 9
    invoke-static {v0}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object v0

    iput-object v0, p0, Le/a/d/a/v;->d:Lq3/a/x2/a1;

    .line 10
    new-instance v0, Le/a/d/v/a;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {v0, v1, v1, v1, v2}, Le/a/d/v/a;-><init>(ZZZI)V

    invoke-static {v0}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object v0

    iput-object v0, p0, Le/a/d/a/v;->e:Lq3/a/x2/a1;

    .line 11
    sget-object v0, Ls1/u/u;->a:Ls1/u/u;

    invoke-static {v0}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object v0

    iput-object v0, p0, Le/a/d/a/v;->f:Lq3/a/x2/a1;

    const/4 v0, 0x0

    .line 12
    invoke-static {v0}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object v1

    iput-object v1, p0, Le/a/d/a/v;->g:Lq3/a/x2/a1;

    .line 13
    sget-object v1, Ls1/u/t;->a:Ls1/u/t;

    invoke-static {v1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object v1

    iput-object v1, p0, Le/a/d/a/v;->h:Lq3/a/x2/a1;

    const/4 v1, 0x1

    .line 14
    invoke-static {v0, v1, v0}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object v1

    iput-object v1, p0, Le/a/d/a/v;->i:Lq3/a/y;

    .line 15
    iget-object p1, p1, Le/a/d/a/p;->a:Lq3/a/x2/a1;

    .line 16
    invoke-interface {p1}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 19
    check-cast v2, Le/a/d/c0/z1/e;

    .line 20
    new-instance v3, Le/a/d/a/o;

    .line 21
    iget v2, v2, Le/a/d/c0/z1/e;->a:I

    .line 22
    iget-object v4, p0, Le/a/d/a/v;->j:Le/a/d/a/p;

    .line 23
    invoke-direct {v3, v2, v4}, Le/a/d/a/o;-><init>(ILe/a/d/a/p;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v1}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    .line 25
    iget-object v1, p0, Le/a/d/a/v;->f:Lq3/a/x2/a1;

    .line 26
    invoke-interface {v1, p1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    .line 27
    new-instance v5, Le/a/d/a/x;

    invoke-direct {v5, p0, v0}, Le/a/d/a/x;-><init>(Le/a/d/a/v;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public Y()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/a/v;->d:Lq3/a/x2/a1;

    return-object v0
.end method

.method public a()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/a/v;->f:Lq3/a/x2/a1;

    return-object v0
.end method

.method public b()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/a/v;->e:Lq3/a/x2/a1;

    return-object v0
.end method

.method public c(Le/a/d/c0/x1/a;)Lq3/a/p1;
    .locals 7

    const-string v0, "route"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/d/a/v$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/d/a/v$a;-><init>(Le/a/d/a/v;Le/a/d/c0/x1/a;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public d()Le/a/d/c0/z1/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/a/v;->j:Le/a/d/a/p;

    return-object v0
.end method

.method public e(Z)Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/a/v$e;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/d/a/v$e;-><init>(Le/a/d/a/v;ZLs1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public f()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/a/v;->g:Lq3/a/x2/a1;

    return-object v0
.end method

.method public g()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/a/v$g;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/a/v$g;-><init>(Le/a/d/a/v;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/a/v;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    sget-object v0, Lq3/a/t0;->d:Lq3/a/g0;

    .line 2
    iget-object v1, p0, Le/a/d/a/v;->i:Lq3/a/y;

    invoke-virtual {v0, v1}, Ls1/w/a;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/a/v;->c:Lq3/a/x2/a1;

    return-object v0
.end method

.method public h(Z)Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/a/v$f;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/d/a/v$f;-><init>(Le/a/d/a/v;ZLs1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public i()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/a/v;->h:Lq3/a/x2/a1;

    return-object v0
.end method

.method public j(Ljava/util/Set;)Lq3/a/p1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lq3/a/p1;"
        }
    .end annotation

    const-string v0, "inviteNumbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/d/a/v$b;

    const/4 p1, 0x0

    invoke-direct {v4, p1}, Le/a/d/a/v$b;-><init>(Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public k(Le/a/d/v/h$b;)Lq3/a/p1;
    .locals 7

    const-string v0, "endState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/d/a/v$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/d/a/v$c;-><init>(Le/a/d/a/v;Le/a/d/v/h$b;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public m()Lcom/truecaller/voip/groupcall/call/CallDirection;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/a/v;->b:Lcom/truecaller/voip/groupcall/call/CallDirection;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Le/a/d/c0/x0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    return-object v0
.end method

.method public o(Ljava/util/Set;)Lq3/a/n0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lq3/a/n0<",
            "Lcom/truecaller/voip/groupcall/action/InviteResult;",
            ">;"
        }
    .end annotation

    const-string v0, "numbers"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/d/a/v$d;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/d/a/v$d;-><init>(Le/a/d/a/v;Ljava/util/Set;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    return-object p1
.end method

.method public q()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/a/v$h;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/a/v$h;-><init>(Le/a/d/a/v;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method
