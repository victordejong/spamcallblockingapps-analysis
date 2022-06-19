.class public Le/a/r2/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static e:Le/a/r2/h0;

.field public static f:I


# instance fields
.field public a:Le/a/r2/u;

.field public b:Ljava/lang/Object;

.field public c:Le/a/r2/n;

.field public d:Le/a/r2/h0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;Le/a/r2/u;Le/a/r2/n;)Le/a/r2/h0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Le/a/r2/u<",
            "TT;*>;",
            "Le/a/r2/n;",
            ")",
            "Le/a/r2/h0;"
        }
    .end annotation

    .line 1
    const-class v0, Le/a/r2/h0;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Le/a/r2/h0;->e:Le/a/r2/h0;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, v1, Le/a/r2/h0;->d:Le/a/r2/h0;

    sput-object v2, Le/a/r2/h0;->e:Le/a/r2/h0;

    const/4 v2, 0x0

    .line 4
    iput-object v2, v1, Le/a/r2/h0;->d:Le/a/r2/h0;

    .line 5
    sget v2, Le/a/r2/h0;->f:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Le/a/r2/h0;->f:I

    .line 6
    monitor-exit v0

    goto :goto_0

    .line 7
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    new-instance v1, Le/a/r2/h0;

    invoke-direct {v1}, Le/a/r2/h0;-><init>()V

    .line 9
    :goto_0
    iput-object p0, v1, Le/a/r2/h0;->b:Ljava/lang/Object;

    .line 10
    iput-object p1, v1, Le/a/r2/h0;->a:Le/a/r2/u;

    .line 11
    iput-object p2, v1, Le/a/r2/h0;->c:Le/a/r2/n;

    return-object v1

    :catchall_0
    move-exception p0

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public b()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/r2/h0;->a:Le/a/r2/u;

    .line 2
    iput-object v0, p0, Le/a/r2/h0;->b:Ljava/lang/Object;

    .line 3
    iput-object v0, p0, Le/a/r2/h0;->c:Le/a/r2/n;

    .line 4
    const-class v0, Le/a/r2/h0;

    monitor-enter v0

    .line 5
    :try_start_0
    sget v1, Le/a/r2/h0;->f:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 6
    sget-object v2, Le/a/r2/h0;->e:Le/a/r2/h0;

    iput-object v2, p0, Le/a/r2/h0;->d:Le/a/r2/h0;

    .line 7
    sput-object p0, Le/a/r2/h0;->e:Le/a/r2/h0;

    add-int/lit8 v1, v1, 0x1

    .line 8
    sput v1, Le/a/r2/h0;->f:I

    .line 9
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
