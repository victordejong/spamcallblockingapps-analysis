.class public final Le/a/d0/n0$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/n0;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/lang/String;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.callerid.ContextCallCallerIdHelperImpl$listenToMidCallReasonUpdates$1$1"
    f = "ContextCallCallerIdHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/d0/n0;


# direct methods
.method public constructor <init>(Le/a/d0/n0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/n0$a;->f:Le/a/d0/n0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance v0, Le/a/d0/n0$a;

    iget-object v1, p0, Le/a/d0/n0$a;->f:Le/a/d0/n0;

    invoke-direct {v0, v1, p2}, Le/a/d0/n0$a;-><init>(Le/a/d0/n0;Ls1/w/d;)V

    iput-object p1, v0, Le/a/d0/n0$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/d0/n0$a;->f:Le/a/d0/n0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/String;

    .line 4
    iget-object p2, v1, Le/a/d0/n0;->g:Le/a/d0/y;

    invoke-interface {p2}, Le/a/d0/y;->g()Le/a/r2/x;

    move-result-object p2

    invoke-virtual {p2}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-static {p2}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result p2

    if-eqz p1, :cond_3

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 6
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v4

    :goto_1
    if-eqz p1, :cond_3

    if-nez p2, :cond_2

    .line 8
    iget-object p1, v1, Le/a/d0/n0;->h:Le/a/d0/o0;

    invoke-interface {p1}, Le/a/d0/o0;->b()V

    .line 9
    :cond_2
    iget-object p1, v1, Le/a/d0/n0;->f:Le/a/d0/m0;

    .line 10
    iget-object p1, p1, Le/a/d0/m0;->b:Lq3/a/p1;

    if-eqz p1, :cond_3

    .line 11
    invoke-static {p1, v4, v3, v4}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/d0/n0$a;->e:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/d0/n0$a;->f:Le/a/d0/n0;

    iget-object v0, v0, Le/a/d0/n0;->g:Le/a/d0/y;

    invoke-interface {v0}, Le/a/d0/y;->g()Le/a/r2/x;

    move-result-object v0

    invoke-virtual {v0}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Le/a/e/a2;->r(Ljava/lang/Boolean;)Z

    move-result v0

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v3

    :goto_1
    if-eqz p1, :cond_3

    if-nez v0, :cond_2

    .line 6
    iget-object p1, p0, Le/a/d0/n0$a;->f:Le/a/d0/n0;

    iget-object p1, p1, Le/a/d0/n0;->h:Le/a/d0/o0;

    invoke-interface {p1}, Le/a/d0/o0;->b()V

    .line 7
    :cond_2
    iget-object p1, p0, Le/a/d0/n0$a;->f:Le/a/d0/n0;

    iget-object p1, p1, Le/a/d0/n0;->f:Le/a/d0/m0;

    .line 8
    iget-object p1, p1, Le/a/d0/m0;->b:Lq3/a/p1;

    if-eqz p1, :cond_3

    .line 9
    invoke-static {p1, v3, v2, v3}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 10
    :cond_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
