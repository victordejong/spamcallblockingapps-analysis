.class public final Ldagger/hilt/android/internal/managers/ViewComponentManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo3/b/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;,
        Ldagger/hilt/android/internal/managers/ViewComponentManager$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo3/b/b/b<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public volatile a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->b:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public Yt()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Ldagger/hilt/android/internal/managers/ViewComponentManager;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->a:Ljava/lang/Object;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final a()Ljava/lang/Object;
    .locals 9

    .line 1
    const-class v0, Lo3/b/b/b;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ldagger/hilt/android/internal/managers/ViewComponentManager;->b(Ljava/lang/Class;Z)Landroid/content/Context;

    move-result-object v0

    .line 2
    instance-of v2, v0, Lo3/b/b/b;

    if-eqz v2, :cond_0

    .line 3
    check-cast v0, Lo3/b/b/b;

    .line 4
    const-class v1, Ldagger/hilt/android/internal/managers/ViewComponentManager$a;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->z0(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/hilt/android/internal/managers/ViewComponentManager$a;

    .line 5
    invoke-interface {v0}, Ldagger/hilt/android/internal/managers/ViewComponentManager$a;->p()Lo3/b/a/c/a/e;

    move-result-object v0

    iget-object v1, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->c:Landroid/view/View;

    .line 6
    check-cast v0, Le/a/r1$r;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iput-object v1, v0, Le/a/r1$r;->d:Landroid/view/View;

    .line 10
    const-class v2, Landroid/view/View;

    invoke-static {v1, v2}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 11
    new-instance v1, Le/a/r1$s;

    iget-object v4, v0, Le/a/r1$r;->a:Le/a/r1;

    iget-object v5, v0, Le/a/r1$r;->b:Le/a/r1$d;

    iget-object v6, v0, Le/a/r1$r;->c:Le/a/r1$b;

    iget-object v7, v0, Le/a/r1$r;->d:Landroid/view/View;

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Le/a/r1$s;-><init>(Le/a/r1;Le/a/r1$d;Le/a/r1$b;Landroid/view/View;Le/a/h1;)V

    return-object v1

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->c:Landroid/view/View;

    .line 13
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "%s, Hilt view must be attached to an @AndroidEntryPoint Fragment or Activity."

    .line 14
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/Class;Z)Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Landroid/content/Context;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Le/q/f/a/d/a;->F0(Landroid/content/Context;)Landroid/app/Application;

    move-result-object p1

    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    iget-object v1, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager;->c:Landroid/view/View;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "%s, Hilt view cannot be created using the application context. Use a Hilt Fragment or Activity context."

    .line 7
    invoke-static {p2, v0, p1}, Le/q/f/a/d/a;->x(ZLjava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    :cond_1
    return-object v0
.end method
