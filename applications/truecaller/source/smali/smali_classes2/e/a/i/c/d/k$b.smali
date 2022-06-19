.class public final Le/a/i/c/d/k$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/c/d/k;->a(Ljava/lang/String;Le/a/i/c/d/l;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.truecaller.ads.adsrouter.provider.AdRouterPixelManagerImpl$recordAdPixel$1"
    f = "AdRouterPixelManager.kt"
    l = {
        0x7e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/i/c/d/k;

.field public final synthetic h:Le/a/i/c/d/l;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/i/c/d/k;Le/a/i/c/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/i/c/d/k$b;->g:Le/a/i/c/d/k;

    iput-object p2, p0, Le/a/i/c/d/k$b;->h:Le/a/i/c/d/l;

    iput-object p3, p0, Le/a/i/c/d/k$b;->i:Ljava/lang/String;

    iput-object p4, p0, Le/a/i/c/d/k$b;->j:Ljava/lang/String;

    iput-object p5, p0, Le/a/i/c/d/k$b;->k:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 7
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

    new-instance p1, Le/a/i/c/d/k$b;

    iget-object v1, p0, Le/a/i/c/d/k$b;->g:Le/a/i/c/d/k;

    iget-object v2, p0, Le/a/i/c/d/k$b;->h:Le/a/i/c/d/l;

    iget-object v3, p0, Le/a/i/c/d/k$b;->i:Ljava/lang/String;

    iget-object v4, p0, Le/a/i/c/d/k$b;->j:Ljava/lang/String;

    iget-object v5, p0, Le/a/i/c/d/k$b;->k:Ljava/lang/String;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Le/a/i/c/d/k$b;-><init>(Le/a/i/c/d/k;Le/a/i/c/d/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/i/c/d/k$b;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/i/c/d/k$b;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/i/c/d/k$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/i/c/d/k$b;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/i/c/d/k$b;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_0

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
    iget-object p1, p0, Le/a/i/c/d/k$b;->h:Le/a/i/c/d/l;

    .line 5
    iget-object v1, p1, Le/a/i/c/d/l;->a:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Le/a/i/c/d/k$b;->i:Ljava/lang/String;

    .line 7
    iget-object p1, p1, Le/a/i/c/d/l;->b:Ljava/lang/String;

    .line 8
    iget-object v4, p0, Le/a/i/c/d/k$b;->j:Ljava/lang/String;

    const-string v5, "adUnitId"

    .line 9
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "partnerId"

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "trackerId"

    invoke-static {p1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "renderId"

    invoke-static {p1, v7}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "adType"

    invoke-static {v4, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x6

    new-array v8, v8, [Ls1/k;

    .line 10
    new-instance v9, Ls1/k;

    const-string v10, "auid"

    invoke-direct {v9, v10, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v9, v8, v1

    .line 11
    new-instance v1, Ls1/k;

    invoke-direct {v1, v5, v3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v8, v2

    const/4 v1, 0x2

    .line 12
    new-instance v3, Ls1/k;

    const-string v5, "publisherId"

    const-string v9, "734f7b23d66740c0abcca5ec9c532200"

    invoke-direct {v3, v5, v9}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v8, v1

    const/4 v1, 0x3

    .line 13
    new-instance v3, Ls1/k;

    invoke-direct {v3, v6, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v8, v1

    const/4 v1, 0x4

    .line 14
    new-instance v3, Ls1/k;

    invoke-direct {v3, v7, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v8, v1

    const/4 p1, 0x5

    .line 15
    new-instance v1, Ls1/k;

    const-string v3, "param"

    invoke-direct {v1, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v8, p1

    .line 16
    invoke-static {v8}, Ls1/u/i;->e0([Ls1/k;)Ljava/util/Map;

    move-result-object p1

    .line 17
    invoke-static {}, Le/m/d/y/n;->K()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v3, "gaid"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_2
    new-instance v1, Le/a/i/c/d/k$b$a;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, p0}, Le/a/i/c/d/k$b$a;-><init>(Ljava/util/Map;Ls1/w/d;Le/a/i/c/d/k$b;)V

    iput-object p1, p0, Le/a/i/c/d/k$b;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/i/c/d/k$b;->f:I

    invoke-static {v1, p0}, Le/m/d/y/n;->m1(Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 19
    :cond_3
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
