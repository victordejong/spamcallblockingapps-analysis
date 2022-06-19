.class public Lo3/b/a/c/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo3/b/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/b/a/c/c/f$a;
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

.field public final c:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo3/b/a/c/c/f;->b:Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lo3/b/a/c/c/f;->c:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public static final b(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 1
    :goto_0
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 2
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public Yt()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lo3/b/a/c/c/f;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lo3/b/a/c/c/f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lo3/b/a/c/c/f;->a:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0}, Lo3/b/a/c/c/f;->a()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lo3/b/a/c/c/f;->a:Ljava/lang/Object;

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
    iget-object v0, p0, Lo3/b/a/c/c/f;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public final a()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Lo3/b/a/c/c/f;->c:Landroidx/fragment/app/Fragment;

    .line 2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Hilt Fragments must be attached before creating the component."

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Lo3/b/a/c/c/f;->c:Landroidx/fragment/app/Fragment;

    .line 5
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lo3/b/b/b;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lo3/b/a/c/c/f;->c:Landroidx/fragment/app/Fragment;

    .line 6
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Hilt Fragments must be attached to an @AndroidEntryPoint Activity. Found: %s"

    .line 7
    invoke-static {v0, v2, v1}, Le/q/f/a/d/a;->x(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lo3/b/a/c/c/f;->c:Landroidx/fragment/app/Fragment;

    .line 9
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getHost()Ljava/lang/Object;

    move-result-object v0

    const-class v1, Lo3/b/a/c/c/f$a;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->z0(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo3/b/a/c/c/f$a;

    .line 10
    invoke-interface {v0}, Lo3/b/a/c/c/f$a;->R()Lo3/b/a/c/a/c;

    move-result-object v0

    iget-object v1, p0, Lo3/b/a/c/c/f;->c:Landroidx/fragment/app/Fragment;

    .line 11
    check-cast v0, Le/a/r1$i;

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iput-object v1, v0, Le/a/r1$i;->d:Landroidx/fragment/app/Fragment;

    .line 15
    const-class v2, Landroidx/fragment/app/Fragment;

    invoke-static {v1, v2}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 16
    new-instance v1, Le/a/r1$j;

    iget-object v4, v0, Le/a/r1$i;->a:Le/a/r1;

    iget-object v5, v0, Le/a/r1$i;->b:Le/a/r1$d;

    iget-object v6, v0, Le/a/r1$i;->c:Le/a/r1$b;

    new-instance v7, Le/a/c/a/p/a/a;

    invoke-direct {v7}, Le/a/c/a/p/a/a;-><init>()V

    iget-object v8, v0, Le/a/r1$i;->d:Landroidx/fragment/app/Fragment;

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Le/a/r1$j;-><init>(Le/a/r1;Le/a/r1$d;Le/a/r1$b;Le/a/c/a/p/a/a;Landroidx/fragment/app/Fragment;Le/a/h1;)V

    return-object v1
.end method
