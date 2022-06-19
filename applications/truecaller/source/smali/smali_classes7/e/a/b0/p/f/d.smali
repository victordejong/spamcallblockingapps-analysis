.class public final Le/a/b0/p/f/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Le/a/b0/i/f/a;

.field public static final b:[Le/a/b0/i/f/c;

.field public static final c:[Le/a/b0/i/f/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Le/a/b0/i/f/c;

    .line 1
    new-instance v1, Le/a/b0/p/f/a;

    invoke-direct {v1}, Le/a/b0/p/f/a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Le/a/b0/p/f/e;

    invoke-direct {v1}, Le/a/b0/p/f/e;-><init>()V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    new-instance v1, Le/a/b0/p/f/b;

    invoke-direct {v1}, Le/a/b0/p/f/b;-><init>()V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    new-instance v1, Le/a/b0/p/f/c;

    invoke-direct {v1}, Le/a/b0/p/f/c;-><init>()V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sput-object v0, Le/a/b0/p/f/d;->b:[Le/a/b0/i/f/c;

    new-array v0, v2, [Le/a/b0/i/f/d;

    .line 2
    sput-object v0, Le/a/b0/p/f/d;->c:[Le/a/b0/i/f/d;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Le/a/b0/i/f/a;
    .locals 9

    const-class v0, Le/a/b0/p/f/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/a/b0/p/f/d;->a:Le/a/b0/i/f/a;

    if-nez v1, :cond_0

    const-string v4, "tags.db"

    const/4 v5, 0x5

    .line 2
    sget-object v6, Le/a/b0/p/f/d;->b:[Le/a/b0/i/f/c;

    sget-object v7, Le/a/b0/p/f/d;->c:[Le/a/b0/i/f/d;

    .line 3
    new-instance v1, Le/a/b0/i/f/a;

    const/4 v8, 0x0

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Le/a/b0/i/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;I[Le/a/b0/i/f/c;[Le/a/b0/i/f/d;Landroid/database/DatabaseErrorHandler;)V

    .line 4
    sput-object v1, Le/a/b0/p/f/d;->a:Le/a/b0/i/f/a;

    .line 5
    :cond_0
    sget-object p0, Le/a/b0/p/f/d;->a:Le/a/b0/i/f/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
