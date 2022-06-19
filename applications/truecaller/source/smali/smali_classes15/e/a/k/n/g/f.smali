.class public final Le/a/k/n/g/f;
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
    c = "com.truecaller.videocallerid.db.outgoingvideo.OutgoingVideoRepositoryImpl$addSingleVideo$2"
    f = "OutgoingVideoRepository.kt"
    l = {
        0x41
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/k/n/g/j;

.field public final synthetic g:Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;


# direct methods
.method public constructor <init>(Le/a/k/n/g/j;Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/n/g/f;->f:Le/a/k/n/g/j;

    iput-object p2, p0, Le/a/k/n/g/f;->g:Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

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

    new-instance v0, Le/a/k/n/g/f;

    iget-object v1, p0, Le/a/k/n/g/f;->f:Le/a/k/n/g/j;

    iget-object v2, p0, Le/a/k/n/g/f;->g:Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    invoke-direct {v0, v1, v2, p1}, Le/a/k/n/g/f;-><init>(Le/a/k/n/g/j;Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/k/n/g/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Le/a/k/n/g/f;

    iget-object v1, p0, Le/a/k/n/g/f;->f:Le/a/k/n/g/j;

    iget-object v2, p0, Le/a/k/n/g/f;->g:Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    invoke-direct {v0, v1, v2, p1}, Le/a/k/n/g/f;-><init>(Le/a/k/n/g/j;Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/k/n/g/f;->e:I

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
    iget-object p1, p0, Le/a/k/n/g/f;->f:Le/a/k/n/g/j;

    .line 5
    iget-object p1, p1, Le/a/k/n/g/j;->a:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/k/n/g/c;

    iget-object v1, p0, Le/a/k/n/g/f;->f:Le/a/k/n/g/j;

    iget-object v3, p0, Le/a/k/n/g/f;->g:Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    invoke-static {v1, v3}, Le/a/k/n/g/j;->a(Le/a/k/n/g/j;Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;)Le/a/k/n/g/a;

    move-result-object v1

    iput v2, p0, Le/a/k/n/g/f;->e:I

    invoke-interface {p1, v1, p0}, Le/a/k/n/g/c;->b(Le/a/k/n/g/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
