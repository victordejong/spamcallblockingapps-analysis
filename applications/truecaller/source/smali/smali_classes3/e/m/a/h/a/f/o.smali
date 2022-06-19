.class public final Le/m/a/h/a/f/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Le/m/a/h/a/f/o;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Le/m/a/h/a/f/o;->a:Landroid/content/Context;

    .line 1
    invoke-static {v0}, Le/m/a/h/a/g/t0;->d(Landroid/content/Context;)Le/m/a/h/a/g/t0;

    move-result-object v0

    .line 2
    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, v0, Le/m/a/h/a/e/c;->f:Z

    .line 3
    invoke-virtual {v0}, Le/m/a/h/a/e/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
