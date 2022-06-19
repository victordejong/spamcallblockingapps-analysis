.class public Lcom/appnext/base/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appnext/base/a/a/a$a;
    }
.end annotation


# static fields
.field private static bS:Lcom/appnext/base/a/a/a;

.field private static bT:Lcom/appnext/base/a/a;


# instance fields
.field private bR:Ljava/util/concurrent/atomic/AtomicInteger;

.field private bU:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/appnext/base/a/a/a;->bR:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-static {p1}, Lcom/appnext/base/a/a;->a(Landroid/content/Context;)Lcom/appnext/base/a/a;

    move-result-object p1

    sput-object p1, Lcom/appnext/base/a/a/a;->bT:Lcom/appnext/base/a/a;

    return-void
.end method

.method public static L()Lcom/appnext/base/a/a/a;
    .locals 3

    .line 1
    sget-object v0, Lcom/appnext/base/a/a/a;->bS:Lcom/appnext/base/a/a/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/appnext/base/a/a/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/appnext/base/a/a/a;->bS:Lcom/appnext/base/a/a/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/appnext/base/a/a/a;

    invoke-static {}, Lcom/appnext/base/b/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/appnext/base/a/a/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/appnext/base/a/a/a;->bS:Lcom/appnext/base/a/a/a;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/appnext/base/a/a/a;->bS:Lcom/appnext/base/a/a/a;

    return-object v0
.end method

.method public static a(Lcom/appnext/base/a/a/a$a;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lcom/appnext/base/a/a/a$1;->bV:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "DatabaseManager$onError"

    .line 2
    invoke-static {p0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final M()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appnext/base/a/a/a;->bR:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/appnext/base/a/a/a;->bT:Lcom/appnext/base/a/a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/base/a/a/a;->bU:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/appnext/base/a/a/a;->bU:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public final N()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/appnext/base/a/a/a;->bR:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/appnext/base/a/a/a;->bU:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
