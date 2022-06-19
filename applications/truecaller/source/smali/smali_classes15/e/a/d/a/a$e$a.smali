.class public final Le/a/d/a/a$e$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/a/a$e;->onClick(Landroid/view/View;)V
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
    c = "com.truecaller.voip.debug.DebugGroupCallFragment$onViewCreated$1$3$1"
    f = "DebugGroupCallFragment.kt"
    l = {
        0x58
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/d/a/a$e;


# direct methods
.method public constructor <init>(Le/a/d/a/a$e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/a/a$e$a;->g:Le/a/d/a/a$e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/d/a/a$e$a;

    iget-object v0, p0, Le/a/d/a/a$e$a;->g:Le/a/d/a/a$e;

    invoke-direct {p1, v0, p2}, Le/a/d/a/a$e$a;-><init>(Le/a/d/a/a$e;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/a/a$e$a;

    iget-object v0, p0, Le/a/d/a/a$e$a;->g:Le/a/d/a/a$e;

    invoke-direct {p1, v0, p2}, Le/a/d/a/a$e$a;-><init>(Le/a/d/a/a$e;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/a/a$e$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/a/a$e$a;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Le/a/d/a/a$e$a;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

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
    iget-object p1, p0, Le/a/d/a/a$e$a;->g:Le/a/d/a/a$e;

    iget-object p1, p1, Le/a/d/a/a$e;->a:Le/a/d/a/a;

    invoke-static {p1}, Le/a/d/a/a;->QA(Le/a/d/a/a;)Ljava/util/Set;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/a/o;

    .line 6
    iget-object v3, p1, Le/a/d/a/o;->g:Le/a/d/a/p;

    .line 7
    iget p1, p1, Le/a/d/a/o;->f:I

    .line 8
    iput-object v1, p0, Le/a/d/a/a$e$a;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/d/a/a$e$a;->f:I

    invoke-virtual {v3, p1, p0}, Le/a/d/a/p;->y(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 9
    :cond_3
    iget-object p1, p0, Le/a/d/a/a$e$a;->g:Le/a/d/a/a$e;

    iget-object p1, p1, Le/a/d/a/a$e;->a:Le/a/d/a/a;

    invoke-virtual {p1}, Le/m/a/g/e/e;->dismissAllowingStateLoss()V

    .line 10
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
