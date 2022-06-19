.class public Ln3/m0/c0/q/f/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Ln3/m0/c0/q/f/g;


# instance fields
.field public a:Ln3/m0/c0/q/f/a;

.field public b:Ln3/m0/c0/q/f/b;

.field public c:Ln3/m0/c0/q/f/e;

.field public d:Ln3/m0/c0/q/f/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ln3/m0/c0/t/x/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    new-instance v0, Ln3/m0/c0/q/f/a;

    invoke-direct {v0, p1, p2}, Ln3/m0/c0/q/f/a;-><init>(Landroid/content/Context;Ln3/m0/c0/t/x/a;)V

    iput-object v0, p0, Ln3/m0/c0/q/f/g;->a:Ln3/m0/c0/q/f/a;

    .line 4
    new-instance v0, Ln3/m0/c0/q/f/b;

    invoke-direct {v0, p1, p2}, Ln3/m0/c0/q/f/b;-><init>(Landroid/content/Context;Ln3/m0/c0/t/x/a;)V

    iput-object v0, p0, Ln3/m0/c0/q/f/g;->b:Ln3/m0/c0/q/f/b;

    .line 5
    new-instance v0, Ln3/m0/c0/q/f/e;

    invoke-direct {v0, p1, p2}, Ln3/m0/c0/q/f/e;-><init>(Landroid/content/Context;Ln3/m0/c0/t/x/a;)V

    iput-object v0, p0, Ln3/m0/c0/q/f/g;->c:Ln3/m0/c0/q/f/e;

    .line 6
    new-instance v0, Ln3/m0/c0/q/f/f;

    invoke-direct {v0, p1, p2}, Ln3/m0/c0/q/f/f;-><init>(Landroid/content/Context;Ln3/m0/c0/t/x/a;)V

    iput-object v0, p0, Ln3/m0/c0/q/f/g;->d:Ln3/m0/c0/q/f/f;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ln3/m0/c0/t/x/a;)Ln3/m0/c0/q/f/g;
    .locals 2

    const-class v0, Ln3/m0/c0/q/f/g;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Ln3/m0/c0/q/f/g;->e:Ln3/m0/c0/q/f/g;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ln3/m0/c0/q/f/g;

    invoke-direct {v1, p0, p1}, Ln3/m0/c0/q/f/g;-><init>(Landroid/content/Context;Ln3/m0/c0/t/x/a;)V

    sput-object v1, Ln3/m0/c0/q/f/g;->e:Ln3/m0/c0/q/f/g;

    .line 3
    :cond_0
    sget-object p0, Ln3/m0/c0/q/f/g;->e:Ln3/m0/c0/q/f/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
