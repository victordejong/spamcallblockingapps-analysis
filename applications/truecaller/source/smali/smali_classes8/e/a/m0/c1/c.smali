.class public final Le/a/m0/c1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/m0/c1/h0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 2

    const-string v0, "CREATE TABLE call_recordings (_id INTEGER PRIMARY KEY AUTOINCREMENT, recording_path TEXT NOT NULL,history_event_id TEXT NOT NULL )"

    const-string v1, "CREATE INDEX IF NOT EXISTS call_recordings_history_event_id ON call_recordings(history_event_id)"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string p1, "db"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p1, 0x27

    if-ge p3, p1, :cond_0

    .line 1
    invoke-virtual {p0}, Le/a/m0/c1/c;->a()[Ljava/lang/String;

    move-result-object p1

    .line 2
    array-length p3, p1

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    aget-object v0, p1, p4

    .line 3
    invoke-virtual {p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    const-string v0, "CREATE VIEW call_recordings_with_history_event AS SELECT * from history_with_aggregated_contact_number INNER JOIN call_recordings ON event_id=call_recordings.history_event_id"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
