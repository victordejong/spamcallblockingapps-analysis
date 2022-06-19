.class public Le/a/b0/p/f/c;
.super Le/a/b0/i/f/c;
.source "SourceFile"


# static fields
.field public static final c:[Le/a/b0/i/f/c$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Le/a/b0/i/f/c$a;

    .line 1
    new-instance v1, Le/a/b0/i/f/c$a;

    const-string v2, "_id"

    const-string v3, "INTEGER PRIMARY KEY"

    invoke-direct {v1, v2, v3}, Le/a/b0/i/f/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Le/a/b0/i/f/c$a;

    const-string v2, "term"

    const-string v3, "TEXT"

    invoke-direct {v1, v2, v3}, Le/a/b0/i/f/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Le/a/b0/i/f/c$a;

    const-string v2, "tag_id"

    const-string v3, "INTEGER"

    invoke-direct {v1, v2, v3}, Le/a/b0/i/f/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Le/a/b0/i/f/c$a;

    const-string v2, "relevance"

    const-string v3, "REAL"

    invoke-direct {v1, v2, v3}, Le/a/b0/i/f/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Le/a/b0/p/f/c;->c:[Le/a/b0/i/f/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Le/a/b0/p/f/c;->c:[Le/a/b0/i/f/c$a;

    const-string v1, "tag_keywords"

    invoke-direct {p0, v1, v0}, Le/a/b0/i/f/c;-><init>(Ljava/lang/String;[Le/a/b0/i/f/c$a;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const/4 p3, 0x5

    if-ge p2, p3, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Le/a/b0/i/f/c;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
