.class public final Le/a/k/c/r$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/c/r;->b(Ls1/w/d;)Ljava/lang/Object;
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
    c = "com.truecaller.videocallerid.utils.ExoPlayerUtilImpl$clearCache$2"
    f = "ExoPlayerUtil.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/k/c/r;


# direct methods
.method public constructor <init>(Le/a/k/c/r;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/r$c;->e:Le/a/k/c/r;

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

    new-instance p1, Le/a/k/c/r$c;

    iget-object v0, p0, Le/a/k/c/r$c;->e:Le/a/k/c/r;

    invoke-direct {p1, v0, p2}, Le/a/k/c/r$c;-><init>(Le/a/k/c/r;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/k/c/r$c;->e:Le/a/k/c/r;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-static {v0}, Le/a/k/c/r;->l(Le/a/k/c/r;)Le/m/a/c/p1/h0/v;

    move-result-object p2

    invoke-virtual {p2}, Le/m/a/c/p1/h0/v;->p()Ljava/util/Set;

    move-result-object p2

    const-string v1, "cache.keys"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-static {v0}, Le/a/k/c/r;->l(Le/a/k/c/r;)Le/m/a/c/p1/h0/v;

    move-result-object v2

    invoke-static {v2, v1}, Le/m/a/c/p1/h0/m;->d(Le/m/a/c/p1/h0/c;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/k/c/r$c;->e:Le/a/k/c/r;

    invoke-static {p1}, Le/a/k/c/r;->l(Le/a/k/c/r;)Le/m/a/c/p1/h0/v;

    move-result-object p1

    invoke-virtual {p1}, Le/m/a/c/p1/h0/v;->p()Ljava/util/Set;

    move-result-object p1

    const-string v0, "cache.keys"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4
    iget-object v1, p0, Le/a/k/c/r$c;->e:Le/a/k/c/r;

    invoke-static {v1}, Le/a/k/c/r;->l(Le/a/k/c/r;)Le/m/a/c/p1/h0/v;

    move-result-object v1

    invoke-static {v1, v0}, Le/m/a/c/p1/h0/m;->d(Le/m/a/c/p1/h0/c;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
