.class public final Le/a/h/b/d/b/e$f;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/d/b/e;->j(Ljava/util/List;Ljava/lang/Integer;Le/a/h/b/d/b/g;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Le/a/q2/w;",
        "Ls1/w/d<",
        "-",
        "Ljava/util/List<",
        "+",
        "Le/a/h/b/d/b/i;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.dialer.call_log.data.DialerRepositoryImpl$mergeHistoryEvents$2"
    f = "DialerRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/util/List;

.field public final synthetic g:Le/a/h/b/d/b/g;


# direct methods
.method public constructor <init>(Ljava/util/List;Le/a/h/b/d/b/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/d/b/e$f;->f:Ljava/util/List;

    iput-object p2, p0, Le/a/h/b/d/b/e$f;->g:Le/a/h/b/d/b/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/h/b/d/b/e$f;

    iget-object v1, p0, Le/a/h/b/d/b/e$f;->f:Ljava/util/List;

    iget-object v2, p0, Le/a/h/b/d/b/e$f;->g:Le/a/h/b/d/b/g;

    invoke-direct {v0, v1, v2, p2}, Le/a/h/b/d/b/e$f;-><init>(Ljava/util/List;Le/a/h/b/d/b/g;Ls1/w/d;)V

    iput-object p1, v0, Le/a/h/b/d/b/e$f;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/h/b/d/b/e$f;->f:Ljava/util/List;

    iget-object v1, p0, Le/a/h/b/d/b/e$f;->g:Le/a/h/b/d/b/g;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Le/a/q2/w;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    .line 6
    iget-object p1, p1, Le/a/q2/w;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 7
    invoke-interface {v1, v0}, Le/a/h/b/d/b/g;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/h/b/d/b/e$f;->e:Ljava/lang/Object;

    check-cast p1, Le/a/q2/w;

    .line 2
    iget-object v0, p0, Le/a/h/b/d/b/e$f;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    iget-object p1, p1, Le/a/q2/w;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 4
    iget-object p1, p0, Le/a/h/b/d/b/e$f;->g:Le/a/h/b/d/b/g;

    iget-object v0, p0, Le/a/h/b/d/b/e$f;->f:Ljava/util/List;

    invoke-interface {p1, v0}, Le/a/h/b/d/b/g;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
