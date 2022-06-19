.class public final Le/a/i/e0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/e0/a;


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Ls1/g;

.field public final c:Lq3/a/x2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/f<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/u3/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/u3/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Le/a/i/e0/b;->d:Le/a/u3/g;

    .line 2
    new-instance p2, Le/m/e/k;

    invoke-direct {p2}, Le/m/e/k;-><init>()V

    iput-object p2, p0, Le/a/i/e0/b;->a:Le/m/e/k;

    .line 3
    new-instance p2, Le/a/i/e0/b$b;

    invoke-direct {p2, p1}, Le/a/i/e0/b$b;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/i/e0/b;->b:Ls1/g;

    .line 4
    new-instance p1, Le/a/i/e0/b$c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Le/a/i/e0/b$c;-><init>(Le/a/i/e0/b;Ls1/w/d;)V

    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->P(Ls1/z/b/p;)Lq3/a/x2/f;

    move-result-object p1

    iput-object p1, p0, Le/a/i/e0/b;->c:Lq3/a/x2/f;

    return-void
.end method

.method public static final d(Le/a/i/e0/b;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/i/e0/b;->b:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method


# virtual methods
.method public a(JLs1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/i/e0/b$d;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/i/e0/b$d;

    iget v1, v0, Le/a/i/e0/b$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/e0/b$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/e0/b$d;

    invoke-direct {v0, p0, p3}, Le/a/i/e0/b$d;-><init>(Le/a/i/e0/b;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/i/e0/b$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/e0/b$d;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/i/e0/b$d;->g:Ljava/lang/Object;

    check-cast p1, Le/a/i/e0/b;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/i/e0/b;->b:Ls1/g;

    invoke-interface {p3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/ConnectivityManager;

    .line 5
    invoke-virtual {p3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p3

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p3

    goto :goto_1

    :cond_3
    move p3, v3

    :goto_1
    if-eqz p3, :cond_4

    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_4
    const-wide/16 v5, 0x0

    cmp-long p3, p1, v5

    if-gtz p3, :cond_5

    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 8
    :cond_5
    new-instance p3, Le/a/i/e0/b$e;

    const/4 v2, 0x0

    invoke-direct {p3, p0, p1, p2, v2}, Le/a/i/e0/b$e;-><init>(Le/a/i/e0/b;JLs1/w/d;)V

    iput-object p0, v0, Le/a/i/e0/b$d;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/i/e0/b$d;->e:I

    invoke-static {p1, p2, p3, v0}, Lq3/a/j;->c(JLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 9
    :cond_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5

    const-string v0, "adPlacement"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/e0/b;->d:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->R3:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0xfe

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 3
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_c

    .line 5
    :try_start_0
    iget-object v1, p0, Le/a/i/e0/b;->a:Le/m/e/k;

    .line 6
    new-instance v3, Le/a/i/e0/b$a;

    invoke-direct {v3}, Le/a/i/e0/b$a;-><init>()V

    invoke-virtual {v3}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v3

    const-string v4, "object : TypeToken<T>() {}.type"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1, v0, v3}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "this.fromJson(json, typeToken<T>())"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/ads/network/OfflineToOnlineConfig;

    invoke-virtual {v0}, Lcom/truecaller/ads/network/OfflineToOnlineConfig;->getConfig()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/truecaller/ads/network/Config;

    invoke-virtual {v4}, Lcom/truecaller/ads/network/Config;->getPlacement()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    check-cast v3, Lcom/truecaller/ads/network/Config;

    if-eqz v3, :cond_7

    .line 9
    invoke-virtual {v3}, Lcom/truecaller/ads/network/Config;->getSource()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/truecaller/ads/network/Source;

    invoke-virtual {v1}, Lcom/truecaller/ads/network/Source;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_5
    move-object v0, v2

    :goto_3
    check-cast v0, Lcom/truecaller/ads/network/Source;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/truecaller/ads/network/Source;->getTimeout()J

    move-result-wide p1

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Lcom/truecaller/ads/network/Config;->getTimeout()J

    move-result-wide p1

    :goto_4
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_6

    .line 10
    :cond_7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/truecaller/ads/network/Config;

    invoke-virtual {v0}, Lcom/truecaller/ads/network/Config;->getPlacement()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ALL"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_9
    move-object p2, v2

    :goto_5
    check-cast p2, Lcom/truecaller/ads/network/Config;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/truecaller/ads/network/Config;->getTimeout()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :cond_a
    move-object p1, v2

    goto :goto_6

    :catchall_0
    move-exception p1

    .line 11
    invoke-static {p1}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 12
    :goto_6
    instance-of p2, p1, Ls1/l$a;

    if-eqz p2, :cond_b

    goto :goto_7

    :cond_b
    move-object v2, p1

    .line 13
    :goto_7
    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_8

    :cond_c
    const-wide/16 p1, -0x1

    :goto_8
    return-wide p1
.end method

.method public c()Lq3/a/x2/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/f<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/e0/b;->c:Lq3/a/x2/f;

    return-object v0
.end method
