.class public final Le/a/k/c/f0;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
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
    c = "com.truecaller.videocallerid.utils.OutgoingVideoProviderImpl$shouldProvideVideoForNumber$2"
    f = "OutgoingVideoProvider.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/k/c/e0;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/k/c/e0;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/f0;->e:Le/a/k/c/e0;

    iput-object p2, p0, Le/a/k/c/f0;->f:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/k/c/f0;

    iget-object v0, p0, Le/a/k/c/f0;->e:Le/a/k/c/e0;

    iget-object v1, p0, Le/a/k/c/f0;->f:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Le/a/k/c/f0;-><init>(Le/a/k/c/e0;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/k/c/f0;->e:Le/a/k/c/e0;

    iget-object v0, p0, Le/a/k/c/f0;->f:Ljava/lang/String;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 5
    invoke-virtual {p1, p2}, Le/a/k/c/e0;->e(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object p1, p1, Le/a/k/c/e0;->c:Le/a/k/j;

    .line 7
    check-cast p1, Le/a/k/k;

    invoke-virtual {p1, v0}, Le/a/k/k;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 8
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/k/c/f0;->e:Le/a/k/c/e0;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Le/a/k/c/e0;->e(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Le/a/k/c/f0;->e:Le/a/k/c/e0;

    .line 5
    iget-object p1, p1, Le/a/k/c/e0;->c:Le/a/k/j;

    .line 6
    iget-object v1, p0, Le/a/k/c/f0;->f:Ljava/lang/String;

    check-cast p1, Le/a/k/k;

    invoke-virtual {p1, v1}, Le/a/k/k;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 7
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
