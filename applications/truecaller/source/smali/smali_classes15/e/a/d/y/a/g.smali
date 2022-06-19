.class public final Le/a/d/y/a/g;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/d/y/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/d/y/a/e;",
        ">;",
        "Le/a/d/y/a/c;"
    }
.end annotation


# instance fields
.field public final d:Le/a/d/y/a/d;

.field public final e:Ls1/w/f;

.field public final f:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/d/y/a/d;Ls1/w/f;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "repository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/d/y/a/g;->d:Le/a/d/y/a/d;

    iput-object p2, p0, Le/a/d/y/a/g;->e:Ls1/w/f;

    iput-object p3, p0, Le/a/d/y/a/g;->f:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public final Ij(Ls1/w/d;)Ljava/lang/Object;
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

    instance-of v0, p1, Le/a/d/y/a/g$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/d/y/a/g$a;

    iget v1, v0, Le/a/d/y/a/g$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/y/a/g$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/y/a/g$a;

    invoke-direct {v0, p0, p1}, Le/a/d/y/a/g$a;-><init>(Le/a/d/y/a/g;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/d/y/a/g$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/y/a/g$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/d/y/a/g$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/d/y/a/g;

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
    iget-object p1, p0, Le/a/d/y/a/g;->f:Ls1/w/f;

    new-instance v2, Le/a/d/y/a/g$b;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Le/a/d/y/a/g$b;-><init>(Le/a/d/y/a/g;Ls1/w/d;)V

    iput-object p0, v0, Le/a/d/y/a/g$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/d/y/a/g$a;->e:I

    invoke-static {p1, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 5
    :goto_1
    check-cast p1, Ljava/util/List;

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v2, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v2, v3

    :goto_3
    if-eqz v2, :cond_6

    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/y/a/e;

    if-eqz p1, :cond_9

    invoke-interface {p1}, Le/a/d/y/a/e;->i()V

    goto :goto_5

    .line 7
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_7

    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/y/a/e;

    if-eqz v0, :cond_9

    invoke-static {p1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/y/a/b;

    invoke-interface {v0, p1}, Le/a/d/y/a/e;->e(Le/a/d/y/a/b;)V

    goto :goto_5

    .line 8
    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_8

    invoke-interface {p1, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    goto :goto_4

    :cond_8
    move-object v1, p1

    .line 9
    :goto_4
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/y/a/e;

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {v0, v1, p1}, Le/a/d/y/a/e;->h(Ljava/util/List;I)V

    .line 10
    :cond_9
    :goto_5
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method
