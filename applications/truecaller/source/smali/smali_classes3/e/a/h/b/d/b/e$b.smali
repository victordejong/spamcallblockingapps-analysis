.class public final Le/a/h/b/d/b/e$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/d/b/e;->f()V
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
    c = "com.truecaller.calling.dialer.call_log.data.DialerRepositoryImpl$cancelMissedCallsNotification$1"
    f = "DialerRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/h/b/d/b/e;


# direct methods
.method public constructor <init>(Le/a/h/b/d/b/e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/d/b/e$b;->e:Le/a/h/b/d/b/e;

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

    new-instance p1, Le/a/h/b/d/b/e$b;

    iget-object v0, p0, Le/a/h/b/d/b/e$b;->e:Le/a/h/b/d/b/e;

    invoke-direct {p1, v0, p2}, Le/a/h/b/d/b/e$b;-><init>(Le/a/h/b/d/b/e;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/h/b/d/b/e$b;->e:Le/a/h/b/d/b/e;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/h/b/d/b/e;->q:Le/a/l0/g;

    .line 5
    invoke-interface {p2}, Le/a/l0/g;->i()V

    .line 6
    iget-object p2, v0, Le/a/h/b/d/b/e;->t:Lo3/a;

    .line 7
    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/d/f;

    invoke-interface {p2}, Le/a/d/f;->t()V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/h/b/d/b/e$b;->e:Le/a/h/b/d/b/e;

    .line 3
    iget-object p1, p1, Le/a/h/b/d/b/e;->q:Le/a/l0/g;

    .line 4
    invoke-interface {p1}, Le/a/l0/g;->i()V

    .line 5
    iget-object p1, p0, Le/a/h/b/d/b/e$b;->e:Le/a/h/b/d/b/e;

    .line 6
    iget-object p1, p1, Le/a/h/b/d/b/e;->t:Lo3/a;

    .line 7
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/f;

    invoke-interface {p1}, Le/a/d/f;->t()V

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
