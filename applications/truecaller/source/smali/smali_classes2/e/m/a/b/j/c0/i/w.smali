.class public final synthetic Le/m/a/b/j/c0/i/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/b/j/c0/i/h0$d;


# instance fields
.field public final synthetic a:Le/m/a/b/j/c0/i/j0;


# direct methods
.method public synthetic constructor <init>(Le/m/a/b/j/c0/i/j0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/a/b/j/c0/i/w;->a:Le/m/a/b/j/c0/i/j0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le/m/a/b/j/c0/i/w;->a:Le/m/a/b/j/c0/i/j0;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
