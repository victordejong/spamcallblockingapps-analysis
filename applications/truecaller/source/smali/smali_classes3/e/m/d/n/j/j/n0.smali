.class public Le/m/d/n/j/j/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/n/j/j/o0;


# static fields
.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/lang/String;


# instance fields
.field public final a:Le/m/d/n/j/j/p0;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Le/m/d/w/i;

.field public final e:Le/m/d/n/j/j/j0;

.field public f:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "[^\\p{Alnum}]"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/j/n0;->g:Ljava/util/regex/Pattern;

    const-string v0, "/"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Le/m/d/n/j/j/n0;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Le/m/d/w/i;Le/m/d/n/j/j/j0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    iput-object p1, p0, Le/m/d/n/j/j/n0;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/m/d/n/j/j/n0;->c:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Le/m/d/n/j/j/n0;->d:Le/m/d/w/i;

    .line 5
    iput-object p4, p0, Le/m/d/n/j/j/n0;->e:Le/m/d/n/j/j/j0;

    .line 6
    new-instance p1, Le/m/d/n/j/j/p0;

    invoke-direct {p1}, Le/m/d/n/j/j/p0;-><init>()V

    iput-object p1, p0, Le/m/d/n/j/j/n0;->a:Le/m/d/n/j/j/p0;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "appIdentifier must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    const-string v0, "SYN_"

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v1, Le/m/d/n/j/j/n0;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 3
    :goto_0
    sget-object v1, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    const/4 v2, 0x2

    .line 4
    invoke-virtual {v1, v2}, Le/m/d/n/j/f;->a(I)Z

    .line 5
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "crashlytics.installation.id"

    .line 6
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "firebase.installation.id"

    .line 7
    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c()Ljava/lang/String;
    .locals 7

    sget-object v0, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v1, p0, Le/m/d/n/j/j/n0;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2
    monitor-exit p0

    return-object v1

    :cond_0
    const/4 v1, 0x2

    .line 3
    :try_start_1
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    .line 4
    iget-object v2, p0, Le/m/d/n/j/j/n0;->b:Landroid/content/Context;

    invoke-static {v2}, Le/m/d/n/j/j/l;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "firebase.installation.id"

    const/4 v4, 0x0

    .line 5
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    .line 7
    iget-object v5, p0, Le/m/d/n/j/j/n0;->e:Le/m/d/n/j/j/j0;

    invoke-virtual {v5}, Le/m/d/n/j/j/j0;->a()Z

    move-result v5

    const/4 v6, 0x5

    if-eqz v5, :cond_4

    .line 8
    iget-object v5, p0, Le/m/d/n/j/j/n0;->d:Le/m/d/w/i;

    invoke-interface {v5}, Le/m/d/w/i;->getId()Lcom/google/android/gms/tasks/Task;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    :try_start_2
    invoke-static {v5}, Le/m/d/n/j/j/t0;->a(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 10
    :catch_0
    :try_start_3
    invoke-virtual {v0, v6}, Le/m/d/n/j/f;->a(I)Z

    move-object v5, v4

    .line 11
    :goto_0
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    if-nez v5, :cond_2

    if-nez v3, :cond_1

    .line 12
    invoke-static {}, Le/m/d/n/j/j/n0;->b()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v3

    .line 13
    :cond_2
    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "crashlytics.installation.id"

    .line 14
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15
    iput-object v3, p0, Le/m/d/n/j/j/n0;->f:Ljava/lang/String;

    goto :goto_3

    .line 16
    :cond_3
    invoke-virtual {p0, v5, v2}, Le/m/d/n/j/j/n0;->a(Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Le/m/d/n/j/j/n0;->f:Ljava/lang/String;

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    const-string v5, "SYN_"

    .line 17
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    const-string v3, "crashlytics.installation.id"

    .line 18
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19
    iput-object v3, p0, Le/m/d/n/j/j/n0;->f:Ljava/lang/String;

    goto :goto_3

    .line 20
    :cond_6
    invoke-static {}, Le/m/d/n/j/j/n0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Le/m/d/n/j/j/n0;->a(Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Le/m/d/n/j/j/n0;->f:Ljava/lang/String;

    .line 21
    :goto_3
    iget-object v3, p0, Le/m/d/n/j/j/n0;->f:Ljava/lang/String;

    if-nez v3, :cond_7

    .line 22
    invoke-virtual {v0, v6}, Le/m/d/n/j/f;->a(I)Z

    .line 23
    invoke-static {}, Le/m/d/n/j/j/n0;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Le/m/d/n/j/j/n0;->a(Ljava/lang/String;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Le/m/d/n/j/j/n0;->f:Ljava/lang/String;

    .line 24
    :cond_7
    invoke-virtual {v0, v1}, Le/m/d/n/j/f;->a(I)Z

    .line 25
    iget-object v0, p0, Le/m/d/n/j/j/n0;->f:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/m/d/n/j/j/n0;->a:Le/m/d/n/j/j/p0;

    iget-object v1, p0, Le/m/d/n/j/j/n0;->b:Landroid/content/Context;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, v0, Le/m/d/n/j/j/p0;->a:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    .line 7
    :cond_0
    iput-object v1, v0, Le/m/d/n/j/j/p0;->a:Ljava/lang/String;

    :cond_1
    const-string v1, ""

    .line 8
    iget-object v2, v0, Le/m/d/n/j/j/p0;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, v0, Le/m/d/n/j/j/p0;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Le/m/d/n/j/j/n0;->h:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
