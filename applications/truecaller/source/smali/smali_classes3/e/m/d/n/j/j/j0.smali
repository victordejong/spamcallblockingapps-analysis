.class public Le/m/d/n/j/j/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:Le/m/d/g;

.field public final c:Ljava/lang/Object;

.field public d:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Ljava/lang/Boolean;

.field public final g:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/d/g;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/m/d/n/j/j/j0;->c:Ljava/lang/Object;

    .line 3
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Le/m/d/n/j/j/j0;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Le/m/d/n/j/j/j0;->e:Z

    .line 5
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v1, p0, Le/m/d/n/j/j/j0;->g:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 6
    invoke-virtual {p1}, Le/m/d/g;->a()V

    .line 7
    iget-object v1, p1, Le/m/d/g;->a:Landroid/content/Context;

    .line 8
    iput-object p1, p0, Le/m/d/n/j/j/j0;->b:Le/m/d/g;

    .line 9
    invoke-static {v1}, Le/m/d/n/j/j/l;->g(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Le/m/d/n/j/j/j0;->a:Landroid/content/SharedPreferences;

    const-string v2, "firebase_crashlytics_collection_enabled"

    .line 10
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 11
    iput-boolean v0, p0, Le/m/d/n/j/j/j0;->e:Z

    .line 12
    invoke-interface {p1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v5

    :goto_0
    if-nez p1, :cond_3

    const-string p1, "firebase_crashlytics_collection_enabled"

    .line 13
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    .line 15
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 16
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 18
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 19
    :catch_0
    sget-object p1, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    const/4 v1, 0x6

    .line 20
    invoke-virtual {p1, v1}, Le/m/d/n/j/f;->a(I)Z

    :cond_1
    move-object p1, v5

    :goto_1
    if-nez p1, :cond_2

    .line 21
    iput-boolean v0, p0, Le/m/d/n/j/j/j0;->e:Z

    move-object p1, v5

    goto :goto_2

    .line 22
    :cond_2
    iput-boolean v4, p0, Le/m/d/n/j/j/j0;->e:Z

    .line 23
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 24
    :cond_3
    :goto_2
    iput-object p1, p0, Le/m/d/n/j/j/j0;->f:Ljava/lang/Boolean;

    .line 25
    iget-object p1, p0, Le/m/d/n/j/j/j0;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 26
    :try_start_1
    invoke-virtual {p0}, Le/m/d/n/j/j/j0;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    iget-object v0, p0, Le/m/d/n/j/j/j0;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v5}, Lcom/google/android/gms/tasks/TaskCompletionSource;->b(Ljava/lang/Object;)Z

    .line 28
    :cond_4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Z
    .locals 6

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/m/d/n/j/j/j0;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/m/d/n/j/j/j0;->b:Le/m/d/g;

    invoke-virtual {v0}, Le/m/d/g;->g()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "ENABLED"

    goto :goto_1

    :cond_1
    const-string v1, "DISABLED"

    .line 4
    :goto_1
    iget-object v2, p0, Le/m/d/n/j/j/j0;->f:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    const-string v2, "global Firebase setting"

    goto :goto_2

    .line 5
    :cond_2
    iget-boolean v2, p0, Le/m/d/n/j/j/j0;->e:Z

    if-eqz v2, :cond_3

    const-string v2, "firebase_crashlytics_collection_enabled manifest flag"

    goto :goto_2

    :cond_3
    const-string v2, "API"

    .line 6
    :goto_2
    sget-object v3, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v2, v4, v1

    const-string v1, "Crashlytics automatic data collection %s by %s."

    .line 7
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 v1, 0x3

    .line 8
    invoke-virtual {v3, v1}, Le/m/d/n/j/f;->a(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
