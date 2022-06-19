.class public final Le/a/o/p/b/e$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/p/b/e;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.truecaller.contextcall.db.hiddennumber.HiddenNumberRepositoryImpl$addHiddenNumber$2"
    f = "HiddenNumberRepository.kt"
    l = {
        0x3c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/o/p/b/e;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/o/p/b/e;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/p/b/e$a;->f:Le/a/o/p/b/e;

    iput-object p2, p0, Le/a/o/p/b/e$a;->g:Ljava/lang/String;

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

    new-instance v0, Le/a/o/p/b/e$a;

    iget-object v1, p0, Le/a/o/p/b/e$a;->f:Le/a/o/p/b/e;

    iget-object v2, p0, Le/a/o/p/b/e$a;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Le/a/o/p/b/e$a;-><init>(Le/a/o/p/b/e;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/o/p/b/e$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Le/a/o/p/b/e$a;

    iget-object v1, p0, Le/a/o/p/b/e$a;->f:Le/a/o/p/b/e;

    iget-object v2, p0, Le/a/o/p/b/e$a;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Le/a/o/p/b/e$a;-><init>(Le/a/o/p/b/e;Ljava/lang/String;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Le/a/o/p/b/e$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

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
    iget-object p1, p0, Le/a/o/p/b/e$a;->f:Le/a/o/p/b/e;

    .line 5
    iget-object p1, p1, Le/a/o/p/b/e;->d:Le/a/b0/q/z;

    .line 6
    iget-object v2, p0, Le/a/o/p/b/e$a;->g:Ljava/lang/String;

    invoke-interface {p1, v2}, Le/a/b0/q/z;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    iget-object v2, p0, Le/a/o/p/b/e$a;->f:Le/a/o/p/b/e;

    .line 8
    iget-object v2, v2, Le/a/o/p/b/e;->c:Le/a/o/p/b/b;

    .line 9
    new-instance v4, Lcom/truecaller/contextcall/db/hiddennumber/HiddenNumber;

    invoke-direct {v4, p1}, Lcom/truecaller/contextcall/db/hiddennumber/HiddenNumber;-><init>(Ljava/lang/String;)V

    iput v3, p0, Le/a/o/p/b/e$a;->e:I

    invoke-interface {v2, v4, p0}, Le/a/o/p/b/b;->d(Lcom/truecaller/contextcall/db/hiddennumber/HiddenNumber;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method
