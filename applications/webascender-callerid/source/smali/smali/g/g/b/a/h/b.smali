.class public final Lg/g/b/a/h/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/b/a/h/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/a/h/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final b(Lcom/hiya/client/callerid/prefs/e;Lcom/hiya/client/callerid/dao/c;Lg/g/b/a/i/d/b;Lg/g/b/a/i/d/a;Lh/a;Lh/a;Lg/g/b/a/i/a;Lh/a;Lh/a;Lh/a;Lh/a;Lh/a;Lh/a;)Lg/g/b/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/client/callerid/prefs/e;",
            "Lcom/hiya/client/callerid/dao/c;",
            "Lg/g/b/a/i/d/b;",
            "Lg/g/b/a/i/d/a;",
            "Lh/a<",
            "Lcom/hiya/client/callerid/dao/o;",
            ">;",
            "Lh/a<",
            "Lcom/hiya/client/callerid/dao/r;",
            ">;",
            "Lg/g/b/a/i/a;",
            "Lh/a<",
            "Lcom/hiya/client/callerid/dao/w;",
            ">;",
            "Lh/a<",
            "Lcom/hiya/client/callerid/prefs/Cache;",
            ">;",
            "Lh/a<",
            "Lg/g/b/a/j/c;",
            ">;",
            "Lh/a<",
            "Lg/g/b/a/j/n;",
            ">;",
            "Lh/a<",
            "Lg/g/b/a/j/j;",
            ">;",
            "Lh/a<",
            "Lg/g/b/a/j/g;",
            ">;)",
            "Lg/g/b/a/b;"
        }
    .end annotation

    const-string v0, "prefs"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdDao"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "profileCacheScheduler"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cleanCacheScheduler"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiyaAssetProviderDao"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localOverrideIdDao"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheManager"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportCategoriesDao"

    invoke-static {p8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cache"

    invoke-static {p9, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdManager"

    invoke-static {p10, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userReportManager"

    invoke-static {p11, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneEventManager"

    invoke-static {p12, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "denyListManager"

    invoke-static {p13, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg/g/b/a/b;

    invoke-direct {v0}, Lg/g/b/a/b;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lg/g/b/a/b;->D(Lcom/hiya/client/callerid/prefs/e;)V

    .line 3
    invoke-virtual {v0, p2}, Lg/g/b/a/b;->v(Lcom/hiya/client/callerid/dao/c;)V

    .line 4
    invoke-virtual {v0, p3}, Lg/g/b/a/b;->E(Lg/g/b/a/i/d/b;)V

    .line 5
    invoke-virtual {v0, p4}, Lg/g/b/a/b;->x(Lg/g/b/a/i/d/a;)V

    .line 6
    invoke-virtual {v0, p5}, Lg/g/b/a/b;->z(Lh/a;)V

    .line 7
    invoke-virtual {v0, p6}, Lg/g/b/a/b;->B(Lh/a;)V

    .line 8
    invoke-virtual {v0, p7}, Lg/g/b/a/b;->u(Lg/g/b/a/i/a;)V

    .line 9
    invoke-virtual {v0, p8}, Lg/g/b/a/b;->F(Lh/a;)V

    .line 10
    invoke-virtual {v0, p9}, Lg/g/b/a/b;->t(Lh/a;)V

    .line 11
    invoke-virtual {v0, p10}, Lg/g/b/a/b;->w(Lh/a;)V

    .line 12
    invoke-virtual {v0, p11}, Lg/g/b/a/b;->I(Lh/a;)V

    .line 13
    invoke-virtual {v0, p12}, Lg/g/b/a/b;->C(Lh/a;)V

    .line 14
    invoke-virtual {v0, p13}, Lg/g/b/a/b;->y(Lh/a;)V

    return-object v0
.end method
