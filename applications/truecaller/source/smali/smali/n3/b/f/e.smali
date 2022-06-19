.class public final Ln3/b/f/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Landroid/graphics/PorterDuff$Mode;

.field public static c:Ln3/b/f/e;


# instance fields
.field public a:Ln3/b/f/h0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, Ln3/b/f/e;->b:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Ln3/b/f/e;
    .locals 2

    const-class v0, Ln3/b/f/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Ln3/b/f/e;->c:Ln3/b/f/e;

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Ln3/b/f/e;->e()V

    .line 3
    :cond_0
    sget-object v1, Ln3/b/f/e;->c:Ln3/b/f/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 1

    const-class v0, Ln3/b/f/e;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Ln3/b/f/h0;->h(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized e()V
    .locals 3

    const-class v0, Ln3/b/f/e;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Ln3/b/f/e;->c:Ln3/b/f/e;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ln3/b/f/e;

    invoke-direct {v1}, Ln3/b/f/e;-><init>()V

    sput-object v1, Ln3/b/f/e;->c:Ln3/b/f/e;

    .line 3
    invoke-static {}, Ln3/b/f/h0;->d()Ln3/b/f/h0;

    move-result-object v2

    iput-object v2, v1, Ln3/b/f/e;->a:Ln3/b/f/h0;

    .line 4
    sget-object v1, Ln3/b/f/e;->c:Ln3/b/f/e;

    iget-object v1, v1, Ln3/b/f/e;->a:Ln3/b/f/h0;

    new-instance v2, Ln3/b/f/e$a;

    invoke-direct {v2}, Ln3/b/f/e$a;-><init>()V

    .line 5
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    :try_start_1
    iput-object v2, v1, Ln3/b/f/h0;->g:Ln3/b/f/h0$f;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static f(Landroid/graphics/drawable/Drawable;Ln3/b/f/p0;[I)V
    .locals 3

    .line 1
    sget-object v0, Ln3/b/f/h0;->h:Landroid/graphics/PorterDuff$Mode;

    .line 2
    invoke-static {p0}, Ln3/b/f/w;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    goto :goto_5

    .line 4
    :cond_0
    iget-boolean v0, p1, Ln3/b/f/p0;->d:Z

    if-nez v0, :cond_2

    iget-boolean v1, p1, Ln3/b/f/p0;->c:Z

    if-eqz v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_4

    :cond_2
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p1, Ln3/b/f/p0;->a:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 7
    :goto_1
    iget-boolean v2, p1, Ln3/b/f/p0;->c:Z

    if-eqz v2, :cond_4

    iget-object p1, p1, Ln3/b/f/p0;->b:Landroid/graphics/PorterDuff$Mode;

    goto :goto_2

    :cond_4
    sget-object p1, Ln3/b/f/h0;->h:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    if-eqz v0, :cond_6

    if-nez p1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p2, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p2

    .line 9
    invoke-static {p2, p1}, Ln3/b/f/h0;->h(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    .line 10
    :cond_6
    :goto_3
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 11
    :goto_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x17

    if-gt p1, p2, :cond_7

    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_7
    :goto_5
    return-void
.end method


# virtual methods
.method public declared-synchronized b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/b/f/e;->a:Ln3/b/f/h0;

    invoke-virtual {v0, p1, p2}, Ln3/b/f/h0;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/b/f/e;->a:Ln3/b/f/h0;

    invoke-virtual {v0, p1, p2}, Ln3/b/f/h0;->i(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
