.class public final synthetic Ln3/e/b/j1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/h/a/d;


# instance fields
.field public final synthetic a:Ln3/e/b/j1/c0;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/j1/c0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/j1/a;->a:Ln3/e/b/j1/c0;

    return-void
.end method


# virtual methods
.method public final a(Ln3/h/a/b;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ln3/e/b/j1/a;->a:Ln3/e/b/j1/c0;

    .line 1
    iget-object v1, v0, Ln3/e/b/j1/c0;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    iput-object p1, v0, Ln3/e/b/j1/c0;->e:Ln3/h/a/b;

    .line 3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "CameraRepository-deinit"

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
