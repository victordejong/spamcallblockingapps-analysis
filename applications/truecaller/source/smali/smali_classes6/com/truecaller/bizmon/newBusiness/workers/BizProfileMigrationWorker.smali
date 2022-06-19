.class public final Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;
.super Lcom/truecaller/background_work/TrackedWorker;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010<\u001a\u00020;\u0012\u0006\u0010>\u001a\u00020=\u00a2\u0006\u0004\u0008?\u0010@J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R(\u0010\u0011\u001a\u00020\u00088\u0016@\u0016X\u0097.\u00a2\u0006\u0018\n\u0004\u0008\t\u0010\n\u0012\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR(\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00128\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\"\u0010\"\u001a\u00020\u001b8\u0016@\u0016X\u0097.\u00a2\u0006\u0012\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\"\u0010*\u001a\u00020#8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008$\u0010%\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R\"\u00102\u001a\u00020+8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/\"\u0004\u00080\u00101R\"\u0010:\u001a\u0002038\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00084\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109\u00a8\u0006A"
    }
    d2 = {
        "Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;",
        "Lcom/truecaller/background_work/TrackedWorker;",
        "",
        "q",
        "()Z",
        "Landroidx/work/ListenableWorker$a;",
        "r",
        "()Landroidx/work/ListenableWorker$a;",
        "Le/a/u3/g;",
        "b",
        "Le/a/u3/g;",
        "o",
        "()Le/a/u3/g;",
        "setFeaturesRegistry",
        "(Le/a/u3/g;)V",
        "getFeaturesRegistry$annotations",
        "()V",
        "featuresRegistry",
        "Le/a/r2/f;",
        "Le/a/q2/a0;",
        "c",
        "Le/a/r2/f;",
        "getEventsTracker",
        "()Le/a/r2/f;",
        "setEventsTracker",
        "(Le/a/r2/f;)V",
        "eventsTracker",
        "Le/a/q2/a;",
        "a",
        "Le/a/q2/a;",
        "n",
        "()Le/a/q2/a;",
        "setAnalytics",
        "(Le/a/q2/a;)V",
        "analytics",
        "Le/a/b0/e/l;",
        "e",
        "Le/a/b0/e/l;",
        "getAccountManager",
        "()Le/a/b0/e/l;",
        "setAccountManager",
        "(Le/a/b0/e/l;)V",
        "accountManager",
        "Le/a/b0/n/g;",
        "f",
        "Le/a/b0/n/g;",
        "getProfileRepository",
        "()Le/a/b0/n/g;",
        "setProfileRepository",
        "(Le/a/b0/n/g;)V",
        "profileRepository",
        "Le/a/b0/o/a;",
        "d",
        "Le/a/b0/o/a;",
        "getCoreSettings",
        "()Le/a/b0/o/a;",
        "setCoreSettings",
        "(Le/a/b0/o/a;)V",
        "coreSettings",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/q2/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/u3/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Le/a/b0/o/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/b0/e/l;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/b0/n/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/background_work/TrackedWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    invoke-static {p1}, Le/a/n/g0;->l(Landroid/content/Context;)Le/a/b/a/g/b;

    move-result-object p1

    check-cast p1, Le/a/b/a/g/e;

    .line 3
    iget-object p2, p1, Le/a/b/a/g/e;->h:Le/a/q2/e;

    invoke-interface {p2}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object p2

    const-string v0, "Cannot return null from a non-@Nullable component method"

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p2, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;->a:Le/a/q2/a;

    .line 6
    iget-object p2, p1, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {p2}, Le/a/b0/c;->i5()Le/a/u3/g;

    move-result-object p2

    .line 7
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    iput-object p2, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;->b:Le/a/u3/g;

    .line 9
    iget-object p2, p1, Le/a/b/a/g/e;->h:Le/a/q2/e;

    invoke-interface {p2}, Le/a/q2/e;->s()Le/a/r2/f;

    move-result-object p2

    .line 10
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    iput-object p2, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;->c:Le/a/r2/f;

    .line 12
    iget-object p2, p1, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {p2}, Le/a/b0/c;->d()Le/a/b0/o/a;

    move-result-object p2

    .line 13
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    iput-object p2, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;->d:Le/a/b0/o/a;

    .line 15
    iget-object p2, p1, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {p2}, Le/a/b0/c;->L()Le/a/b0/e/l;

    move-result-object p2

    .line 16
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    iput-object p2, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;->e:Le/a/b0/e/l;

    .line 18
    iget-object p1, p1, Le/a/b/a/g/e;->e:Le/a/m4/b;

    invoke-interface {p1}, Le/a/m4/b;->C()Le/a/b0/n/g;

    move-result-object p1

    .line 19
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;->f:Le/a/b0/n/g;

    return-void
.end method


# virtual methods
.method public n()Le/a/q2/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;->a:Le/a/q2/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "analytics"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public o()Le/a/u3/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;->b:Le/a/u3/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "featuresRegistry"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public q()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;->d:Le/a/b0/o/a;

    const-string v1, "coreSettings"

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    const-string v3, "profileBusiness"

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2
    iget-object v3, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;->d:Le/a/b0/o/a;

    if-eqz v3, :cond_4

    const-string v5, "bizV2GetProfileSuccess"

    invoke-interface {v3, v5, v4}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;->o()Le/a/u3/g;

    move-result-object v5

    sget-object v6, Lcom/truecaller/featuretoggles/FeatureKey;->BUSINESS_PROFILES_V2:Lcom/truecaller/featuretoggles/FeatureKey;

    invoke-virtual {v5, v6}, Le/a/u3/g;->d(Lcom/truecaller/featuretoggles/FeatureKey;)Le/a/u3/b;

    move-result-object v5

    invoke-interface {v5}, Le/a/u3/b;->isEnabled()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;->o()Le/a/u3/g;

    move-result-object v5

    sget-object v7, Lcom/truecaller/featuretoggles/FeatureKey;->EDIT_BUSINESS_PROFILES_V2:Lcom/truecaller/featuretoggles/FeatureKey;

    invoke-virtual {v5, v7}, Le/a/u3/g;->d(Lcom/truecaller/featuretoggles/FeatureKey;)Le/a/u3/b;

    move-result-object v5

    invoke-interface {v5}, Le/a/u3/b;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v4

    .line 5
    :goto_0
    iget-object v7, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;->d:Le/a/b0/o/a;

    if-eqz v7, :cond_3

    const-string v1, "bizV2MigrationSuccessful"

    invoke-interface {v7, v1, v4}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    if-eqz v5, :cond_2

    if-nez v1, :cond_2

    .line 6
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;->e:Le/a/b0/e/l;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    move v4, v6

    goto :goto_1

    :cond_1
    const-string v0, "accountManager"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_1
    return v4

    .line 7
    :cond_3
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_4
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_5
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method

.method public r()Landroidx/work/ListenableWorker$a;
    .locals 6

    .line 1
    new-instance v0, Ls1/z/c/c0;

    invoke-direct {v0}, Ls1/z/c/c0;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    const-string v2, "email"

    const-string v3, ""

    .line 2
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    const-string v2, "twitter_id"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    const-string v2, "facebook_id"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    const-string v2, "url"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    const-string v2, "google_id_token"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    const-string v2, "w_company"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    const-string v2, "w_title"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    const-string v2, "street"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    const-string v2, "city"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    const-string v2, "zipcode"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    const-string v2, "status_message"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v1, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker$a;-><init>(Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;Ls1/z/c/c0;Ls1/w/d;)V

    const/4 v0, 0x1

    invoke-static {v2, v1, v0, v2}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/b0/n/h;

    .line 14
    sget-object v3, Le/a/b0/n/h$e;->c:Le/a/b0/n/h$e;

    invoke-static {v1, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 15
    iget-object v1, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;->d:Le/a/b0/o/a;

    if-eqz v1, :cond_0

    const-string v3, "bizV2MigrationSuccessful"

    invoke-interface {v1, v3, v0}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 16
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    goto :goto_0

    :cond_0
    const-string v0, "coreSettings"

    .line 17
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 18
    :cond_1
    sget-object v0, Le/a/b0/n/h$b;->c:Le/a/b0/n/h$b;

    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 19
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    goto :goto_0

    .line 20
    :cond_2
    sget-object v0, Le/a/b0/n/h$a;->c:Le/a/b0/n/h$a;

    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    goto :goto_0

    .line 22
    :cond_3
    sget-object v0, Le/a/b0/n/h$c;->c:Le/a/b0/n/h$c;

    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    goto :goto_0

    .line 23
    :cond_4
    sget-object v0, Le/a/b0/n/h$d;->c:Le/a/b0/n/h$d;

    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    goto :goto_0

    .line 24
    :cond_5
    instance-of v0, v1, Le/a/b0/n/h$f;

    if-eqz v0, :cond_6

    new-instance v0, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    goto :goto_0

    .line 25
    :cond_6
    instance-of v0, v1, Le/a/b0/n/h$g;

    if-eqz v0, :cond_9

    .line 26
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    :goto_0
    const-string v1, "when (saveProfileResult)\u2026esult.failure()\n        }"

    .line 27
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v1

    const-string v3, "BizProfileMigrationWorker"

    .line 29
    invoke-virtual {v1, v3}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    .line 30
    new-instance v3, Ls1/k;

    instance-of v4, v0, Landroidx/work/ListenableWorker$a$c;

    if-eqz v4, :cond_7

    const-string v4, "success"

    goto :goto_1

    :cond_7
    const-string v4, "failure"

    :goto_1
    const-string v5, "status"

    invoke-direct {v3, v5, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 31
    iget-object v3, p0, Lcom/truecaller/bizmon/newBusiness/workers/BizProfileMigrationWorker;->c:Le/a/r2/f;

    if-eqz v3, :cond_8

    invoke-interface {v3}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/q2/a0;

    invoke-virtual {v1}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object v1

    invoke-interface {v2, v1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-object v0

    :cond_8
    const-string v0, "eventsTracker"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 32
    :cond_9
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method
