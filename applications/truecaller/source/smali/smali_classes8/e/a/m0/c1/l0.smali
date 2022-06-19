.class public Le/a/m0/c1/l0;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/m0/c1/l0$a;
    }
.end annotation


# static fields
.field public static f:Le/a/m0/c1/l0;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:[Le/a/m0/c1/h0;

.field public final c:Le/a/m0/c1/d;

.field public final d:Le/a/m0/c1/i0;

.field public e:Le/a/q2/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Le/a/m0/c1/h0;Le/a/q2/a;)V
    .locals 3

    const-string v0, "tc.db"

    const/4 v1, 0x0

    const/16 v2, 0xd2

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Le/a/m0/c1/l0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/a/m0/c1/l0;->b:[Le/a/m0/c1/h0;

    .line 4
    new-instance p1, Le/a/m0/c1/d;

    invoke-direct {p1}, Le/a/m0/c1/d;-><init>()V

    iput-object p1, p0, Le/a/m0/c1/l0;->c:Le/a/m0/c1/d;

    .line 5
    iput-object p3, p0, Le/a/m0/c1/l0;->e:Le/a/q2/a;

    .line 6
    new-instance p1, Le/a/m0/c1/i0;

    invoke-direct {p1}, Le/a/m0/c1/i0;-><init>()V

    iput-object p1, p0, Le/a/m0/c1/l0;->d:Le/a/m0/c1/i0;

    return-void
.end method

.method public static d()[Le/a/m0/c1/h0;
    .locals 9

    const/16 v0, 0x14

    new-array v0, v0, [Le/a/m0/c1/h0;

    .line 1
    new-instance v1, Le/a/m0/c1/a;

    invoke-direct {v1}, Le/a/m0/c1/a;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Le/a/m0/c1/e0;

    invoke-direct {v1}, Le/a/m0/c1/e0;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Le/a/m0/c1/i;

    invoke-direct {v1}, Le/a/m0/c1/i;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Le/a/m0/c1/k;

    invoke-direct {v1}, Le/a/m0/c1/k;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Le/a/m0/c1/z;

    invoke-direct {v1}, Le/a/m0/c1/z;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2
    new-instance v1, Le/a/m0/c1/o;

    new-instance v2, Le/a/m0/b1/f;

    new-instance v3, Le/a/m0/b1/g;

    invoke-direct {v3}, Le/a/m0/b1/g;-><init>()V

    invoke-direct {v2, v3}, Le/a/m0/b1/f;-><init>(Le/a/m0/b1/g;)V

    invoke-direct {v1, v2}, Le/a/m0/c1/o;-><init>(Le/a/m0/b1/f;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v1, 0x6

    .line 3
    new-instance v8, Le/a/m0/c1/h;

    new-instance v3, Le/a/m0/b1/a;

    invoke-direct {v3}, Le/a/m0/b1/a;-><init>()V

    new-instance v4, Le/a/m0/b1/b;

    invoke-direct {v4}, Le/a/m0/b1/b;-><init>()V

    new-instance v5, Le/a/m0/b1/c;

    invoke-direct {v5}, Le/a/m0/b1/c;-><init>()V

    new-instance v6, Le/a/m0/b1/d;

    invoke-direct {v6}, Le/a/m0/b1/d;-><init>()V

    new-instance v7, Le/a/m0/b1/e;

    invoke-direct {v7}, Le/a/m0/b1/e;-><init>()V

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Le/a/m0/c1/h;-><init>(Le/a/m0/b1/j;Le/a/m0/b1/j;Le/a/m0/b1/j;Le/a/m0/b1/j;Le/a/m0/b1/j;)V

    aput-object v8, v0, v1

    const/4 v1, 0x7

    .line 4
    new-instance v2, Le/a/m0/c1/j;

    invoke-direct {v2}, Le/a/m0/c1/j;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Le/a/m0/c1/k0;

    invoke-direct {v2}, Le/a/m0/c1/k0;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Le/a/m0/c1/n;

    invoke-direct {v2}, Le/a/m0/c1/n;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Le/a/m0/c1/l;

    invoke-direct {v2}, Le/a/m0/c1/l;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Le/a/m0/c1/f0;

    invoke-direct {v2}, Le/a/m0/c1/f0;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Le/a/m0/c1/c;

    invoke-direct {v2}, Le/a/m0/c1/c;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Le/a/m0/c1/c0;

    invoke-direct {v2}, Le/a/m0/c1/c0;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Le/a/m0/c1/f;

    invoke-direct {v2}, Le/a/m0/c1/f;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 5
    new-instance v2, Le/a/m0/c1/j0;

    new-instance v3, Le/a/m0/c1/i0;

    invoke-direct {v3}, Le/a/m0/c1/i0;-><init>()V

    new-instance v4, Le/a/m0/b1/m/a;

    invoke-direct {v4}, Le/a/m0/b1/m/a;-><init>()V

    invoke-direct {v2, v3, v4}, Le/a/m0/c1/j0;-><init>(Le/a/m0/c1/i0;Le/a/m0/b1/j;)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 6
    new-instance v2, Le/a/m0/c1/m;

    invoke-direct {v2}, Le/a/m0/c1/m;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Le/a/m0/c1/e;

    invoke-direct {v2}, Le/a/m0/c1/e;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Le/a/m0/c1/m0;

    invoke-direct {v2}, Le/a/m0/c1/m0;-><init>()V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Le/a/m0/c1/b;

    invoke-direct {v2}, Le/a/m0/c1/b;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static declared-synchronized j(Landroid/content/Context;[Le/a/m0/c1/h0;Le/a/q2/a;)Le/a/m0/c1/l0;
    .locals 2

    const-class v0, Le/a/m0/c1/l0;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/a/m0/c1/l0;->f:Le/a/m0/c1/l0;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Le/a/m0/c1/l0;

    invoke-direct {v1, p0, p1, p2}, Le/a/m0/c1/l0;-><init>(Landroid/content/Context;[Le/a/m0/c1/h0;Le/a/q2/a;)V

    sput-object v1, Le/a/m0/c1/l0;->f:Le/a/m0/c1/l0;

    .line 3
    :cond_0
    sget-object p0, Le/a/m0/c1/l0;->f:Le/a/m0/c1/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/m0/c1/l0;->b:[Le/a/m0/c1/h0;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-interface {v4}, Le/a/m0/c1/h0;->c()[Ljava/lang/String;

    move-result-object v4

    .line 3
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 4
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/m0/c1/l0;->b:[Le/a/m0/c1/h0;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-interface {v4}, Le/a/m0/c1/h0;->a()[Ljava/lang/String;

    move-result-object v4

    .line 3
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 4
    invoke-virtual {p1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Le/a/m0/c1/l0;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->enableWriteAheadLogging()Z

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setForeignKeyConstraintsEnabled(Z)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6

    :try_start_0
    const-string v0, "view"

    .line 1
    invoke-static {p1, v0}, Le/a/b0/i/f/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v0, "trigger"

    .line 2
    invoke-static {p1, v0}, Le/a/b0/i/f/b;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const/16 v0, 0x55

    if-ge p2, v0, :cond_2

    .line 3
    iget-object v1, p0, Le/a/m0/c1/l0;->b:[Le/a/m0/c1/h0;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 4
    iget-object v5, p0, Le/a/m0/c1/l0;->a:Landroid/content/Context;

    invoke-interface {v4, v5, p1, p2, p3}, Le/a/m0/c1/h0;->b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    if-ge p2, v1, :cond_1

    .line 5
    iget-object v1, p0, Le/a/m0/c1/l0;->a:Landroid/content/Context;

    const-string v2, "filterDatabase"

    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 6
    :cond_1
    iget-object v1, p0, Le/a/m0/c1/l0;->c:Le/a/m0/c1/d;

    iget-object v2, p0, Le/a/m0/c1/l0;->a:Landroid/content/Context;

    invoke-virtual {v1, v2, p1, p2, p3}, Le/a/m0/c1/d;->b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V

    :cond_2
    add-int/lit8 v1, p2, 0x1

    .line 7
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    if-gt v0, p3, :cond_3

    .line 8
    invoke-static {v0, p1}, Le/a/m0/b1/l;->a(ILandroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p0, p1}, Le/a/m0/c1/l0;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v0, 0xcd

    if-ge p2, v0, :cond_4

    .line 10
    iget-object v0, p0, Le/a/m0/c1/l0;->d:Le/a/m0/c1/i0;

    invoke-virtual {v0, p1}, Le/a/m0/c1/i0;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    .line 11
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 12
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "VersionFrom"

    .line 13
    invoke-static {v0, p2}, Le/d/c/a/a;->T(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p2

    .line 14
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "VersionTo"

    .line 15
    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ExceptionType"

    .line 17
    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance p3, Le/a/q2/g$b$a;

    const/4 v0, 0x0

    const-string v1, "DbUpgradeFailed"

    invoke-direct {p3, v1, v0, p2, v0}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    .line 19
    iget-object p2, p0, Le/a/m0/c1/l0;->e:Le/a/q2/a;

    invoke-interface {p2, p3}, Le/a/q2/a;->e(Le/a/q2/g;)V

    .line 20
    new-instance p2, Le/a/m0/c1/l0$a;

    invoke-direct {p2, p0, p1}, Le/a/m0/c1/l0$a;-><init>(Le/a/m0/c1/l0;Ljava/lang/RuntimeException;)V

    throw p2
.end method
