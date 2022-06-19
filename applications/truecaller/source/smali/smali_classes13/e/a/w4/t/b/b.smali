.class public abstract Le/a/w4/t/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static volatile a:Le/a/w4/t/b/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/content/Context;)Le/a/w4/t/b/b;
    .locals 2

    .line 1
    sget-object v0, Le/a/w4/t/b/b;->a:Le/a/w4/t/b/b;

    if-nez v0, :cond_1

    .line 2
    const-class v1, Le/a/w4/t/b/b;

    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, Le/a/w4/t/b/b;->a:Le/a/w4/t/b/b;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Le/a/w4/t/b/c;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Le/a/w4/t/b/c;-><init>(Landroid/content/Context;)V

    sput-object v0, Le/a/w4/t/b/b;->a:Le/a/w4/t/b/b;

    .line 5
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Le/a/l4/e;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;)Le/a/l4/e;
.end method

.method public abstract d(Ljava/lang/String;)Lx3/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lx3/a0<",
            "Le/a/f4/g/t;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e(Ljava/lang/String;Lx3/a0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lx3/a0<",
            "Le/a/f4/g/t;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract f(Ljava/lang/String;Lw3/b/a/b;)V
.end method
