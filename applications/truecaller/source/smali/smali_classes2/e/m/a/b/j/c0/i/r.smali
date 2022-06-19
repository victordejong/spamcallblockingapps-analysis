.class public final synthetic Le/m/a/b/j/c0/i/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/c0/i/j0$a;


# static fields
.field public static final synthetic a:Le/m/a/b/j/c0/i/r;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Le/m/a/b/j/c0/i/r;

    invoke-direct {v0}, Le/m/a/b/j/c0/i/r;-><init>()V

    sput-object v0, Le/m/a/b/j/c0/i/r;->a:Le/m/a/b/j/c0/i/r;

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

    const-string v0, "ALTER TABLE events ADD COLUMN payload_encoding TEXT"

    .line 2
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method
