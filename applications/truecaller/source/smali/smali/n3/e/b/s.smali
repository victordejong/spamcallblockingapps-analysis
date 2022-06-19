.class public final synthetic Ln3/e/b/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e/b/j1/r0$a;


# instance fields
.field public final synthetic a:Ln3/e/b/d1;


# direct methods
.method public synthetic constructor <init>(Ln3/e/b/d1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/b/s;->a:Ln3/e/b/d1;

    return-void
.end method


# virtual methods
.method public final a(Ln3/e/b/j1/r0;)V
    .locals 2

    iget-object v0, p0, Ln3/e/b/s;->a:Ln3/e/b/d1;

    .line 1
    iget-object v1, v0, Ln3/e/b/d1;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Ln3/e/b/d1;->h(Ln3/e/b/j1/r0;)V

    .line 3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
