.class public final Le/a/d/v/l/e/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/v/l/e/k;


# instance fields
.field public final a:Lq3/a/i0;

.field public final b:I

.field public final c:Le/a/d/c0/z1/i;

.field public final d:Le/a/d/x/q/h;

.field public final e:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "Le/a/d/x/r/i;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Le/a/d/x/r/h;


# direct methods
.method public constructor <init>(Lq3/a/i0;ILe/a/d/c0/z1/i;Le/a/d/x/q/h;Lq3/a/x2/f;Lq3/a/x2/f;Le/a/d/x/r/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "I",
            "Le/a/d/c0/z1/i;",
            "Le/a/d/x/q/h;",
            "Lq3/a/x2/f<",
            "Le/a/d/x/r/i;",
            ">;",
            "Lq3/a/x2/f<",
            "Ljava/lang/Boolean;",
            ">;",
            "Le/a/d/x/r/h;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callInfoRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtcManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attribute"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "busyAttribute"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmChannel"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/v/l/e/l;->a:Lq3/a/i0;

    iput p2, p0, Le/a/d/v/l/e/l;->b:I

    iput-object p3, p0, Le/a/d/v/l/e/l;->c:Le/a/d/c0/z1/i;

    iput-object p4, p0, Le/a/d/v/l/e/l;->d:Le/a/d/x/q/h;

    iput-object p5, p0, Le/a/d/v/l/e/l;->e:Lq3/a/x2/f;

    iput-object p6, p0, Le/a/d/v/l/e/l;->f:Lq3/a/x2/f;

    iput-object p7, p0, Le/a/d/v/l/e/l;->g:Le/a/d/x/r/h;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lq3/a/x2/f<",
            "+",
            "Le/a/d/v/l/e/m;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/d/v/l/e/l$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/d/v/l/e/l$d;

    iget v1, v0, Le/a/d/v/l/e/l$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/v/l/e/l$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/v/l/e/l$d;

    invoke-direct {v0, p0, p1}, Le/a/d/v/l/e/l$d;-><init>(Le/a/d/v/l/e/l;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/d/v/l/e/l$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/v/l/e/l$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/d/v/l/e/l$d;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d/v/l/e/l;

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
    iget-object p1, p0, Le/a/d/v/l/e/l;->c:Le/a/d/c0/z1/i;

    iget v2, p0, Le/a/d/v/l/e/l;->b:I

    iput-object p0, v0, Le/a/d/v/l/e/l$d;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/d/v/l/e/l$d;->e:I

    invoke-interface {p1, v2, v0}, Le/a/d/c0/z1/i;->t(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 5
    iget-object v1, v0, Le/a/d/v/l/e/l;->d:Le/a/d/x/q/h;

    invoke-interface {v1, p1}, Le/a/d/x/q/h;->i(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6
    sget-object p1, Le/a/d/v/l/e/m$c;->a:Le/a/d/v/l/e/m$c;

    .line 7
    new-instance v0, Lq3/a/x2/k;

    invoke-direct {v0, p1}, Lq3/a/x2/k;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 8
    :cond_4
    new-instance v1, Le/a/d/v/l/e/l$f;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Le/a/d/v/l/e/l$f;-><init>(Le/a/d/v/l/e/l;Ls1/w/d;)V

    .line 9
    new-instance v4, Lq3/a/x2/d1;

    invoke-direct {v4, v1}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    .line 10
    new-instance v1, Le/a/d/v/l/e/l$g;

    invoke-direct {v1, v0, p1, v2}, Le/a/d/v/l/e/l$g;-><init>(Le/a/d/v/l/e/l;ILs1/w/d;)V

    .line 11
    new-instance p1, Lq3/a/x2/d1;

    invoke-direct {p1, v1}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    .line 12
    iget-object v1, v0, Le/a/d/v/l/e/l;->e:Lq3/a/x2/f;

    .line 13
    new-instance v5, Le/a/d/v/l/e/l$c;

    invoke-direct {v5, v1}, Le/a/d/v/l/e/l$c;-><init>(Lq3/a/x2/f;)V

    .line 14
    iget-object v6, v0, Le/a/d/v/l/e/l;->g:Le/a/d/x/r/h;

    invoke-interface {v6}, Le/a/d/x/r/h;->o()Lq3/a/x2/i1;

    move-result-object v6

    new-instance v7, Le/a/d/v/l/e/l$h;

    invoke-direct {v7, v2}, Le/a/d/v/l/e/l$h;-><init>(Ls1/w/d;)V

    .line 15
    new-instance v8, Lq3/a/x2/w0;

    invoke-direct {v8, v1, v6, v7}, Lq3/a/x2/w0;-><init>(Lq3/a/x2/f;Lq3/a/x2/f;Ls1/z/b/q;)V

    .line 16
    new-instance v1, Lq3/a/x2/t0;

    invoke-direct {v1, v8}, Lq3/a/x2/t0;-><init>(Lq3/a/x2/f;)V

    .line 17
    new-instance v6, Le/a/d/v/l/e/l$a;

    invoke-direct {v6, v1}, Le/a/d/v/l/e/l$a;-><init>(Lq3/a/x2/f;)V

    .line 18
    new-instance v1, Le/a/d/v/l/e/l$b;

    invoke-direct {v1, v2, v0}, Le/a/d/v/l/e/l$b;-><init>(Ls1/w/d;Le/a/d/v/l/e/l;)V

    invoke-static {v6, v1}, Ls1/a/a/a/v0/f/d;->P3(Lq3/a/x2/f;Ls1/z/b/q;)Lq3/a/x2/f;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Lq3/a/x2/f;

    const/4 v6, 0x0

    aput-object p1, v1, v6

    aput-object v5, v1, v3

    const/4 p1, 0x2

    aput-object v0, v1, p1

    const/4 p1, 0x3

    aput-object v4, v1, p1

    .line 19
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->F2([Lq3/a/x2/f;)Lq3/a/x2/f;

    move-result-object p1

    .line 20
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->F0(Lq3/a/x2/f;)Lq3/a/x2/f;

    move-result-object p1

    .line 21
    new-instance v0, Le/a/d/v/l/e/l$e;

    invoke-direct {v0, v2}, Le/a/d/v/l/e/l$e;-><init>(Ls1/w/d;)V

    invoke-static {p1, v0}, Ls1/a/a/a/v0/f/d;->Q3(Lq3/a/x2/f;Ls1/z/b/q;)Lq3/a/x2/f;

    move-result-object p1

    return-object p1

    .line 22
    :cond_5
    new-instance p1, Le/a/d/v/l/e/m$a;

    sget-object v0, Le/a/d/v/l/c$b$b;->b:Le/a/d/v/l/c$b$b;

    invoke-direct {p1, v0}, Le/a/d/v/l/e/m$a;-><init>(Le/a/d/v/l/c$b;)V

    .line 23
    new-instance v0, Lq3/a/x2/k;

    invoke-direct {v0, p1}, Lq3/a/x2/k;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/v/l/e/l;->a:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method
