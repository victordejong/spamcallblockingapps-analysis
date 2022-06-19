.class public final Le/a/k/n/d/e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.db.availability.VideoIdAvailabilityRepositoryImpl$addAvailabilities$2"
    f = "VideoIdAvailabilityRepository.kt"
    l = {
        0x27
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/k/n/d/g;

.field public final synthetic g:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/k/n/d/g;Ljava/util/List;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/n/d/e;->f:Le/a/k/n/d/g;

    iput-object p2, p0, Le/a/k/n/d/e;->g:Ljava/util/List;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/n/d/e;

    iget-object v1, p0, Le/a/k/n/d/e;->f:Le/a/k/n/d/g;

    iget-object v2, p0, Le/a/k/n/d/e;->g:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1}, Le/a/k/n/d/e;-><init>(Le/a/k/n/d/g;Ljava/util/List;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/k/n/d/e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/n/d/e;

    iget-object v1, p0, Le/a/k/n/d/e;->f:Le/a/k/n/d/g;

    iget-object v2, p0, Le/a/k/n/d/e;->g:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1}, Le/a/k/n/d/e;-><init>(Le/a/k/n/d/g;Ljava/util/List;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/n/d/e;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/k/n/d/e;->g:Ljava/util/List;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {p1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 7
    check-cast v3, Le/a/k/l/d;

    .line 8
    new-instance v4, Le/a/k/n/d/c;

    .line 9
    iget-object v5, v3, Le/a/k/l/d;->a:Ljava/lang/String;

    .line 10
    iget-boolean v6, v3, Le/a/k/l/d;->b:Z

    .line 11
    iget v3, v3, Le/a/k/l/d;->c:I

    .line 12
    invoke-direct {v4, v5, v6, v3}, Le/a/k/n/d/c;-><init>(Ljava/lang/String;II)V

    .line 13
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Le/a/k/n/d/e;->f:Le/a/k/n/d/g;

    .line 15
    iget-object p1, p1, Le/a/k/n/d/g;->b:Lo3/a;

    .line 16
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/k/n/d/a;

    iput v2, p0, Le/a/k/n/d/e;->e:I

    invoke-interface {p1, v1, p0}, Le/a/k/n/d/a;->b(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 17
    :cond_3
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
