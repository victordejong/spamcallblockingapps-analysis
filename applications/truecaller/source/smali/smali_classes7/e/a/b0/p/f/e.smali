.class public Le/a/b0/p/f/e;
.super Le/a/b0/i/f/c;
.source "SourceFile"


# static fields
.field public static final c:[Le/a/b0/i/f/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Le/a/b0/i/f/c$a;

    .line 1
    new-instance v1, Le/a/b0/i/f/c$a;

    const-string v2, "_id"

    const-string v3, "INTEGER PRIMARY KEY"

    invoke-direct {v1, v2, v3}, Le/a/b0/i/f/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Le/a/b0/i/f/c$a;

    const-string v2, "normalized_number"

    const-string v3, "TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Le/a/b0/i/f/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v1, v0, v4

    new-instance v1, Le/a/b0/i/f/c$a;

    const-string v2, "tag_id"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Le/a/b0/i/f/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Le/a/b0/i/f/c$a;

    const-string v2, "tag_id_2"

    invoke-direct {v1, v2, v3}, Le/a/b0/i/f/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Le/a/b0/i/f/c$a;

    const-string v2, "context"

    invoke-direct {v1, v2, v3}, Le/a/b0/i/f/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Le/a/b0/i/f/c$a;

    const-string v2, "search_type"

    invoke-direct {v1, v2, v3}, Le/a/b0/i/f/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Le/a/b0/i/f/c$a;

    const-string v2, "timestamp"

    invoke-direct {v1, v2, v3}, Le/a/b0/i/f/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Le/a/b0/p/f/e;->c:[Le/a/b0/i/f/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Le/a/b0/p/f/e;->c:[Le/a/b0/i/f/c$a;

    const-string v1, "user_tags"

    invoke-direct {p0, v1, v0}, Le/a/b0/i/f/c;-><init>(Ljava/lang/String;[Le/a/b0/i/f/c$a;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p3, 0x3

    if-ge p2, p3, :cond_0

    const-string p3, "ALTER TABLE user_tags ADD COLUMN tag_id_2 INTEGER"

    .line 1
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const/4 p3, 0x4

    if-ge p2, p3, :cond_1

    const-string p2, "ALTER TABLE user_tags ADD COLUMN context INTEGER"

    .line 2
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE user_tags ADD COLUMN search_type INTEGER"

    .line 3
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p2, "ALTER TABLE user_tags ADD COLUMN timestamp INTEGER"

    .line 4
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
