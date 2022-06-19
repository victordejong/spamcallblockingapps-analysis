.class public final Le/a/k/n/f/g;
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
        "Le/a/k/l/b;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.db.incomingvideoid.IncomingVideoRepositoryImpl$getVideoByPhoneNumber$2"
    f = "IncomingVideoRepository.kt"
    l = {
        0x25
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/k/n/f/f;

.field public final synthetic g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/k/n/f/f;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/n/f/g;->f:Le/a/k/n/f/f;

    iput-object p2, p0, Le/a/k/n/f/g;->g:Ljava/lang/String;

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

    new-instance v0, Le/a/k/n/f/g;

    iget-object v1, p0, Le/a/k/n/f/g;->f:Le/a/k/n/f/f;

    iget-object v2, p0, Le/a/k/n/f/g;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Le/a/k/n/f/g;-><init>(Le/a/k/n/f/f;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/k/n/f/g;->s(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Le/a/k/n/f/g;

    iget-object v1, p0, Le/a/k/n/f/g;->f:Le/a/k/n/f/f;

    iget-object v2, p0, Le/a/k/n/f/g;->g:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1}, Le/a/k/n/f/g;-><init>(Le/a/k/n/f/f;Ljava/lang/String;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/n/f/g;->e:I

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
    iget-object p1, p0, Le/a/k/n/f/g;->f:Le/a/k/n/f/f;

    .line 5
    iget-object p1, p1, Le/a/k/n/f/f;->a:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/k/n/f/b;

    iget-object v1, p0, Le/a/k/n/f/g;->g:Ljava/lang/String;

    iput v2, p0, Le/a/k/n/f/g;->e:I

    invoke-interface {p1, v1, p0}, Le/a/k/n/f/b;->c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Le/a/k/n/f/a;

    if-eqz p1, :cond_3

    iget-object v0, p0, Le/a/k/n/f/g;->f:Le/a/k/n/f/f;

    invoke-static {v0, p1}, Le/a/k/n/f/f;->a(Le/a/k/n/f/f;Le/a/k/n/f/a;)Le/a/k/l/b;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
