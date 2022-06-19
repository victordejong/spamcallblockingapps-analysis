.class public final Le/a/a/o/o;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/o/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a/o/l;",
        ">;",
        "Le/a/a/o/k;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Le/a/a/o/f;

.field public final f:Le/a/a/o/p;

.field public final g:Le/a/q2/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/a/o/f;Le/a/a/o/p;Le/a/q2/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utils"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p2, p0, Le/a/a/o/o;->d:Ls1/w/f;

    iput-object p3, p0, Le/a/a/o/o;->e:Le/a/a/o/f;

    iput-object p4, p0, Le/a/a/o/o;->f:Le/a/a/o/p;

    iput-object p5, p0, Le/a/a/o/o;->g:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public final Ij(JJZLs1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p6, Le/a/a/o/o$a;

    if-eqz v0, :cond_0

    move-object v0, p6

    check-cast v0, Le/a/a/o/o$a;

    iget v1, v0, Le/a/a/o/o$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/a/o/o$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/a/o/o$a;

    invoke-direct {v0, p0, p6}, Le/a/a/o/o$a;-><init>(Le/a/a/o/o;Ls1/w/d;)V

    :goto_0
    iget-object p6, v0, Le/a/a/o/o$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/a/o/o$a;->e:I

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget-boolean p5, v0, Le/a/a/o/o$a;->i:Z

    iget-wide p3, v0, Le/a/a/o/o$a;->h:J

    iget-object p1, v0, Le/a/a/o/o$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/a/o/o;

    invoke-static {p6}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p6}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    add-long/2addr p1, p3

    cmp-long p6, p1, v3

    if-lez p6, :cond_7

    .line 4
    iget-object p6, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p6, Le/a/a/o/l;

    if-eqz p6, :cond_3

    iget-object v2, p0, Le/a/a/o/o;->f:Le/a/a/o/p;

    invoke-interface {v2, p1, p2}, Le/a/a/o/p;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p6, p1}, Le/a/a/o/l;->Sc(Ljava/lang/String;)V

    .line 5
    :cond_3
    iget-object p1, p0, Le/a/a/o/o;->d:Ls1/w/f;

    new-instance p2, Le/a/a/o/o$b;

    const/4 p6, 0x0

    invoke-direct {p2, p0, p6}, Le/a/a/o/o$b;-><init>(Le/a/a/o/o;Ls1/w/d;)V

    iput-object p0, v0, Le/a/a/o/o$a;->g:Ljava/lang/Object;

    iput-wide p3, v0, Le/a/a/o/o$a;->h:J

    iput-boolean p5, v0, Le/a/a/o/o$a;->i:Z

    iput v5, v0, Le/a/a/o/o$a;->e:I

    invoke-static {p1, p2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p6

    if-ne p6, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    :goto_1
    check-cast p6, Ljava/util/Collection;

    invoke-static {p6}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    cmp-long p6, p3, v3

    if-lez p6, :cond_5

    .line 6
    new-instance p6, Ls1/k;

    .line 7
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p3, p4}, Ljava/lang/Long;-><init>(J)V

    const/16 p3, 0x64

    .line 8
    new-instance p4, Ljava/lang/Integer;

    invoke-direct {p4, p3}, Ljava/lang/Integer;-><init>(I)V

    .line 9
    invoke-direct {p6, v0, p4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object p3, p2

    check-cast p3, Ljava/util/ArrayList;

    invoke-virtual {p3, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_5
    iget-object p3, p1, Le/a/a/o/o;->f:Le/a/a/o/p;

    invoke-interface {p3, p2}, Le/a/a/o/p;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 11
    iget-object p3, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p3, Le/a/a/o/l;

    if-eqz p3, :cond_6

    invoke-interface {p3, p2, p5}, Le/a/a/o/l;->hi(Ljava/util/List;Z)V

    .line 12
    :cond_6
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/o/l;

    if-eqz p1, :cond_8

    invoke-interface {p1, v5}, Le/a/a/o/l;->Wp(Z)V

    goto :goto_2

    .line 13
    :cond_7
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/o/l;

    if-eqz p1, :cond_8

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Le/a/a/o/l;->Wp(Z)V

    .line 14
    :cond_8
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/a/o/l;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    new-instance v4, Le/a/a/o/m;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p1, v0}, Le/a/a/o/m;-><init>(Le/a/a/o/o;ZZLs1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method
