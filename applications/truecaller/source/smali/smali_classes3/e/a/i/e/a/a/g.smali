.class public final Le/a/i/e/a/a/g;
.super Le/a/i/e/a/a/d;
.source "SourceFile"

# interfaces
.implements Le/a/i/e/g/a/f/b/h;
.implements Le/a/i/e/g/a/f/b/e;


# static fields
.field public static final synthetic y:[Ls1/a/l;


# instance fields
.field public final d:Le/m/e/k;

.field public e:Lcom/truecaller/ads/offline/dto/OfflineAdsDto;

.field public f:Lcom/truecaller/ads/offline/dto/OfflineLeadGenViewDto;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public final j:Ls1/b0/c;

.field public final k:Ls1/g;

.field public l:Ljava/lang/Long;

.field public m:Ljava/lang/String;

.field public n:Z

.field public final o:Ls1/w/f;

.field public final p:Ls1/w/f;

.field public final q:Le/a/i/e/k/e;

.field public final r:Le/a/b0/o/a;

.field public final s:Le/a/b0/e/r/a;

.field public final t:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/p5/u;",
            ">;"
        }
    .end annotation
.end field

.field public final u:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/p5/c;",
            ">;"
        }
    .end annotation
.end field

.field public final v:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/c/c/c;",
            ">;"
        }
    .end annotation
.end field

.field public final w:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i/e0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/i/e/a/a/g;

    const-string v2, "isOffline"

    const-string v3, "isOffline()Z"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/i/e/a/a/g;->y:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/i/e/k/e;Le/a/b0/o/a;Le/a/b0/e/r/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;Lo3/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Ls1/w/f;",
            "Le/a/i/e/k/e;",
            "Le/a/b0/o/a;",
            "Le/a/b0/e/r/a;",
            "Lo3/a<",
            "Le/a/p5/u;",
            ">;",
            "Lo3/a<",
            "Le/a/p5/c;",
            ">;",
            "Lo3/a<",
            "Le/a/i/c/c/c;",
            ">;",
            "Lo3/a<",
            "Le/a/u3/g;",
            ">;",
            "Lo3/a<",
            "Le/a/i/e0/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "offlineLeadGenManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRouterRestManager"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivityMonitor"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/i/e/a/a/d;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/i/e/a/a/g;->o:Ls1/w/f;

    iput-object p2, p0, Le/a/i/e/a/a/g;->p:Ls1/w/f;

    iput-object p3, p0, Le/a/i/e/a/a/g;->q:Le/a/i/e/k/e;

    iput-object p4, p0, Le/a/i/e/a/a/g;->r:Le/a/b0/o/a;

    iput-object p5, p0, Le/a/i/e/a/a/g;->s:Le/a/b0/e/r/a;

    iput-object p6, p0, Le/a/i/e/a/a/g;->t:Lo3/a;

    iput-object p7, p0, Le/a/i/e/a/a/g;->u:Lo3/a;

    iput-object p8, p0, Le/a/i/e/a/a/g;->v:Lo3/a;

    iput-object p9, p0, Le/a/i/e/a/a/g;->w:Lo3/a;

    iput-object p10, p0, Le/a/i/e/a/a/g;->x:Lo3/a;

    .line 2
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    iput-object p1, p0, Le/a/i/e/a/a/g;->d:Le/m/e/k;

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/i/e/a/a/g;->g:Ljava/util/Map;

    .line 4
    new-instance p1, Ls1/b0/a;

    invoke-direct {p1}, Ls1/b0/a;-><init>()V

    .line 5
    iput-object p1, p0, Le/a/i/e/a/a/g;->j:Ls1/b0/c;

    .line 6
    new-instance p1, Le/a/i/e/a/a/g$a;

    invoke-direct {p1, p0}, Le/a/i/e/a/a/g$a;-><init>(Le/a/i/e/a/a/g;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/i/e/a/a/g;->k:Ls1/g;

    return-void
.end method

.method public static final Ij(Le/a/i/e/a/a/g;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/i/e/a/a/g;->l:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Le/a/i/e/a/a/g;->u:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 2
    :goto_0
    iget-object v2, p0, Le/a/i/e/a/a/g;->m:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p0, Le/a/i/e/a/a/g;->u:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/p5/c;

    invoke-interface {v3}, Le/a/p5/c;->c()J

    move-result-wide v3

    iget-object p0, p0, Le/a/i/e/a/a/g;->i:Ljava/lang/String;

    const-string v5, "renderId"

    if-eqz p0, :cond_1

    const-string v1, "$this$toConnectionMeasurementUrl"

    .line 3
    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const-string v5, "%%timestamp%%"

    invoke-static {v2, v5, v1, v3, v4}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%%requestId%%"

    .line 5
    invoke-static {v1, v2, p0, v3, v4}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%%time-diff%%"

    invoke-static {p0, v1, v0, v3, v4}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {}, Le/m/d/y/n;->K()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%%GAID%%"

    invoke-static {p0, v1, v0, v3, v4}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {v5}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    return-object v1
.end method


# virtual methods
.method public final Jj()Z
    .locals 3

    iget-object v0, p0, Le/a/i/e/a/a/g;->j:Ls1/b0/c;

    sget-object v1, Le/a/i/e/a/a/g;->y:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final Kj()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Le/a/i/e/a/a/g;->n:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Le/a/i/e/a/a/g;->m:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 2
    :cond_2
    iget-object v2, p0, Le/a/i/e/a/a/g;->p:Ls1/w/f;

    const/4 v3, 0x0

    new-instance v4, Le/a/i/e/a/a/g$b;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/i/e/a/a/g$b;-><init>(Le/a/i/e/a/a/g;Ls1/w/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_3
    :goto_2
    return-void
.end method

.method public final Lj(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/i/e/a/a/g$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/i/e/a/a/g$c;

    iget v1, v0, Le/a/i/e/a/a/g$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/i/e/a/a/g$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/i/e/a/a/g$c;

    invoke-direct {v0, p0, p2}, Le/a/i/e/a/a/g$c;-><init>(Le/a/i/e/a/a/g;Ls1/w/d;)V

    :goto_0
    move-object v6, v0

    iget-object p2, v6, Le/a/i/e/a/a/g$c;->d:Ljava/lang/Object;

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, v6, Le/a/i/e/a/a/g$c;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

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
    invoke-virtual {p0}, Le/a/i/e/a/a/g;->Jj()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Le/a/i/e/a/a/g;->u:Lo3/a;

    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/p5/c;

    invoke-interface {p2}, Le/a/p5/c;->a()J

    move-result-wide v3

    .line 5
    new-instance p2, Ljava/lang/Long;

    invoke-direct {p2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    .line 6
    iput-object p2, p0, Le/a/i/e/a/a/g;->l:Ljava/lang/Long;

    .line 7
    :cond_3
    iget-object p2, p0, Le/a/i/e/a/a/g;->e:Lcom/truecaller/ads/offline/dto/OfflineAdsDto;

    if-eqz p2, :cond_6

    .line 8
    invoke-virtual {p2}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->getPixels()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v2

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move-object p2, v3

    :goto_1
    if-eqz p2, :cond_6

    .line 11
    iget-object v1, p0, Le/a/i/e/a/a/g;->q:Le/a/i/e/k/e;

    invoke-virtual {p0}, Le/a/i/e/a/a/g;->Jj()Z

    move-result v4

    invoke-virtual {p2}, Lcom/truecaller/ads/offline/dto/OfflineAdsDto;->getPixels()Ljava/util/List;

    move-result-object p2

    iget-object v5, p0, Le/a/i/e/a/a/g;->i:Ljava/lang/String;

    if-eqz v5, :cond_5

    iput v2, v6, Le/a/i/e/a/a/g$c;->e:I

    move v2, v4

    move-object v3, p2

    move-object v4, p1

    invoke-interface/range {v1 .. v6}, Le/a/i/e/k/e;->c(ZLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_5
    const-string p1, "renderId"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 12
    :cond_6
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public S(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/i/e/a/a/g;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/i/e/a/a/k;

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2, p1}, Le/a/i/e/a/a/k;->Id(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public fw(Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent$OnClick;)V
    .locals 8

    const-string v0, "onClick"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent$OnClick;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x5a5ddf8

    if-eq v0, v1, :cond_a

    const v1, 0x2d18c984

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v0, "postForm"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 4
    iget-object p1, p0, Le/a/i/e/a/a/g;->f:Lcom/truecaller/ads/offline/dto/OfflineLeadGenViewDto;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_9

    .line 5
    iget-object p1, p1, Lcom/truecaller/ads/offline/dto/OfflineLeadGenViewDto;->a:Ljava/util/List;

    if-eqz p1, :cond_9

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/ads/offline/dto/UiComponent;

    .line 7
    instance-of v3, v2, Lcom/truecaller/ads/offline/dto/InputItemUiComponent;

    if-eqz v3, :cond_1

    .line 8
    iget-object v3, p0, Le/a/i/e/a/a/g;->g:Ljava/util/Map;

    check-cast v2, Lcom/truecaller/ads/offline/dto/InputItemUiComponent;

    invoke-virtual {v2}, Lcom/truecaller/ads/offline/dto/InputItemUiComponent;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v3, ""

    .line 9
    :goto_1
    invoke-virtual {v2}, Lcom/truecaller/ads/offline/dto/InputItemUiComponent;->c()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-static {v3}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 11
    instance-of v3, v2, Lcom/truecaller/ads/offline/dto/TextInputItemUiComponent;

    if-eqz v3, :cond_3

    goto :goto_2

    .line 12
    :cond_3
    instance-of v3, v2, Lcom/truecaller/ads/offline/dto/AutoCompleteTextInputItemUiComponent;

    if-eqz v3, :cond_4

    :goto_2
    sget-object v3, Lcom/truecaller/ads/offline/dto/OfflineLeadGenInputError;->ERR_FIELD_EMPTY:Lcom/truecaller/ads/offline/dto/OfflineLeadGenInputError;

    goto :goto_4

    .line 13
    :cond_4
    instance-of v3, v2, Lcom/truecaller/ads/offline/dto/SelectInputItemUiComponent;

    if-eqz v3, :cond_5

    goto :goto_3

    .line 14
    :cond_5
    instance-of v3, v2, Lcom/truecaller/ads/offline/dto/RadioInputItemUiComponent;

    if-eqz v3, :cond_7

    :goto_3
    sget-object v3, Lcom/truecaller/ads/offline/dto/OfflineLeadGenInputError;->ERR_FIELD_UNSELECTED:Lcom/truecaller/ads/offline/dto/OfflineLeadGenInputError;

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_7

    const-string v5, "$this$validate"

    .line 15
    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "pattern"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v5, Ls1/f0/h;

    invoke-direct {v5, v4}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ls1/f0/h;->d(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 17
    sget-object v3, Lcom/truecaller/ads/offline/dto/OfflineLeadGenInputError;->ERR_FIELD_INVALID_INPUT:Lcom/truecaller/ads/offline/dto/OfflineLeadGenInputError;

    goto :goto_4

    :cond_7
    move-object v3, v1

    :goto_4
    if-eqz v3, :cond_8

    const/4 v0, 0x0

    .line 18
    :cond_8
    iget-object v4, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v4, Le/a/i/e/a/a/k;

    if-eqz v4, :cond_1

    .line 19
    invoke-interface {v4, v2, v3}, Le/a/i/e/a/a/k;->lo(Lcom/truecaller/ads/offline/dto/InputItemUiComponent;Lcom/truecaller/ads/offline/dto/OfflineLeadGenInputError;)V

    goto :goto_0

    :cond_9
    if-eqz v0, :cond_c

    .line 20
    new-instance v5, Le/a/i/e/a/a/j;

    invoke-direct {v5, p0, v1}, Le/a/i/e/a/a/j;-><init>(Le/a/i/e/a/a/g;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_6

    :cond_a
    const-string v0, "close"

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 22
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/i/e/a/a/k;

    if-eqz p1, :cond_c

    .line 23
    invoke-interface {p1}, Le/a/i/e/a/a/k;->finish()V

    goto :goto_6

    .line 24
    :cond_b
    :goto_5
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/i/e/a/a/k;

    if-eqz p1, :cond_c

    .line 25
    invoke-interface {p1}, Le/a/i/e/a/a/k;->finish()V

    :cond_c
    :goto_6
    return-void
.end method
