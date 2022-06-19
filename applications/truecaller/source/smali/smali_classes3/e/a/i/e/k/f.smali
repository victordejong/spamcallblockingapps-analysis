.class public final Le/a/i/e/k/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/e/k/e;


# static fields
.field public static final synthetic i:[Ls1/a/l;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/b0/c;

.field public final c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/c/c/c;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/v/c;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/p5/u;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/c/d/j;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/e/h/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/e/h/a/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/i/e/k/f;

    const-string v2, "leadGenUploadResult"

    const-string v3, "getLeadGenUploadResult()Z"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/i/e/k/f;->i:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/i/c/c/c;",
            ">;",
            "Lo3/a<",
            "Le/a/i/v/c;",
            ">;",
            "Lo3/a<",
            "Le/a/p5/u;",
            ">;",
            "Lo3/a<",
            "Le/a/i/c/d/j;",
            ">;",
            "Lo3/a<",
            "Le/a/i/e/h/a/b;",
            ">;",
            "Lo3/a<",
            "Le/a/i/e/h/a/i;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "adRouterRestManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adsMediaManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRouterPixelManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineLeadGenFormDao"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineLeadGenDao"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/i/e/k/f;->c:Lo3/a;

    iput-object p2, p0, Le/a/i/e/k/f;->d:Lo3/a;

    iput-object p3, p0, Le/a/i/e/k/f;->e:Lo3/a;

    iput-object p4, p0, Le/a/i/e/k/f;->f:Lo3/a;

    iput-object p5, p0, Le/a/i/e/k/f;->g:Lo3/a;

    iput-object p6, p0, Le/a/i/e/k/f;->h:Lo3/a;

    .line 2
    sget-object p1, Le/a/i/e/k/f$f;->b:Le/a/i/e/k/f$f;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/i/e/k/f;->a:Ls1/g;

    .line 3
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 4
    new-instance p2, Le/a/i/e/k/f$b;

    invoke-direct {p2, p1, p1}, Le/a/i/e/k/f$b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iput-object p2, p0, Le/a/i/e/k/f;->b:Ls1/b0/c;

    return-void
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/e/k/f;->e:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/p5/u;

    invoke-interface {v0}, Le/a/p5/u;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Le/a/i/e/k/f;->j(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/truecaller/ads/offline/dto/OfflineAdsDto;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/ads/offline/dto/OfflineAdsDto;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/c/c/h<",
            "+",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/offline/dto/OfflineAdUiConfigAsset;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->getComponents()Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/truecaller/ads/offline/dto/Component;

    .line 4
    invoke-virtual {v1}, Lcom/truecaller/ads/offline/dto/Component;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImageView"

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/truecaller/ads/offline/dto/Component;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SponsoredImageView"

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/truecaller/ads/offline/dto/Component;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ArticleBodyImageview"

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 5
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 9
    check-cast v0, Lcom/truecaller/ads/offline/dto/Component;

    .line 10
    invoke-virtual {v0}, Lcom/truecaller/ads/offline/dto/Component;->getSrc()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 11
    iget-object v1, p0, Le/a/i/e/k/f;->d:Lo3/a;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/v/c;

    invoke-interface {v1, v0}, Le/a/i/v/c;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 12
    new-instance v2, Lcom/truecaller/ads/offline/dto/OfflineAdUiConfigAsset;

    invoke-direct {v2, v0, v1}, Lcom/truecaller/ads/offline/dto/OfflineAdUiConfigAsset;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 13
    :cond_4
    new-instance p1, Le/a/i/c/c/g;

    const/16 p2, 0x386

    const-string v0, "Fail to download asset"

    invoke-direct {p1, p2, v0}, Le/a/i/c/c/g;-><init>(ILjava/lang/String;)V

    return-object p1

    .line 14
    :cond_5
    new-instance p1, Le/a/i/c/c/g;

    const/16 p2, 0x385

    const-string v0, "Source url is not present"

    invoke-direct {p1, p2, v0}, Le/a/i/c/c/g;-><init>(ILjava/lang/String;)V

    return-object p1

    :cond_6
    const/4 p2, 0x0

    const/4 v0, 0x2

    .line 15
    new-instance v1, Le/a/i/c/c/i;

    invoke-direct {v1, p1, p2, v0}, Le/a/i/c/c/i;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    return-object v1
.end method

.method public c(ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Le/a/i/c/a/u$d;->b:Le/a/i/c/a/u$d;

    goto :goto_0

    :cond_0
    sget-object p1, Le/a/i/c/a/u$b;->b:Le/a/i/c/a/u$b;

    :goto_0
    move-object v1, p1

    .line 2
    iget-object p1, p0, Le/a/i/e/k/f;->f:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Le/a/i/c/d/j;

    sget-object p1, Lcom/truecaller/ads/adslogger/AdsPixel;->THANK_YOU:Lcom/truecaller/ads/adslogger/AdsPixel;

    invoke-virtual {p1}, Lcom/truecaller/ads/adslogger/AdsPixel;->getValue()Ljava/lang/String;

    move-result-object v3

    move-object v2, p4

    move-object v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Le/a/i/c/d/j;->b(Le/a/i/c/a/u;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public d(ZLjava/lang/String;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/e/c<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/i/e/k/f$g;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/i/e/k/f$g;

    iget v1, v0, Le/a/i/e/k/f$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/e/k/f$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/e/k/f$g;

    invoke-direct {v0, p0, p4}, Le/a/i/e/k/f$g;-><init>(Le/a/i/e/k/f;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/i/e/k/f$g;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/e/k/f$g;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p1, :cond_5

    .line 4
    iput v4, v0, Le/a/i/e/k/f$g;->e:I

    invoke-virtual {p0, p2, p3, v0}, Le/a/i/e/k/f;->i(Ljava/lang/String;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p4, Le/a/i/e/c;

    goto :goto_3

    .line 5
    :cond_5
    iget-object p1, p0, Le/a/i/e/k/f;->c:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/c/c/c;

    iput v3, v0, Le/a/i/e/k/f$g;->e:I

    invoke-interface {p1, p2, p3, v0}, Le/a/i/c/c/c;->c(Ljava/lang/String;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_6

    return-object v1

    .line 6
    :cond_6
    :goto_2
    check-cast p4, Le/a/i/e/c;

    :goto_3
    return-object p4
.end method

.method public e(ZLjava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/e/c<",
            "Lcom/truecaller/ads/offline/dto/OfflineAdsDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/i/e/k/f$c;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/i/e/k/f$c;

    iget v1, v0, Le/a/i/e/k/f$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/e/k/f$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/e/k/f$c;

    invoke-direct {v0, p0, p3}, Le/a/i/e/k/f$c;-><init>(Le/a/i/e/k/f;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/i/e/k/f$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/e/k/f$c;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

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

    goto :goto_1

    :cond_3
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p1, :cond_5

    .line 4
    iput v4, v0, Le/a/i/e/k/f$c;->e:I

    invoke-virtual {p0, p2, v0}, Le/a/i/e/k/f;->h(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p3, Le/a/i/e/c;

    goto :goto_3

    .line 5
    :cond_5
    iget-object p1, p0, Le/a/i/e/k/f;->c:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/c/c/c;

    const/4 p3, 0x3

    iput v3, v0, Le/a/i/e/k/f$c;->e:I

    invoke-interface {p1, p2, p3, v0}, Le/a/i/c/c/c;->d(Ljava/lang/String;ILs1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_6

    return-object v1

    .line 6
    :cond_6
    :goto_2
    check-cast p3, Le/a/i/e/c;

    :goto_3
    return-object p3
.end method

.method public f(Ljava/lang/String;Lcom/truecaller/ads/offline/dto/OfflineAdsDto;Ljava/util/List;Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/truecaller/ads/offline/dto/OfflineAdsDto;",
            "Ljava/util/List<",
            "Lcom/truecaller/ads/offline/dto/OfflineAdUiConfigAsset;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/e/k/f;->g:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/e/h/a/b;

    new-instance v1, Le/a/i/e/h/b/a;

    invoke-virtual {p0}, Le/a/i/e/k/f;->g()Le/m/e/k;

    move-result-object v2

    invoke-virtual {v2, p2}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "gson.toJson(offlineAdsDto)"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1, p2, p3, p4}, Le/a/i/e/h/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v0, v1, p5}, Le/a/i/e/h/a/b;->h(Le/a/i/e/h/b/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g()Le/m/e/k;
    .locals 1

    iget-object v0, p0, Le/a/i/e/k/f;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/e/k;

    return-object v0
.end method

.method public final h(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/e/c<",
            "Lcom/truecaller/ads/offline/dto/OfflineAdsDto;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/e/k/f$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/e/k/f$e;

    iget v1, v0, Le/a/i/e/k/f$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/e/k/f$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/e/k/f$e;

    invoke-direct {v0, p0, p2}, Le/a/i/e/k/f$e;-><init>(Le/a/i/e/k/f;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/i/e/k/f$e;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/e/k/f$e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/i/e/k/f$e;->g:Ljava/lang/Object;

    check-cast p1, Le/a/i/e/k/f;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/i/e/k/f;->g:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/i/e/h/a/b;

    iput-object p0, v0, Le/a/i/e/k/f$e;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/i/e/k/f$e;->e:I

    invoke-interface {p2, p1, v0}, Le/a/i/e/h/a/b;->n(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object p1, p0

    .line 5
    :goto_1
    check-cast p2, Le/a/i/e/h/b/a;

    if-eqz p2, :cond_4

    .line 6
    :try_start_0
    invoke-virtual {p1}, Le/a/i/e/k/f;->g()Le/m/e/k;

    move-result-object p1

    .line 7
    iget-object v0, p2, Le/a/i/e/h/b/a;->c:Ljava/lang/String;

    .line 8
    new-instance v1, Le/a/i/e/k/f$d;

    invoke-direct {v1}, Le/a/i/e/k/f$d;-><init>()V

    invoke-virtual {v1}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "object : TypeToken<T>() {}.type"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1, v0, v1}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "this.fromJson(json, typeToken<T>())"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    move-object v0, p1

    check-cast v0, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;

    .line 11
    iget-object v1, p2, Le/a/i/e/h/b/a;->d:Ljava/util/List;

    .line 12
    invoke-virtual {v0, v1}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->setAssetsList(Ljava/util/List;)V

    .line 13
    iget-object p2, p2, Le/a/i/e/h/b/a;->e:Ljava/util/List;

    .line 14
    invoke-virtual {v0, p2}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->setPixels(Ljava/util/List;)V

    .line 15
    invoke-virtual {v0, v3}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->setOffline(Z)V

    .line 16
    check-cast p1, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;

    new-instance p2, Le/a/i/e/f;

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p2, p1, v0, v1}, Le/a/i/e/f;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 17
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 18
    new-instance p2, Le/a/i/e/d;

    sget-object p1, Le/a/i/e/b$b;->c:Le/a/i/e/b$b;

    invoke-direct {p2, p1}, Le/a/i/e/d;-><init>(Le/a/i/e/b;)V

    goto :goto_2

    .line 19
    :cond_4
    new-instance p2, Le/a/i/e/d;

    sget-object p1, Le/a/i/e/b$e;->c:Le/a/i/e/b$e;

    invoke-direct {p2, p1}, Le/a/i/e/d;-><init>(Le/a/i/e/b;)V

    :goto_2
    return-object p2
.end method

.method public final synthetic i(Ljava/lang/String;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/e/c<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/i/e/k/f$h;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/i/e/k/f$h;

    iget v1, v0, Le/a/i/e/k/f$h;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/e/k/f$h;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/e/k/f$h;

    invoke-direct {v0, p0, p3}, Le/a/i/e/k/f$h;-><init>(Le/a/i/e/k/f;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/i/e/k/f$h;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/i/e/k/f$h;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Le/m/e/u; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

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
    :try_start_1
    iget-object p3, p0, Le/a/i/e/k/f;->h:Lo3/a;

    invoke-interface {p3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/i/e/h/a/i;

    new-instance v2, Le/a/i/e/h/b/c;

    invoke-virtual {p0}, Le/a/i/e/k/f;->g()Le/m/e/k;

    move-result-object v4

    invoke-virtual {v4, p2}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "gson.toJson(formData)"

    invoke-static {p2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-direct {v2, p1, p2, v4, v5}, Le/a/i/e/h/b/c;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    iput v3, v0, Le/a/i/e/k/f$h;->e:I

    invoke-interface {p3, v2, v0}, Le/a/i/e/h/a/i;->B(Le/a/i/e/h/b/c;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    new-instance p1, Le/a/i/e/f;

    const-string p2, "Form submitted successfully"

    const/4 p3, 0x0

    const/4 v0, 0x2

    invoke-direct {p1, p2, p3, v0}, Le/a/i/e/f;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V
    :try_end_1
    .catch Le/m/e/u; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 6
    invoke-static {p1}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 7
    new-instance p1, Le/a/i/e/d;

    sget-object p2, Le/a/i/e/b$d;->c:Le/a/i/e/b$d;

    invoke-direct {p1, p2}, Le/a/i/e/d;-><init>(Le/a/i/e/b;)V

    :goto_2
    return-object p1
.end method

.method public final j(Ls1/w/d;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    instance-of v3, v0, Le/a/i/e/k/f$i;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Le/a/i/e/k/f$i;

    iget v4, v3, Le/a/i/e/k/f$i;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Le/a/i/e/k/f$i;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Le/a/i/e/k/f$i;

    invoke-direct {v3, v1, v0}, Le/a/i/e/k/f$i;-><init>(Le/a/i/e/k/f;Ls1/w/d;)V

    :goto_0
    iget-object v0, v3, Le/a/i/e/k/f$i;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Le/a/i/e/k/f$i;->e:I

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v6, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v5, v3, Le/a/i/e/k/f$i;->i:Ljava/lang/Object;

    check-cast v5, Le/a/i/e/k/f;

    iget-object v10, v3, Le/a/i/e/k/f$i;->h:Ljava/lang/Object;

    check-cast v10, Ljava/util/Iterator;

    iget-object v11, v3, Le/a/i/e/k/f$i;->g:Ljava/lang/Object;

    check-cast v11, Le/a/i/e/k/f;

    :try_start_0
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v5, v3, Le/a/i/e/k/f$i;->k:Ljava/lang/Object;

    check-cast v5, Le/a/i/e/k/f;

    iget-object v10, v3, Le/a/i/e/k/f$i;->j:Ljava/lang/Object;

    check-cast v10, Le/a/i/e/k/f;

    iget-object v11, v3, Le/a/i/e/k/f$i;->i:Ljava/lang/Object;

    check-cast v11, Le/a/i/e/h/b/c;

    iget-object v12, v3, Le/a/i/e/k/f$i;->h:Ljava/lang/Object;

    check-cast v12, Ljava/util/Iterator;

    iget-object v13, v3, Le/a/i/e/k/f$i;->g:Ljava/lang/Object;

    check-cast v13, Le/a/i/e/k/f;

    :try_start_1
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v15, v10

    move-object v10, v5

    move-object v5, v15

    move-object/from16 v16, v13

    move-object v13, v11

    move-object/from16 v11, v16

    goto/16 :goto_5

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_3
    iget-object v5, v3, Le/a/i/e/k/f$i;->g:Ljava/lang/Object;

    check-cast v5, Le/a/i/e/k/f;

    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v0, v1, Le/a/i/e/k/f;->h:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/e/h/a/i;

    iput-object v1, v3, Le/a/i/e/k/f$i;->g:Ljava/lang/Object;

    iput v8, v3, Le/a/i/e/k/f$i;->e:I

    invoke-interface {v0, v3}, Le/a/i/e/h/a/i;->r(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_5

    return-object v4

    :cond_5
    move-object v5, v1

    .line 5
    :goto_1
    move-object v10, v0

    check-cast v10, Ljava/util/List;

    if-eqz v10, :cond_7

    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_2

    :cond_6
    move v10, v9

    goto :goto_3

    :cond_7
    :goto_2
    move v10, v8

    :goto_3
    if-eqz v10, :cond_8

    return-object v2

    :cond_8
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v12, v0

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Le/a/i/e/h/b/c;

    .line 7
    iget-boolean v0, v11, Le/a/i/e/h/b/c;->d:Z

    if-eqz v0, :cond_9

    return-object v2

    .line 8
    :cond_9
    :try_start_2
    invoke-virtual {v5}, Le/a/i/e/k/f;->g()Le/m/e/k;

    move-result-object v0

    .line 9
    iget-object v10, v11, Le/a/i/e/h/b/c;->c:Ljava/lang/String;

    .line 10
    new-instance v13, Le/a/i/e/k/f$a;

    invoke-direct {v13}, Le/a/i/e/k/f$a;-><init>()V

    invoke-virtual {v13}, Le/m/e/f0/a;->getType()Ljava/lang/reflect/Type;

    move-result-object v13

    const-string v14, "object : TypeToken<T>() {}.type"

    invoke-static {v13, v14}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v10, v13}, Le/m/e/k;->g(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    const-string v10, "this.fromJson(json, typeToken<T>())"

    invoke-static {v0, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    check-cast v0, Ljava/util/Map;

    .line 13
    iget-object v10, v5, Le/a/i/e/k/f;->c:Lo3/a;

    invoke-interface {v10}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Le/a/i/c/c/c;

    .line 14
    iget-object v13, v11, Le/a/i/e/h/b/c;->b:Ljava/lang/String;

    .line 15
    iput-object v5, v3, Le/a/i/e/k/f$i;->g:Ljava/lang/Object;

    iput-object v12, v3, Le/a/i/e/k/f$i;->h:Ljava/lang/Object;

    iput-object v11, v3, Le/a/i/e/k/f$i;->i:Ljava/lang/Object;

    iput-object v5, v3, Le/a/i/e/k/f$i;->j:Ljava/lang/Object;

    iput-object v5, v3, Le/a/i/e/k/f$i;->k:Ljava/lang/Object;

    iput v6, v3, Le/a/i/e/k/f$i;->e:I

    invoke-interface {v10, v13, v0, v3}, Le/a/i/c/c/c;->c(Ljava/lang/String;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne v0, v4, :cond_a

    return-object v4

    :cond_a
    move-object v10, v5

    move-object v13, v11

    move-object v11, v10

    .line 16
    :goto_5
    :try_start_3
    check-cast v0, Le/a/i/e/c;

    .line 17
    instance-of v0, v0, Le/a/i/e/f;

    if-eqz v0, :cond_c

    .line 18
    iget-object v0, v10, Le/a/i/e/k/f;->h:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/e/h/a/i;

    .line 19
    iget-object v10, v13, Le/a/i/e/h/b/c;->b:Ljava/lang/String;

    .line 20
    iput-object v11, v3, Le/a/i/e/k/f$i;->g:Ljava/lang/Object;

    iput-object v12, v3, Le/a/i/e/k/f$i;->h:Ljava/lang/Object;

    iput-object v5, v3, Le/a/i/e/k/f$i;->i:Ljava/lang/Object;

    const/4 v13, 0x0

    iput-object v13, v3, Le/a/i/e/k/f$i;->j:Ljava/lang/Object;

    iput-object v13, v3, Le/a/i/e/k/f$i;->k:Ljava/lang/Object;

    iput v7, v3, Le/a/i/e/k/f$i;->e:I

    invoke-interface {v0, v8, v10, v3}, Le/a/i/e/h/a/i;->p(ZLjava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v0, v4, :cond_b

    return-object v4

    :cond_b
    move-object v10, v12

    :goto_6
    move v0, v8

    goto :goto_7

    :cond_c
    move v0, v9

    move-object v10, v12

    .line 21
    :goto_7
    :try_start_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v12, v10

    goto :goto_a

    :goto_8
    move-object v12, v10

    move-object v13, v11

    move-object v10, v5

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v10, v5

    move-object v13, v11

    goto :goto_9

    :catchall_3
    move-exception v0

    move-object v10, v5

    move-object v13, v10

    .line 24
    :goto_9
    invoke-static {v0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v10

    move-object v11, v13

    .line 25
    :goto_a
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    instance-of v13, v0, Ls1/l$a;

    if-eqz v13, :cond_d

    move-object v0, v10

    .line 27
    :cond_d
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 28
    iget-object v10, v5, Le/a/i/e/k/f;->b:Ls1/b0/c;

    sget-object v13, Le/a/i/e/k/f;->i:[Ls1/a/l;

    aget-object v13, v13, v9

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v10, v5, v13, v0}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    move-object v5, v11

    goto/16 :goto_4

    .line 29
    :cond_e
    iget-object v0, v5, Le/a/i/e/k/f;->b:Ls1/b0/c;

    sget-object v2, Le/a/i/e/k/f;->i:[Ls1/a/l;

    aget-object v2, v2, v9

    invoke-interface {v0, v5, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
