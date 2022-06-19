.class public final Le/a/c/g/y/s;
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
    c = "com.truecaller.insights.categorizer.datasource.UpdatesModelDataSourceImpl$insertUpdatesModel$2"
    f = "UpdatesModelDataSource.kt"
    l = {
        0x1d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/c/g/y/r;

.field public final synthetic g:Le/a/c/g/a0/f;

.field public final synthetic h:I


# direct methods
.method public constructor <init>(Le/a/c/g/y/r;Le/a/c/g/a0/f;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/g/y/s;->f:Le/a/c/g/y/r;

    iput-object p2, p0, Le/a/c/g/y/s;->g:Le/a/c/g/a0/f;

    iput p3, p0, Le/a/c/g/y/s;->h:I

    const/4 p1, 0x1

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/g/y/s;

    iget-object v1, p0, Le/a/c/g/y/s;->f:Le/a/c/g/y/r;

    iget-object v2, p0, Le/a/c/g/y/s;->g:Le/a/c/g/a0/f;

    iget v3, p0, Le/a/c/g/y/s;->h:I

    invoke-direct {v0, v1, v2, v3, p1}, Le/a/c/g/y/s;-><init>(Le/a/c/g/y/r;Le/a/c/g/a0/f;ILs1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/c/g/y/s;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 4
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

    new-instance v0, Le/a/c/g/y/s;

    iget-object v1, p0, Le/a/c/g/y/s;->f:Le/a/c/g/y/r;

    iget-object v2, p0, Le/a/c/g/y/s;->g:Le/a/c/g/a0/f;

    iget v3, p0, Le/a/c/g/y/s;->h:I

    invoke-direct {v0, v1, v2, v3, p1}, Le/a/c/g/y/s;-><init>(Le/a/c/g/y/r;Le/a/c/g/a0/f;ILs1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/c/g/y/s;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/g/y/s;->f:Le/a/c/g/y/r;

    iget-object v1, p0, Le/a/c/g/y/s;->g:Le/a/c/g/a0/f;

    iget v3, p0, Le/a/c/g/y/s;->h:I

    iput v2, p0, Le/a/c/g/y/s;->e:I

    invoke-virtual {p1, v1, v3, p0}, Le/a/c/g/y/r;->c(Le/a/c/g/a0/f;ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
