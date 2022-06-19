.class public final Le/a/k/n/g/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/n/g/e;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/k/n/g/c;",
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
            "Le/a/k/n/g/c;",
            ">;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "outgoingVideoDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/n/g/j;->a:Lo3/a;

    iput-object p2, p0, Le/a/k/n/g/j;->b:Ls1/w/f;

    return-void
.end method

.method public static final a(Le/a/k/n/g/j;Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;)Le/a/k/n/g/a;
    .locals 9

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p0, Le/a/k/n/g/a;

    .line 3
    iget-object v1, p1, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;->a:Ljava/lang/String;

    .line 4
    iget-object v2, p1, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;->b:Ljava/lang/String;

    .line 5
    iget-object p1, p1, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;->c:Lcom/truecaller/videocallerid/data/VideoDetails;

    .line 6
    iget-object v3, p1, Lcom/truecaller/videocallerid/data/VideoDetails;->a:Ljava/lang/String;

    .line 7
    iget-wide v4, p1, Lcom/truecaller/videocallerid/data/VideoDetails;->b:J

    .line 8
    iget-wide v6, p1, Lcom/truecaller/videocallerid/data/VideoDetails;->c:J

    .line 9
    iget-boolean v8, p1, Lcom/truecaller/videocallerid/data/VideoDetails;->d:Z

    move-object v0, p0

    .line 10
    invoke-direct/range {v0 .. v8}, Le/a/k/n/g/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJZ)V

    return-object p0
.end method

.method public static final b(Le/a/k/n/g/j;Le/a/k/n/g/a;)Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;
    .locals 10

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance p0, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    .line 3
    iget-object v0, p1, Le/a/k/n/g/a;->a:Ljava/lang/String;

    .line 4
    iget-object v1, p1, Le/a/k/n/g/a;->b:Ljava/lang/String;

    .line 5
    new-instance v9, Lcom/truecaller/videocallerid/data/VideoDetails;

    .line 6
    iget-object v3, p1, Le/a/k/n/g/a;->c:Ljava/lang/String;

    .line 7
    iget-wide v4, p1, Le/a/k/n/g/a;->d:J

    .line 8
    iget-wide v6, p1, Le/a/k/n/g/a;->e:J

    .line 9
    iget-boolean v8, p1, Le/a/k/n/g/a;->f:Z

    move-object v2, v9

    .line 10
    invoke-direct/range {v2 .. v8}, Lcom/truecaller/videocallerid/data/VideoDetails;-><init>(Ljava/lang/String;JJZ)V

    .line 11
    invoke-direct {p0, v0, v1, v9}, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/data/VideoDetails;)V

    return-object p0
.end method


# virtual methods
.method public c(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/k/n/g/j$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/k/n/g/j$a;

    iget v1, v0, Le/a/k/n/g/j$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/n/g/j$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/n/g/j$a;

    invoke-direct {v0, p0, p1}, Le/a/k/n/g/j$a;-><init>(Le/a/k/n/g/j;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/k/n/g/j$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/n/g/j$a;->e:I

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

    iget-object p1, p0, Le/a/k/n/g/j;->b:Ls1/w/f;

    new-instance v2, Le/a/k/n/g/j$b;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Le/a/k/n/g/j$b;-><init>(Le/a/k/n/g/j;Ls1/w/d;)V

    iput v3, v0, Le/a/k/n/g/j$a;->e:I

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

.method public d(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/k/n/g/j$c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/k/n/g/j$c;

    iget v1, v0, Le/a/k/n/g/j$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/n/g/j$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/n/g/j$c;

    invoke-direct {v0, p0, p1}, Le/a/k/n/g/j$c;-><init>(Le/a/k/n/g/j;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/k/n/g/j$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/n/g/j$c;->e:I

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

    iget-object p1, p0, Le/a/k/n/g/j;->b:Ls1/w/f;

    new-instance v2, Le/a/k/n/g/j$d;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Le/a/k/n/g/j$d;-><init>(Le/a/k/n/g/j;Ls1/w/d;)V

    iput v3, v0, Le/a/k/n/g/j$c;->e:I

    invoke-static {p1, v2, v0}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 4
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/k/n/g/j;->b:Ls1/w/f;

    new-instance v1, Le/a/k/n/g/j$e;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/k/n/g/j$e;-><init>(Le/a/k/n/g/j;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    .line 2
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
