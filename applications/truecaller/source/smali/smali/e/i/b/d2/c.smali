.class public Le/i/b/d2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/i/b/s2/n;

.field public final b:Landroid/content/SharedPreferences;

.field public final c:Le/i/b/d2/b;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;Le/i/b/d2/b;)V
    .locals 1

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "integrationDetector"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/i/b/d2/c;->b:Landroid/content/SharedPreferences;

    iput-object p2, p0, Le/i/b/d2/c;->c:Le/i/b/d2/b;

    .line 2
    new-instance p2, Le/i/b/s2/n;

    invoke-direct {p2, p1}, Le/i/b/s2/n;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p2, p0, Le/i/b/d2/c;->a:Le/i/b/s2/n;

    return-void
.end method


# virtual methods
.method public a(Le/i/b/d2/a;)V
    .locals 2

    const-string v0, "integration"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/i/b/d2/c;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "CriteoCachedIntegration"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public b()I
    .locals 6

    .line 1
    sget-object v0, Le/i/b/d2/a;->b:Le/i/b/d2/a;

    const-class v1, Le/i/b/d2/b;

    iget-object v2, p0, Le/i/b/d2/c;->c:Le/i/b/d2/b;

    .line 2
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "com.criteo.mediation.mopub.CriteoBannerAdapter"

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 4
    invoke-static {v2, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move v2, v4

    .line 5
    :goto_0
    iget-object v5, p0, Le/i/b/d2/c;->c:Le/i/b/d2/b;

    .line 6
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "com.criteo.mediation.google.CriteoAdapter"

    .line 7
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 8
    invoke-static {v5, v4, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move v3, v4

    :goto_1
    const/4 v1, 0x0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    move-object v2, v0

    goto :goto_2

    :cond_0
    if-eqz v2, :cond_1

    .line 9
    sget-object v2, Le/i/b/d2/a;->e:Le/i/b/d2/a;

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_2

    .line 10
    sget-object v2, Le/i/b/d2/a;->f:Le/i/b/d2/a;

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_3

    goto :goto_4

    .line 11
    :cond_3
    iget-object v2, p0, Le/i/b/d2/c;->a:Le/i/b/s2/n;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CriteoCachedIntegration"

    .line 13
    invoke-virtual {v2, v4, v3}, Le/i/b/s2/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v1, "safeSharedPreferences.ge\u2026ion.FALLBACK.name\n    )!!"

    invoke-static {v2, v1}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    :try_start_2
    invoke-static {v2}, Le/i/b/d2/a;->valueOf(Ljava/lang/String;)Le/i/b/d2/a;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 15
    invoke-static {v1}, Le/i/b/s2/l;->a(Ljava/lang/Throwable;)V

    :goto_3
    move-object v2, v0

    .line 16
    :goto_4
    iget v0, v2, Le/i/b/d2/a;->a:I

    return v0

    .line 17
    :cond_4
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v1
.end method
