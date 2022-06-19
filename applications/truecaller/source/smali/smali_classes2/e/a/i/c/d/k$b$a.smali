.class public final Le/a/i/c/d/k$b$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/c/d/k$b;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lx3/a0<",
        "Ls1/s;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.ads.adsrouter.provider.AdRouterPixelManagerImpl$recordAdPixel$1$1$1"
    f = "AdRouterPixelManager.kt"
    l = {
        0x7e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Ljava/util/Map;

.field public final synthetic g:Le/a/i/c/d/k$b;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ls1/w/d;Le/a/i/c/d/k$b;)V
    .locals 0

    iput-object p1, p0, Le/a/i/c/d/k$b$a;->f:Ljava/util/Map;

    iput-object p3, p0, Le/a/i/c/d/k$b$a;->g:Le/a/i/c/d/k$b;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/i/c/d/k$b$a;

    iget-object v1, p0, Le/a/i/c/d/k$b$a;->f:Ljava/util/Map;

    iget-object v2, p0, Le/a/i/c/d/k$b$a;->g:Le/a/i/c/d/k$b;

    invoke-direct {v0, v1, p1, v2}, Le/a/i/c/d/k$b$a;-><init>(Ljava/util/Map;Ls1/w/d;Le/a/i/c/d/k$b;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/i/c/d/k$b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Le/a/i/c/d/k$b$a;

    iget-object v1, p0, Le/a/i/c/d/k$b$a;->f:Ljava/util/Map;

    iget-object v2, p0, Le/a/i/c/d/k$b$a;->g:Le/a/i/c/d/k$b;

    invoke-direct {v0, v1, p1, v2}, Le/a/i/c/d/k$b$a;-><init>(Ljava/util/Map;Ls1/w/d;Le/a/i/c/d/k$b;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/i/c/d/k$b$a;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/i/c/d/k$b$a;->g:Le/a/i/c/d/k$b;

    iget-object p1, p1, Le/a/i/c/d/k$b;->g:Le/a/i/c/d/k;

    .line 2
    iget-object p1, p1, Le/a/i/c/d/k;->f:Lo3/a;

    .line 3
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/u/b;

    iget-object v1, p0, Le/a/i/c/d/k$b$a;->g:Le/a/i/c/d/k$b;

    iget-object v1, v1, Le/a/i/c/d/k$b;->k:Ljava/lang/String;

    iget-object v3, p0, Le/a/i/c/d/k$b$a;->f:Ljava/util/Map;

    iput v2, p0, Le/a/i/c/d/k$b$a;->e:I

    invoke-interface {p1, v1, v3, p0}, Le/a/i/u/b;->a(Ljava/lang/String;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    return-object p1
.end method
