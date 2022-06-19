.class final synthetic Lg/f/a/b/i/x/j/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/a/b/i/x/j/b0$d;


# instance fields
.field private final a:Lg/f/a/b/i/x/j/h0;


# direct methods
.method private constructor <init>(Lg/f/a/b/i/x/j/h0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/f/a/b/i/x/j/s;->a:Lg/f/a/b/i/x/j/h0;

    return-void
.end method

.method public static b(Lg/f/a/b/i/x/j/h0;)Lg/f/a/b/i/x/j/b0$d;
    .locals 1

    new-instance v0, Lg/f/a/b/i/x/j/s;

    invoke-direct {v0, p0}, Lg/f/a/b/i/x/j/s;-><init>(Lg/f/a/b/i/x/j/h0;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/f/a/b/i/x/j/s;->a:Lg/f/a/b/i/x/j/h0;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
