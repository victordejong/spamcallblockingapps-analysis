.class public final Le/a/a4/g$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a4/g;->b(Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.init.BaseApplicationInitManager$retryInit$4$1"
    f = "BaseApplicationInitManager.kt"
    l = {
        0x2c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/a4/c;

.field public final synthetic g:Le/a/a4/g;

.field public final synthetic h:Ls1/w/d;


# direct methods
.method public constructor <init>(Le/a/a4/c;Ls1/w/d;Le/a/a4/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a4/g$c;->f:Le/a/a4/c;

    iput-object p3, p0, Le/a/a4/g$c;->g:Le/a/a4/g;

    iput-object p4, p0, Le/a/a4/g$c;->h:Ls1/w/d;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Le/a/a4/g$c;

    iget-object v0, p0, Le/a/a4/g$c;->f:Le/a/a4/c;

    iget-object v1, p0, Le/a/a4/g$c;->g:Le/a/a4/g;

    iget-object v2, p0, Le/a/a4/g$c;->h:Ls1/w/d;

    invoke-direct {p1, v0, p2, v1, v2}, Le/a/a4/g$c;-><init>(Le/a/a4/c;Ls1/w/d;Le/a/a4/g;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/a4/g$c;

    iget-object v0, p0, Le/a/a4/g$c;->f:Le/a/a4/c;

    iget-object v1, p0, Le/a/a4/g$c;->g:Le/a/a4/g;

    iget-object v2, p0, Le/a/a4/g$c;->h:Ls1/w/d;

    invoke-direct {p1, v0, p2, v1, v2}, Le/a/a4/g$c;-><init>(Le/a/a4/c;Ls1/w/d;Le/a/a4/g;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/a4/g$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/a4/g$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

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
    iget-object p1, p0, Le/a/a4/g$c;->f:Le/a/a4/c;

    check-cast p1, Le/a/a4/r;

    iget-object v2, p0, Le/a/a4/g$c;->g:Le/a/a4/g;

    .line 5
    iget-object v2, v2, Le/a/a4/g;->g:Le/a/p5/m0;

    .line 6
    iput v3, p0, Le/a/a4/g$c;->e:I

    .line 7
    iget-object v3, p1, Le/a/a4/r;->c:Ls1/w/f;

    new-instance v4, Le/a/a4/q;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v2, v5}, Le/a/a4/q;-><init>(Le/a/a4/r;Le/a/p5/m0;Ls1/w/d;)V

    invoke-static {v3, v4, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    return-object v0
.end method
