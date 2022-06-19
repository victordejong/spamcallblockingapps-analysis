.class public abstract Le/a/m0/b1/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public abstract b(Landroid/database/sqlite/SQLiteDatabase;I)V
.end method

.method public final c(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 1

    const-string v0, "db"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/m0/b1/j;->d()I

    move-result v0

    if-lt p2, v0, :cond_0

    invoke-virtual {p0}, Le/a/m0/b1/j;->a()I

    move-result v0

    if-gt p2, v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Le/a/m0/b1/j;->b(Landroid/database/sqlite/SQLiteDatabase;I)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Le/a/m0/b1/i;

    invoke-direct {p1, p2}, Le/a/m0/b1/i;-><init>(I)V

    throw p1
.end method

.method public abstract d()I
.end method
