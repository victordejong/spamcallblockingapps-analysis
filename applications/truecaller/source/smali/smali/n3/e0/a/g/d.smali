.class public Ln3/e0/a/g/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/e0/a/d;


# instance fields
.field public final a:Landroid/database/sqlite/SQLiteProgram;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteProgram;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/e0/a/g/d;->a:Landroid/database/sqlite/SQLiteProgram;

    return-void
.end method


# virtual methods
.method public T0(ID)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e0/a/g/d;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e0/a/g/d;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteProgram;->close()V

    return-void
.end method

.method public f0(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e0/a/g/d;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    return-void
.end method

.method public l0(IJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e0/a/g/d;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    return-void
.end method

.method public o0(I[B)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e0/a/g/d;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindBlob(I[B)V

    return-void
.end method

.method public y0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/e0/a/g/d;->a:Landroid/database/sqlite/SQLiteProgram;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    return-void
.end method
