.class public final Le/a/i/c/d/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/c/d/e;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/c/c/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/c/d/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/i/c/c/c;",
            ">;",
            "Lo3/a<",
            "Le/a/i/c/d/g;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "adRouterRestManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRouterCacheManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/c/d/f;->a:Lo3/a;

    iput-object p2, p0, Le/a/i/c/d/f;->b:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;ZLs1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;Z",
            "Ls1/w/d<",
            "-",
            "Le/a/i/c/c/h<",
            "Lcom/truecaller/ads/adsrouter/model/Ad;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/i/c/d/f$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/i/c/d/f$a;

    iget v1, v0, Le/a/i/c/d/f$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/c/d/f$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/c/d/f$a;

    invoke-direct {v0, p0, p3}, Le/a/i/c/d/f$a;-><init>(Le/a/i/c/d/f;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/i/c/d/f$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/c/d/f$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v7, :cond_4

    if-eq v2, v6, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/i/c/d/f$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/i/c/c/h;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-object p1, v0, Le/a/i/c/d/f$a;->h:Ljava/lang/Object;

    check-cast p1, Le/a/i/c/d/f;

    iget-object p2, v0, Le/a/i/c/d/f$a;->g:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_4
    iget-object p1, v0, Le/a/i/c/d/f$a;->i:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    iget-object p2, v0, Le/a/i/c/d/f$a;->h:Ljava/lang/Object;

    check-cast p2, Ljava/util/Map;

    iget-object v2, v0, Le/a/i/c/d/f$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/i/c/d/f;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v8, p3

    move-object p3, p1

    move-object p1, v2

    move-object v2, v8

    goto :goto_1

    :cond_5
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p2, :cond_b

    const-string p2, "ctx"

    .line 4
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p2, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    const-string p3, ","

    .line 5
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x0

    const/4 v4, 0x6

    invoke-static {p2, p3, v2, v2, v4}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 6
    iget-object p3, p0, Le/a/i/c/d/f;->b:Lo3/a;

    invoke-interface {p3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/i/c/d/g;

    iput-object p0, v0, Le/a/i/c/d/f$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/i/c/d/f$a;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/i/c/d/f$a;->i:Ljava/lang/Object;

    iput v7, v0, Le/a/i/c/d/f$a;->e:I

    invoke-interface {p3, p2, v0}, Le/a/i/c/d/g;->d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    :cond_6
    move-object v2, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    :goto_1
    check-cast v2, Le/a/i/c/c/h;

    if-eqz v2, :cond_7

    goto/16 :goto_5

    .line 7
    :cond_7
    iget-object v2, p1, Le/a/i/c/d/f;->a:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/i/c/c/c;

    iput-object p3, v0, Le/a/i/c/d/f$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/i/c/d/f$a;->h:Ljava/lang/Object;

    iput-object v3, v0, Le/a/i/c/d/f$a;->i:Ljava/lang/Object;

    iput v6, v0, Le/a/i/c/d/f$a;->e:I

    invoke-interface {v2, p2, v0}, Le/a/i/c/c/c;->b(Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    return-object v1

    :cond_8
    move-object v8, p3

    move-object p3, p2

    move-object p2, v8

    .line 8
    :goto_2
    check-cast p3, Le/a/i/c/c/h;

    .line 9
    instance-of v2, p3, Le/a/i/c/c/i;

    if-eqz v2, :cond_a

    .line 10
    move-object v2, p3

    check-cast v2, Le/a/i/c/c/i;

    .line 11
    iget-object v4, v2, Le/a/i/c/c/i;->a:Ljava/lang/Object;

    .line 12
    check-cast v4, Lcom/truecaller/ads/adsrouter/model/Ad;

    invoke-virtual {v4}, Lcom/truecaller/ads/adsrouter/model/Ad;->getMeta()Lcom/truecaller/ads/adsrouter/model/Meta;

    move-result-object v4

    invoke-virtual {v4}, Lcom/truecaller/ads/adsrouter/model/Meta;->getPartner()Ljava/lang/String;

    move-result-object v4

    const-string v6, "truecaller"

    invoke-static {v6, v4, v7}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_a

    .line 13
    iget-object p1, p1, Le/a/i/c/d/f;->b:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/c/d/g;

    .line 14
    iget-object v2, v2, Le/a/i/c/c/i;->a:Ljava/lang/Object;

    .line 15
    check-cast v2, Lcom/truecaller/ads/adsrouter/model/Ad;

    iput-object p3, v0, Le/a/i/c/d/f$a;->g:Ljava/lang/Object;

    iput-object v3, v0, Le/a/i/c/d/f$a;->h:Ljava/lang/Object;

    iput v5, v0, Le/a/i/c/d/f$a;->e:I

    invoke-interface {p1, v2, p2, v0}, Le/a/i/c/d/g;->f(Lcom/truecaller/ads/adsrouter/model/Ad;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9

    return-object v1

    :cond_9
    move-object p1, p3

    :goto_3
    move-object v2, p1

    goto :goto_5

    :cond_a
    move-object v2, p3

    goto :goto_5

    .line 16
    :cond_b
    iget-object p2, p0, Le/a/i/c/d/f;->a:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/i/c/c/c;

    iput v4, v0, Le/a/i/c/d/f$a;->e:I

    invoke-interface {p2, p1, v0}, Le/a/i/c/c/c;->b(Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_c

    return-object v1

    .line 17
    :cond_c
    :goto_4
    move-object v2, p3

    check-cast v2, Le/a/i/c/c/h;

    :goto_5
    return-object v2
.end method
