.class public final Le/a/c/g/y/e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/x2/g<",
        "-",
        "Ljava/lang/String;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.categorizer.datasource.CategorizerDataSourceImpl$getAllSpamKeywordMeta$2"
    f = "CategorizerDataSource.kt"
    l = {
        0x44
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/g/y/e;->g:Landroid/database/Cursor;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/g/y/e;

    iget-object v1, p0, Le/a/c/g/y/e;->g:Landroid/database/Cursor;

    invoke-direct {v0, v1, p2}, Le/a/c/g/y/e;-><init>(Landroid/database/Cursor;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/g/y/e;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/g/y/e;

    iget-object v1, p0, Le/a/c/g/y/e;->g:Landroid/database/Cursor;

    invoke-direct {v0, v1, p2}, Le/a/c/g/y/e;-><init>(Landroid/database/Cursor;Ls1/w/d;)V

    iput-object p1, v0, Le/a/c/g/y/e;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/g/y/e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/g/y/e;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Le/a/c/g/y/e;->e:Ljava/lang/Object;

    check-cast v1, Lq3/a/x2/g;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/g/y/e;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/x2/g;

    move-object v1, p1

    :goto_0
    move-object p1, p0

    .line 4
    :cond_2
    iget-object v3, p1, Le/a/c/g/y/e;->g:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5
    iget-object v3, p1, Le/a/c/g/y/e;->g:Landroid/database/Cursor;

    const-string v4, "word"

    invoke-static {v3, v4}, Le/a/p5/s0/g;->F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 6
    iput-object v1, p1, Le/a/c/g/y/e;->e:Ljava/lang/Object;

    iput v2, p1, Le/a/c/g/y/e;->f:I

    invoke-interface {v1, v3, p1}, Lq3/a/x2/g;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v0

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Keyword cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
