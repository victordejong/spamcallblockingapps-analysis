.class public final Le/a/s3/b/d;
.super Le/a/c4/c;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;

.field public final b:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/s3/b/b;",
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
            "Le/a/s4/a;",
            ">;",
            "Lo3/a<",
            "Le/a/s3/b/b;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "remoteConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "debugIdRuleChecker"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/c4/c;-><init>()V

    iput-object p2, p0, Le/a/s3/b/d;->b:Lo3/a;

    .line 2
    new-instance p2, Le/a/s3/b/d$a;

    invoke-direct {p2, p1}, Le/a/s3/b/d$a;-><init>(Lo3/a;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/s3/b/d;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public e(Ljava/lang/Throwable;)Z
    .locals 3

    const-string v0, "e"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/a/s3/b/d;->a:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2
    instance-of v2, v1, Ljava/util/Collection;

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/exception/filters/RemoteFilterConfig;

    .line 4
    invoke-virtual {p0, v2, p1}, Le/a/s3/b/d;->f(Lcom/truecaller/exception/filters/RemoteFilterConfig;Ljava/lang/Throwable;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_2
    :goto_0
    return v0
.end method

.method public final f(Lcom/truecaller/exception/filters/RemoteFilterConfig;Ljava/lang/Throwable;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/exception/filters/RemoteFilterConfig;->getRules()[Lcom/truecaller/exception/filters/RemoteFilterRule;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 2
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_7

    aget-object v3, p1, v2

    .line 3
    invoke-virtual {v3}, Lcom/truecaller/exception/filters/RemoteFilterRule;->getType()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "Locale.US"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    move-object v4, v5

    :goto_1
    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x21d289e1

    if-eq v6, v7, :cond_3

    const v7, 0x5be45aae

    if-eq v6, v7, :cond_2

    goto :goto_2

    :cond_2
    const-string v6, "debugid"

    .line 4
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Le/a/s3/b/d;->b:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Le/a/s3/b/e;

    goto :goto_2

    :cond_3
    const-string v6, "contains"

    .line 5
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v5, Le/a/s3/b/a;->a:Le/a/s3/b/a;

    :cond_4
    :goto_2
    if-eqz v5, :cond_5

    .line 6
    invoke-virtual {v5, v3, p2}, Le/a/s3/b/e;->a(Lcom/truecaller/exception/filters/RemoteFilterRule;Ljava/lang/Throwable;)Z

    move-result v3

    goto :goto_3

    :cond_5
    move v3, v0

    :goto_3
    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    :cond_8
    :goto_4
    return v0
.end method
