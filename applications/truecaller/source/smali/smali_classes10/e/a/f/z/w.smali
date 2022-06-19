.class public final Le/a/f/z/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f/z/v;


# instance fields
.field public final a:Le/a/u3/g;

.field public final b:Le/a/f/m;

.field public final c:Le/a/f/z/y;

.field public final d:Le/a/p5/c;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/f/m;Le/a/f/z/y;Le/a/p5/c;)V
    .locals 1
    .param p1    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inCallUIConfig"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inCallUISettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/z/w;->a:Le/a/u3/g;

    iput-object p2, p0, Le/a/f/z/w;->b:Le/a/f/m;

    iput-object p3, p0, Le/a/f/z/w;->c:Le/a/f/z/y;

    iput-object p4, p0, Le/a/f/z/w;->d:Le/a/p5/c;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/f/z/w;->b:Le/a/f/m;

    invoke-interface {v0}, Le/a/f/m;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/a/f/z/w;->b:Le/a/f/m;

    invoke-interface {v0}, Le/a/f/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/f/z/w;->a:Le/a/u3/g;

    .line 3
    iget-object v2, v0, Le/a/u3/g;->r1:Le/a/u3/g$a;

    sget-object v3, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v4, 0x79

    aget-object v3, v3, v4

    invoke-virtual {v2, v0, v3}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    const-wide/16 v2, 0x0

    .line 4
    invoke-interface {v0, v2, v3}, Le/a/u3/i;->d(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long v4, v4, v2

    const/4 v5, 0x1

    if-lez v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    .line 7
    iget-object v0, p0, Le/a/f/z/w;->c:Le/a/f/z/y;

    const-string v4, "homeBannerShownTimestamp"

    invoke-interface {v0, v4, v2, v3}, Le/a/f/z/y;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v0, v8, v2

    if-nez v0, :cond_3

    return v5

    .line 8
    :cond_3
    iget-object v0, p0, Le/a/f/z/w;->d:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->c()J

    move-result-wide v2

    sub-long/2addr v2, v8

    cmp-long v0, v2, v6

    if-ltz v0, :cond_4

    return v5

    :cond_4
    :goto_2
    return v1
.end method

.method public b()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/f/z/w;->c:Le/a/f/z/y;

    iget-object v1, p0, Le/a/f/z/w;->d:Le/a/p5/c;

    invoke-interface {v1}, Le/a/p5/c;->c()J

    move-result-wide v1

    const-string v3, "homeBannerShownTimestamp"

    invoke-interface {v0, v3, v1, v2}, Le/a/f/z/y;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/f/z/w;->c:Le/a/f/z/y;

    const-string v1, "infoShown"

    invoke-interface {v0, v1}, Le/a/f/z/y;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/f/z/w;->c:Le/a/f/z/y;

    const-string v1, "incalluiEnabled"

    invoke-interface {v0, v1}, Le/a/f/z/y;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/f/z/w;->b:Le/a/f/m;

    invoke-interface {v0}, Le/a/f/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
