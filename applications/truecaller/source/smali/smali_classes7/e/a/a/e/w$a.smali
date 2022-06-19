.class public final Le/a/a/e/w$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/e/w;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.messaging.inboxcleanup.InboxCleanupPresenter$fetchCounts$1$1"
    f = "InboxCleanupPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/e/w;


# direct methods
.method public constructor <init>(Le/a/a/e/w;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/e/w$a;->e:Le/a/a/e/w;

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

    new-instance p1, Le/a/a/e/w$a;

    iget-object v0, p0, Le/a/a/e/w$a;->e:Le/a/a/e/w;

    invoke-direct {p1, v0, p2}, Le/a/a/e/w$a;-><init>(Le/a/a/e/w;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/a/e/w$a;->e:Le/a/a/e/w;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p2, v0, Le/a/a/e/w;->g:Le/a/a/e/x;

    .line 4
    iget-object v0, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/a/e/v;->vu(Z)V

    .line 5
    :cond_0
    iget-object p2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/a/e/v;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Le/a/a/e/v;->U7()V

    :cond_1
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/a/e/w$a;->e:Le/a/a/e/w;

    iget-object p1, p1, Le/a/a/e/w;->g:Le/a/a/e/x;

    .line 2
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/e/v;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Le/a/a/e/v;->vu(Z)V

    .line 3
    :cond_0
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/e/v;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/a/e/v;->U7()V

    .line 4
    :cond_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
