.class public final Le/a/o/b/h$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/b/h;->a()Landroidx/work/ListenableWorker$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.contextcall.utils.ContextCallMessagesFetcherWorkAction$execute$1"
    f = "ContextCallMessagesFetcherWorkAction.kt"
    l = {
        0x43
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/o/b/h;

.field public final synthetic g:Ls1/z/c/c0;

.field public final synthetic h:Ls1/z/c/b0;

.field public final synthetic i:Ls1/z/c/b0;


# direct methods
.method public constructor <init>(Le/a/o/b/h;Ls1/z/c/c0;Ls1/z/c/b0;Ls1/z/c/b0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/b/h$a;->f:Le/a/o/b/h;

    iput-object p2, p0, Le/a/o/b/h$a;->g:Ls1/z/c/c0;

    iput-object p3, p0, Le/a/o/b/h$a;->h:Ls1/z/c/b0;

    iput-object p4, p0, Le/a/o/b/h$a;->i:Ls1/z/c/b0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 6
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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/o/b/h$a;

    iget-object v1, p0, Le/a/o/b/h$a;->f:Le/a/o/b/h;

    iget-object v2, p0, Le/a/o/b/h$a;->g:Ls1/z/c/c0;

    iget-object v3, p0, Le/a/o/b/h$a;->h:Ls1/z/c/b0;

    iget-object v4, p0, Le/a/o/b/h$a;->i:Ls1/z/c/b0;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Le/a/o/b/h$a;-><init>(Le/a/o/b/h;Ls1/z/c/c0;Ls1/z/c/b0;Ls1/z/c/b0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/o/b/h$a;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/o/b/h$a;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/o/b/h$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/o/b/h$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

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

    .line 4
    iget-object p1, p0, Le/a/o/b/h$a;->g:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    iget-object p1, p0, Le/a/o/b/h$a;->h:Ls1/z/c/b0;

    iget-wide v3, p1, Ls1/z/c/b0;->a:J

    .line 5
    iget-object p1, p0, Le/a/o/b/h$a;->f:Le/a/o/b/h;

    .line 6
    iget-object p1, p1, Le/a/o/b/h;->d:Le/a/o/p/e/g/c;

    .line 7
    iget-object v1, p0, Le/a/o/b/h$a;->g:Ls1/z/c/c0;

    iget-object v1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iput v2, p0, Le/a/o/b/h$a;->e:I

    invoke-interface {p1, v1, p0}, Le/a/o/p/e/g/c;->c(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    iget-object p1, p0, Le/a/o/b/h$a;->f:Le/a/o/b/h;

    .line 9
    iget-object p1, p1, Le/a/o/b/h;->e:Le/a/o/b/o;

    .line 10
    iget-object v0, p0, Le/a/o/b/h$a;->i:Ls1/z/c/b0;

    iget-wide v0, v0, Ls1/z/c/b0;->a:J

    const-string v2, "predefinedMessagesExpirationTime"

    invoke-interface {p1, v2, v0, v1}, Le/a/o/b/o;->putLong(Ljava/lang/String;J)V

    .line 11
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
