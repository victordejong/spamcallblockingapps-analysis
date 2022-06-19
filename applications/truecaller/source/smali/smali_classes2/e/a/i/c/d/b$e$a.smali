.class public final Le/a/i/c/d/b$e$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/c/d/b$e;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.ads.adsrouter.provider.AdRouterAdsProviderImpl$loadAd$1$1"
    f = "AdRouterAdsProvider.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/i/c/d/b$e;

.field public final synthetic f:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/i/c/d/b$e;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/c/d/b$e$a;->e:Le/a/i/c/d/b$e;

    iput-object p2, p0, Le/a/i/c/d/b$e$a;->f:Ls1/z/c/c0;

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

    new-instance p1, Le/a/i/c/d/b$e$a;

    iget-object v0, p0, Le/a/i/c/d/b$e$a;->e:Le/a/i/c/d/b$e;

    iget-object v1, p0, Le/a/i/c/d/b$e$a;->f:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/i/c/d/b$e$a;-><init>(Le/a/i/c/d/b$e;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/i/c/d/b$e$a;->e:Le/a/i/c/d/b$e;

    iget-object v1, p0, Le/a/i/c/d/b$e$a;->f:Ls1/z/c/c0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 5
    instance-of v1, p2, Le/a/i/c/a/c;

    if-eqz v1, :cond_0

    iget-object v0, v0, Le/a/i/c/d/b$e;->m:Le/a/i/c/d/i;

    check-cast p2, Le/a/i/c/a/c;

    invoke-interface {v0, p2}, Le/a/i/c/d/i;->a(Le/a/i/c/a/c;)V

    goto :goto_0

    .line 6
    :cond_0
    instance-of v1, p2, Le/a/i/c/b/a;

    if-eqz v1, :cond_1

    iget-object v0, v0, Le/a/i/c/d/b$e;->m:Le/a/i/c/d/i;

    check-cast p2, Le/a/i/c/b/a;

    invoke-interface {v0, p2}, Le/a/i/c/d/i;->b(Le/a/i/c/b/a;)V

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/i/c/d/b$e$a;->f:Ls1/z/c/c0;

    iget-object p1, p1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 3
    instance-of v0, p1, Le/a/i/c/a/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/i/c/d/b$e$a;->e:Le/a/i/c/d/b$e;

    iget-object v0, v0, Le/a/i/c/d/b$e;->m:Le/a/i/c/d/i;

    check-cast p1, Le/a/i/c/a/c;

    invoke-interface {v0, p1}, Le/a/i/c/d/i;->a(Le/a/i/c/a/c;)V

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Le/a/i/c/b/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/i/c/d/b$e$a;->e:Le/a/i/c/d/b$e;

    iget-object v0, v0, Le/a/i/c/d/b$e;->m:Le/a/i/c/d/i;

    check-cast p1, Le/a/i/c/b/a;

    invoke-interface {v0, p1}, Le/a/i/c/d/i;->b(Le/a/i/c/b/a;)V

    .line 5
    :cond_1
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
