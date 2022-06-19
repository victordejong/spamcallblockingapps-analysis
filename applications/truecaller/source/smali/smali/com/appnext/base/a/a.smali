.class public Lcom/appnext/base/a/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# static fields
.field private static volatile bQ:Lcom/appnext/base/a/a;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "appnext_dbs472"

    const/4 v1, 0x0

    const/16 v2, 0xc

    .line 1
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/appnext/base/a/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/appnext/base/a/a;->bQ:Lcom/appnext/base/a/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/appnext/base/a/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/appnext/base/a/a;->bQ:Lcom/appnext/base/a/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/appnext/base/a/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/appnext/base/a/a;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/appnext/base/a/a;->bQ:Lcom/appnext/base/a/a;

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/appnext/base/a/a;->bQ:Lcom/appnext/base/a/a;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    :try_start_0
    const-string v0, "create table ct ( p text, c integer)"

    .line 1
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/appnext/base/moments/a/b/b;->ah()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "create table config_table ( key text primary key, status text not null default \'off\', sample text not null default \'1\', sample_type text not null default \'\',cycle text not null default \'1\', cycle_type text not null default \'once\', service_key text not null default \'\', data text not null default \'\')"

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "DatabaseSqlHelper$onCreate"

    .line 4
    invoke-static {v0, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    :try_start_0
    const-string p2, "DROP TABLE IF EXISTS ct"

    .line 1
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS collected_data_table"

    .line 2
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "DROP TABLE IF EXISTS config_table"

    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/appnext/base/a/a;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "DatabaseSqlHelper$dropTables"

    .line 5
    invoke-static {p2, p1}, Lcom/appnext/base/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
