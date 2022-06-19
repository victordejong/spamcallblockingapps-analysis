.class public final Le/a/k/n/f/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/n/f/d;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/k/n/f/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ls1/w/f;


# direct methods
.method public constructor <init>(Lo3/a;Ls1/w/f;)V
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
            "Le/a/k/n/f/b;",
            ">;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "incomingVideoIdDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/n/f/f;->a:Lo3/a;

    iput-object p2, p0, Le/a/k/n/f/f;->b:Ls1/w/f;

    return-void
.end method

.method public static final a(Le/a/k/n/f/f;Le/a/k/n/f/a;)Le/a/k/l/b;
    .locals 14

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p0, Le/a/k/l/b;

    .line 3
    iget-object v2, p1, Le/a/k/n/f/a;->a:Ljava/lang/String;

    .line 4
    iget-object v1, p1, Le/a/k/n/f/a;->b:Ljava/lang/String;

    .line 5
    iget-wide v3, p1, Le/a/k/n/f/a;->e:J

    .line 6
    iget-object v5, p1, Le/a/k/n/f/a;->d:Ljava/lang/String;

    .line 7
    new-instance v13, Lcom/truecaller/videocallerid/data/VideoDetails;

    .line 8
    iget-object v7, p1, Le/a/k/n/f/a;->c:Ljava/lang/String;

    .line 9
    iget-wide v8, p1, Le/a/k/n/f/a;->f:J

    .line 10
    iget-wide v10, p1, Le/a/k/n/f/a;->g:J

    .line 11
    iget-boolean v12, p1, Le/a/k/n/f/a;->h:Z

    move-object v6, v13

    .line 12
    invoke-direct/range {v6 .. v12}, Lcom/truecaller/videocallerid/data/VideoDetails;-><init>(Ljava/lang/String;JJZ)V

    const/4 v7, 0x0

    const/16 v8, 0x20

    move-object v0, p0

    .line 13
    invoke-direct/range {v0 .. v8}, Le/a/k/l/b;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/truecaller/videocallerid/data/VideoDetails;Lcom/truecaller/videocallerid/data/VideoType;I)V

    return-object p0
.end method


# virtual methods
.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/k/l/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/k/n/f/f$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/k/n/f/f$a;

    iget v1, v0, Le/a/k/n/f/f$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/n/f/f$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/n/f/f$a;

    invoke-direct {v0, p0, p1}, Le/a/k/n/f/f$a;-><init>(Le/a/k/n/f/f;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/k/n/f/f$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/n/f/f$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

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

    iget-object p1, p0, Le/a/k/n/f/f;->b:Ls1/w/f;

    new-instance v2, Le/a/k/n/f/f$b;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Le/a/k/n/f/f$b;-><init>(Le/a/k/n/f/f;Ls1/w/d;)V

    iput v3, v0, Le/a/k/n/f/f$a;->e:I

    invoke-static {p1, v2, v0}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    :goto_2
    return-object p1
.end method

.method public c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/k/l/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/k/n/f/f$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k/n/f/f$c;

    iget v1, v0, Le/a/k/n/f/f$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/n/f/f$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/n/f/f$c;

    invoke-direct {v0, p0, p2}, Le/a/k/n/f/f$c;-><init>(Le/a/k/n/f/f;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k/n/f/f$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/n/f/f$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p2, p0, Le/a/k/n/f/f;->b:Ls1/w/f;

    new-instance v2, Le/a/k/n/f/f$d;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Le/a/k/n/f/f$d;-><init>(Le/a/k/n/f/f;Ljava/util/List;Ls1/w/d;)V

    iput v3, v0, Le/a/k/n/f/f$c;->e:I

    invoke-static {p2, v2, v0}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_4

    goto :goto_2

    .line 4
    :cond_4
    sget-object p2, Ls1/u/s;->a:Ls1/u/s;

    :goto_2
    return-object p2
.end method
