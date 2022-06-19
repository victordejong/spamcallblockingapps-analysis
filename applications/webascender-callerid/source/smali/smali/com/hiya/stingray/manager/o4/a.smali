.class public Lcom/hiya/stingray/manager/o4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/q/a/s/a;

.field private final c:Lcom/hiya/stingray/t/i1/s;

.field private final d:Lcom/hiya/stingray/t/i1/z0;

.field private final e:Lcom/hiya/stingray/t/i1/q;

.field private final f:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/q/a/s/a;Lcom/hiya/stingray/t/i1/s;Lcom/hiya/stingray/t/i1/z0;Lcom/hiya/stingray/t/i1/q;Lh/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/hiya/stingray/q/a/s/a;",
            "Lcom/hiya/stingray/t/i1/s;",
            "Lcom/hiya/stingray/t/i1/z0;",
            "Lcom/hiya/stingray/t/i1/q;",
            "Lh/a<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localDao"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directoryMapper"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "themeDTOMapper"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directoryDetailMapper"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languageTag"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/o4/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/o4/a;->b:Lcom/hiya/stingray/q/a/s/a;

    iput-object p3, p0, Lcom/hiya/stingray/manager/o4/a;->c:Lcom/hiya/stingray/t/i1/s;

    iput-object p4, p0, Lcom/hiya/stingray/manager/o4/a;->d:Lcom/hiya/stingray/t/i1/z0;

    iput-object p5, p0, Lcom/hiya/stingray/manager/o4/a;->e:Lcom/hiya/stingray/t/i1/q;

    iput-object p6, p0, Lcom/hiya/stingray/manager/o4/a;->f:Lh/a;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/manager/o4/a;Ljava/lang/String;)Lcom/hiya/stingray/t/i0;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/o4/a;->e(Ljava/lang/String;)Lcom/hiya/stingray/t/i0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/stingray/manager/o4/a;)Lcom/hiya/stingray/t/i1/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/o4/a;->e:Lcom/hiya/stingray/t/i1/q;

    return-object p0
.end method

.method public static final synthetic c(Lcom/hiya/stingray/manager/o4/a;)Lcom/hiya/stingray/t/i1/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/o4/a;->c:Lcom/hiya/stingray/t/i1/s;

    return-object p0
.end method

.method public static final synthetic d(Lcom/hiya/stingray/manager/o4/a;)Lcom/hiya/stingray/t/i1/z0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/o4/a;->d:Lcom/hiya/stingray/t/i1/z0;

    return-object p0
.end method

.method private final e(Ljava/lang/String;)Lcom/hiya/stingray/t/i0;
    .locals 6

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/i0;

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/manager/o4/a;->a:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lc_cat_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 5
    iget-object v4, p0, Lcom/hiya/stingray/manager/o4/a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "string"

    .line 6
    invoke-virtual {v2, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(\n     \u2026e\n            )\n        )"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v2, p0, Lcom/hiya/stingray/manager/o4/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cat_tile_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/hiya/stingray/manager/o4/a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "drawable"

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const-string v3, "all"

    .line 9
    invoke-static {p1, v3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    .line 10
    invoke-direct {v0, p1, v1, v2, v3}, Lcom/hiya/stingray/t/i0;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-object v0
.end method


# virtual methods
.method public final f()Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/i0;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    .line 1
    iget-object v1, p0, Lcom/hiya/stingray/manager/o4/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f030000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Li/c/b0/b/v;->sorted()Li/c/b0/b/v;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/hiya/stingray/manager/o4/a$a;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/o4/a$a;-><init>(Lcom/hiya/stingray/manager/o4/a;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "Observable\n            .\u2026egoryItemFromKey(key) } }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public g(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/d;",
            ">;>;"
        }
    .end annotation

    const-string v0, "categoryId"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/hiya/stingray/manager/o4/a;->b:Lcom/hiya/stingray/q/a/s/a;

    const-wide v3, 0x4047cdf034b0e1b5L    # 47.608893

    const-wide v5, -0x3fa1643ade225fa6L    # -122.433907

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/hiya/stingray/q/a/s/a;->c(Ljava/lang/String;DD)Li/c/b0/b/v;

    move-result-object p1

    .line 2
    new-instance v0, Lcom/hiya/stingray/manager/o4/a$b;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/o4/a$b;-><init>(Lcom/hiya/stingray/manager/o4/a;)V

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    const-string v0, "localDao.getDirectories(\u2026ssType.AD }\n            }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final h(Ljava/lang/String;DD)Li/c/b0/b/e0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Li/c/b0/b/e0<",
            "Lcom/hiya/stingray/t/h1/c;",
            ">;"
        }
    .end annotation

    const-string p2, "directoryId"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o4/a;->b:Lcom/hiya/stingray/q/a/s/a;

    .line 2
    iget-object p2, p0, Lcom/hiya/stingray/manager/o4/a;->f:Lh/a;

    invoke-interface {p2}, Lh/a;->get()Ljava/lang/Object;

    move-result-object p2

    const-string p3, "languageTag.get()"

    invoke-static {p2, p3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v6, p2

    check-cast v6, Ljava/lang/String;

    const-wide v2, 0x4047cdf034b0e1b5L    # 47.608893

    const-wide v4, -0x3fa1643ade225fa6L    # -122.433907

    move-object v1, p1

    .line 3
    invoke-interface/range {v0 .. v6}, Lg/g/a/a/g/i/b;->b(Ljava/lang/String;DDLjava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Li/c/b0/b/v;->singleOrError()Li/c/b0/b/e0;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/hiya/stingray/manager/o4/a$c;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/manager/o4/a$c;-><init>(Lcom/hiya/stingray/manager/o4/a;)V

    invoke-virtual {p1, p2}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    const-string p2, "localDao.getDirectoryDet\u2026          )\n            }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public i()Li/c/b0/b/v;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/d;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o4/a;->b:Lcom/hiya/stingray/q/a/s/a;

    const-wide v1, 0x4047cdf034b0e1b5L    # 47.608893

    const-wide v3, -0x3fa1643ade225fa6L    # -122.433907

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/hiya/stingray/q/a/s/a;->a(DD)Li/c/b0/b/v;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/manager/o4/a$d;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/o4/a$d;-><init>(Lcom/hiya/stingray/manager/o4/a;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "localDao.getRecommendedD\u2026ssType.AD }\n            }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public j(Ljava/lang/String;DD)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/d;",
            ">;>;"
        }
    .end annotation

    const-string v0, "searchString"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Lcom/hiya/stingray/manager/o4/a;->b:Lcom/hiya/stingray/q/a/s/a;

    const-string v3, "places"

    move-object v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/hiya/stingray/q/a/s/a;->f(Ljava/lang/String;Ljava/lang/String;DD)Li/c/b0/b/v;

    move-result-object p1

    .line 2
    new-instance p2, Lcom/hiya/stingray/manager/o4/a$e;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/manager/o4/a$e;-><init>(Lcom/hiya/stingray/manager/o4/a;)V

    invoke-virtual {p1, p2}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    const-string p2, "localDao.getSearchedDire\u2026pe.AD }\n                }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final k(DD)Li/c/b0/b/e0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)",
            "Li/c/b0/b/e0<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/k;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/o4/a;->b:Lcom/hiya/stingray/q/a/s/a;

    iget-object v1, p0, Lcom/hiya/stingray/manager/o4/a;->f:Lh/a;

    invoke-interface {v1}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "languageTag.get()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    move-wide v1, p1

    move-wide v3, p3

    invoke-interface/range {v0 .. v5}, Lg/g/a/a/g/i/b;->e(DDLjava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    .line 2
    sget-object p2, Lcom/hiya/stingray/manager/o4/a$f;->f:Lcom/hiya/stingray/manager/o4/a$f;

    invoke-virtual {p1, p2}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    .line 3
    new-instance p2, Lcom/hiya/stingray/manager/o4/a$g;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/manager/o4/a$g;-><init>(Lcom/hiya/stingray/manager/o4/a;)V

    invoke-virtual {p1, p2}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Li/c/b0/b/v;->toList()Li/c/b0/b/e0;

    move-result-object p1

    const-string p2, "localDao.getThemes(latit\u2026) }\n            .toList()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final l()Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/i0;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    .line 1
    iget-object v1, p0, Lcom/hiya/stingray/manager/o4/a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Li/c/b0/b/v;->fromArray([Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/manager/o4/a$h;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/o4/a$h;-><init>(Lcom/hiya/stingray/manager/o4/a;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    const-string v1, "Observable\n            .\u2026egoryItemFromKey(key) } }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
