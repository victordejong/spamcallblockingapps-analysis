.class public final Le/a/g5/c0/b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g5/c0/b;->a(JLjava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ln3/v/g0<",
        "Ljava/util/List<",
        "+",
        "Le/a/b0/p/c;",
        ">;>;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.tagger.data.TagRepositoryImpl$fetchTags$1"
    f = "TagRepository.kt"
    l = {
        0x1e,
        0x20
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/g5/c0/b;

.field public final synthetic h:Ljava/lang/String;

.field public final synthetic i:J


# direct methods
.method public constructor <init>(Le/a/g5/c0/b;Ljava/lang/String;JLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/g5/c0/b$a;->g:Le/a/g5/c0/b;

    iput-object p2, p0, Le/a/g5/c0/b$a;->h:Ljava/lang/String;

    iput-wide p3, p0, Le/a/g5/c0/b$a;->i:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/g5/c0/b$a;

    iget-object v2, p0, Le/a/g5/c0/b$a;->g:Le/a/g5/c0/b;

    iget-object v3, p0, Le/a/g5/c0/b$a;->h:Ljava/lang/String;

    iget-wide v4, p0, Le/a/g5/c0/b$a;->i:J

    move-object v1, v0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Le/a/g5/c0/b$a;-><init>(Le/a/g5/c0/b;Ljava/lang/String;JLs1/w/d;)V

    iput-object p1, v0, Le/a/g5/c0/b$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/g5/c0/b$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/g5/c0/b$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/g5/c0/b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/g5/c0/b$a;->f:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/g5/c0/b$a;->e:Ljava/lang/Object;

    check-cast p1, Ln3/v/g0;

    .line 4
    iget-object v1, p0, Le/a/g5/c0/b$a;->h:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v3

    :goto_2
    if-eqz v1, :cond_5

    .line 5
    iget-object v1, p0, Le/a/g5/c0/b$a;->g:Le/a/g5/c0/b;

    .line 6
    iget-object v1, v1, Le/a/g5/c0/b;->a:Le/a/b0/p/d;

    .line 7
    iget-wide v4, p0, Le/a/g5/c0/b$a;->i:J

    invoke-interface {v1, v4, v5}, Le/a/b0/p/d;->a(J)Ljava/util/List;

    move-result-object v1

    iput v3, p0, Le/a/g5/c0/b$a;->f:I

    invoke-interface {p1, v1, p0}, Ln3/v/g0;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 8
    :cond_5
    iget-object v1, p0, Le/a/g5/c0/b$a;->g:Le/a/g5/c0/b;

    .line 9
    iget-object v1, v1, Le/a/g5/c0/b;->a:Le/a/b0/p/d;

    .line 10
    iget-object v3, p0, Le/a/g5/c0/b$a;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Le/a/l4/k;->j0(Le/a/b0/p/d;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput v2, p0, Le/a/g5/c0/b$a;->f:I

    invoke-interface {p1, v1, p0}, Ln3/v/g0;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 11
    :cond_6
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
