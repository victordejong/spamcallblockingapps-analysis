.class public final Le/a/i/d0/d0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/d0/d0/f;


# instance fields
.field public final a:Le/m/e/k;

.field public final b:Ls1/g;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/c/d/a;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/f0/j/a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/h0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;",
            "Lo3/a<",
            "Le/a/i/c/d/a;",
            ">;",
            "Lo3/a<",
            "Le/a/i/f0/j/a;",
            ">;",
            "Lo3/a<",
            "Le/a/i/h0/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRouterAdsProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acsAdRequestIdGenerator"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acsCallIdHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/d0/d0/g;->c:Lo3/a;

    iput-object p2, p0, Le/a/i/d0/d0/g;->d:Lo3/a;

    iput-object p3, p0, Le/a/i/d0/d0/g;->e:Lo3/a;

    iput-object p4, p0, Le/a/i/d0/d0/g;->f:Lo3/a;

    .line 2
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    iput-object p1, p0, Le/a/i/d0/d0/g;->a:Le/m/e/k;

    .line 3
    sget-object p1, Le/a/i/d0/d0/g$b;->b:Le/a/i/d0/d0/g$b;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/i/d0/d0/g;->b:Ls1/g;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/ads/mediation/google/MediationCustomRequest;)Lcom/truecaller/ads/mediation/google/ServerParams;
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/ads/mediation/google/MediationCustomRequest;->getServerParams()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    :try_start_0
    iget-object v0, p0, Le/a/i/d0/d0/g;->a:Le/m/e/k;

    .line 3
    new-instance v1, Le/a/i/d0/d0/g$a;

    invoke-direct {v1}, Le/a/i/d0/d0/g$a;-><init>()V

    invoke-virtual {v1}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "object : TypeToken<T>() {}.type"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1, v1}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "this.fromJson(json, typeToken<T>())"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/truecaller/ads/mediation/google/ServerParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    :goto_0
    invoke-static {p1}, Ls1/l;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    sget-object p1, Le/a/i/h0/m;->a:Ls1/z/b/l;

    const-string v1, "Adapter failed to read server parameters "

    .line 8
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance p1, Lcom/truecaller/ads/mediation/google/ServerParams;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/truecaller/ads/mediation/google/ServerParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILs1/z/c/f;)V

    .line 10
    :goto_1
    check-cast p1, Lcom/truecaller/ads/mediation/google/ServerParams;

    goto :goto_2

    .line 11
    :cond_1
    new-instance p1, Lcom/truecaller/ads/mediation/google/ServerParams;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/truecaller/ads/mediation/google/ServerParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILs1/z/c/f;)V

    :goto_2
    return-object p1
.end method

.method public final b(Ljava/util/List;Lcom/truecaller/ads/mediation/google/ServerParams;)Le/a/i/c/d/l;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/truecaller/ads/mediation/google/ServerParams;",
            ")",
            "Le/a/i/c/d/l;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/a/i/c/d/l;->n:Le/a/i/c/d/l$b;

    .line 2
    new-instance v0, Le/a/i/c/d/l$a;

    invoke-direct {v0}, Le/a/i/c/d/l$a;-><init>()V

    .line 3
    invoke-virtual {p2}, Lcom/truecaller/ads/mediation/google/ServerParams;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/truecaller/ads/mediation/google/ServerParams;->getContext()Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_0
    iget-object v2, p0, Le/a/i/d0/d0/g;->e:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/i/f0/j/a;

    invoke-interface {v2}, Le/a/i/f0/j/a;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/String;

    .line 5
    invoke-interface {p1, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    array-length v4, p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1, v2, p1}, Le/a/i/c/d/l$a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Le/a/i/c/d/l$a;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    .line 7
    invoke-virtual {p2}, Lcom/truecaller/ads/mediation/google/ServerParams;->getContext()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-virtual {v0, p1}, Le/a/i/c/d/l$a;->b([Ljava/lang/String;)Le/a/i/c/d/l$a;

    const-string p1, "network"

    .line 8
    invoke-virtual {v0, p1}, Le/a/i/c/d/l$a;->d(Ljava/lang/String;)Le/a/i/c/d/l$a;

    .line 9
    invoke-virtual {p2}, Lcom/truecaller/ads/mediation/google/ServerParams;->getPublisherId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "publisherId"

    .line 10
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, v0, Le/a/i/c/d/l$a;->f:Ljava/lang/String;

    .line 12
    invoke-virtual {p2}, Lcom/truecaller/ads/mediation/google/ServerParams;->getContext()Ljava/lang/String;

    move-result-object p1

    .line 13
    iget-object p2, p0, Le/a/i/d0/d0/g;->f:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/i/h0/a;

    invoke-interface {p2}, Le/a/i/h0/a;->a()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 14
    iget-object v2, p0, Le/a/i/d0/d0/g;->b:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/f0/h;

    .line 15
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "input"

    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v2, v2, Ls1/f0/h;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 17
    new-instance p1, Le/a/i/f;

    const/4 v2, 0x4

    const-string v3, "call"

    invoke-direct {p1, p2, v3, v1, v2}, Le/a/i/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V

    move-object v1, p1

    .line 18
    :cond_1
    iput-object v1, v0, Le/a/i/c/d/l$a;->g:Le/a/i/f;

    .line 19
    invoke-virtual {v0}, Le/a/i/c/d/l$a;->a()Le/a/i/c/d/l;

    move-result-object p1

    return-object p1
.end method
