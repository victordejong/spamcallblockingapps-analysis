.class public final synthetic Le/m/a/b/j/c0/i/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/c0/i/j0$a;


# static fields
.field public static final synthetic a:Le/m/a/b/j/c0/i/s;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/a/b/j/c0/i/s;

    invoke-direct {v0}, Le/m/a/b/j/c0/i/s;-><init>()V

    sput-object v0, Le/m/a/b/j/c0/i/s;->a:Le/m/a/b/j/c0/i/s;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1
    sget-object v0, Le/m/a/b/j/c0/i/j0;->c:Ljava/lang/String;

    const-string v0, "ALTER TABLE events ADD COLUMN inline BOOLEAN NOT NULL DEFAULT 1"

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS event_payloads"

    .line 3
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE event_payloads (sequence_num INTEGER NOT NULL, event_id INTEGER NOT NULL, bytes BLOB NOT NULL,FOREIGN KEY (event_id) REFERENCES events(_id) ON DELETE CASCADE,PRIMARY KEY (sequence_num, event_id))"

    .line 4
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
