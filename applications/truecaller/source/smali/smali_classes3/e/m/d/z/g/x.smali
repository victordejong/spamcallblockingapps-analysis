.class public Le/m/d/z/g/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Le/m/d/z/i/a;

.field public static d:Le/m/d/z/g/x;


# instance fields
.field public volatile a:Landroid/content/SharedPreferences;

.field public final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Le/m/d/z/i/a;->b()Le/m/d/z/i/a;

    move-result-object v0

    sput-object v0, Le/m/d/z/g/x;->c:Le/m/d/z/i/a;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/d/z/g/x;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Le/m/d/g;->b()Le/m/d/g;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-static {}, Le/m/d/g;->b()Le/m/d/g;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Le/m/d/g;->a()V

    .line 4
    iget-object v0, v0, Le/m/d/g;->a:Landroid/content/Context;

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized b(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/m/d/z/g/x;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Le/m/d/z/g/a;

    invoke-direct {v1, p0, p1}, Le/m/d/z/g/a;-><init>(Le/m/d/z/g/x;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c(Ljava/lang/String;F)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/m/d/z/g/x;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/m/d/z/g/x;->b(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x1

    return p1
.end method

.method public d(Ljava/lang/String;J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/m/d/z/g/x;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/m/d/z/g/x;->b(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2, p3}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    const/4 p1, 0x1

    return p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/m/d/z/g/x;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Le/m/d/z/g/x;->b(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 4
    iget-object p2, p0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return v0

    .line 5
    :cond_1
    iget-object v1, p0, Le/m/d/z/g/x;->a:Landroid/content/SharedPreferences;

    invoke-static {v1, p1, p2}, Le/d/c/a/a;->p0(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method
