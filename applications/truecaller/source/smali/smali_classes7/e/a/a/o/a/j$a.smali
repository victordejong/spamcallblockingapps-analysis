.class public final Le/a/a/o/a/j$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/o/a/j;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.storagemanager.callrec.CallRecStorageManagerPresenter$deleteCallRecordings$1$1$1"
    f = "CallRecStorageManagerPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/a/o/a/j;


# direct methods
.method public constructor <init>(Le/a/a/o/a/j;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/o/a/j$a;->e:Le/a/a/o/a/j;

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

    new-instance p1, Le/a/a/o/a/j$a;

    iget-object v0, p0, Le/a/a/o/a/j$a;->e:Le/a/a/o/a/j;

    invoke-direct {p1, v0, p2}, Le/a/a/o/a/j$a;-><init>(Le/a/a/o/a/j;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/a/o/a/j$a;->e:Le/a/a/o/a/j;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p1, Le/a/a/o/a/j;->f:Le/a/a/o/a/k$a;

    iget-object p2, p1, Le/a/a/o/a/k$a;->b:Le/a/a/o/a/k;

    .line 5
    iget-object p2, p2, Le/a/a/o/a/k;->h:Le/a/l0/u/e/b;

    .line 6
    iget-object p1, p1, Le/a/a/o/a/k$a;->c:Ljava/util/Set;

    invoke-interface {p2, p1}, Le/a/l0/u/e/b;->P1(Ljava/util/Collection;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/a/o/a/j$a;->e:Le/a/a/o/a/j;

    iget-object p1, p1, Le/a/a/o/a/j;->f:Le/a/a/o/a/k$a;

    iget-object v0, p1, Le/a/a/o/a/k$a;->b:Le/a/a/o/a/k;

    .line 2
    iget-object v0, v0, Le/a/a/o/a/k;->h:Le/a/l0/u/e/b;

    .line 3
    iget-object p1, p1, Le/a/a/o/a/k$a;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Le/a/l0/u/e/b;->P1(Ljava/util/Collection;)Le/a/r2/x;

    move-result-object p1

    invoke-virtual {p1}, Le/a/r2/x;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object p1
.end method
