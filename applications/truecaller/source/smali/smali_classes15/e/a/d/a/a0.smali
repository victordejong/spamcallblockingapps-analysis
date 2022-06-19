.class public final Le/a/d/a/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/w/b;
.implements Lq3/a/i0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ls1/g;

.field public c:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Le/a/d/w/h;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Le/a/d/b0/a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lq3/a/y;

.field public final f:Le/a/d/a/p;

.field public final g:Le/a/d/v/d;


# direct methods
.method public constructor <init>(Le/a/d/a/p;Le/a/d/v/d;Le/a/d/c0/y0;)V
    .locals 1

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupCallManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/a/a0;->f:Le/a/d/a/p;

    iput-object p2, p0, Le/a/d/a/a0;->g:Le/a/d/v/d;

    const-string p1, "1234"

    .line 2
    iput-object p1, p0, Le/a/d/a/a0;->a:Ljava/lang/String;

    .line 3
    new-instance p1, Le/a/d/a/a0$e;

    invoke-direct {p1, p0, p3}, Le/a/d/a/a0$e;-><init>(Le/a/d/a/a0;Le/a/d/c0/y0;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d/a/a0;->b:Ls1/g;

    .line 4
    sget-object p1, Le/a/d/w/h$a;->b:Le/a/d/w/h$a;

    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Le/a/d/a/a0;->c:Lq3/a/x2/a1;

    const/4 p1, 0x0

    .line 5
    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p2

    iput-object p2, p0, Le/a/d/a/a0;->d:Lq3/a/x2/a1;

    const/4 p2, 0x1

    .line 6
    invoke-static {p1, p2, p1}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/d/a/a0;->e:Lq3/a/y;

    return-void
.end method


# virtual methods
.method public a()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/a/a0$d;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/a/a0$d;-><init>(Le/a/d/a/a0;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public b()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/a/a0$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/a/a0$a;-><init>(Le/a/d/a/a0;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public c()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/a/a0$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/a/a0$b;-><init>(Le/a/d/a/a0;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public d()Le/a/d/c0/z1/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/a/a0;->f:Le/a/d/a/p;

    return-object v0
.end method

.method public e(Le/a/d/w/h$b;)Lq3/a/p1;
    .locals 7

    const-string v0, "endState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/d/a/a0$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/d/a/a0$c;-><init>(Le/a/d/a/a0;Le/a/d/w/h$b;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public f(Le/a/d/b0/a;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/b0/a;",
            ")",
            "Ljava/util/List<",
            "Le/a/d/c0/x0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    return-object p1
.end method

.method public g()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/a/a0;->d:Lq3/a/x2/a1;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/a/a0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    sget-object v0, Lq3/a/t0;->d:Lq3/a/g0;

    .line 2
    iget-object v1, p0, Le/a/d/a/a0;->e:Lq3/a/y;

    invoke-virtual {v0, v1}, Ls1/w/a;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/a/a0;->c:Lq3/a/x2/a1;

    return-object v0
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/d/a/a0;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
