.class Lf/t/a/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf/t/a/b;


# static fields
.field private static final g:[Ljava/lang/String;


# instance fields
.field private final f:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sput-object v0, Lf/t/a/g/a;->g:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/t/a/g/a;->f:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/String;)Lf/t/a/f;
    .locals 2

    .line 1
    new-instance v0, Lf/t/a/g/e;

    iget-object v1, p0, Lf/t/a/g/a;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-direct {v0, p1}, Lf/t/a/g/e;-><init>(Landroid/database/sqlite/SQLiteStatement;)V

    return-object v0
.end method

.method public L0(Lf/t/a/e;)Landroid/database/Cursor;
    .locals 4

    .line 1
    iget-object v0, p0, Lf/t/a/g/a;->f:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Lf/t/a/g/a$a;

    invoke-direct {v1, p0, p1}, Lf/t/a/g/a$a;-><init>(Lf/t/a/g/a;Lf/t/a/e;)V

    .line 2
    invoke-interface {p1}, Lf/t/a/e;->a()Ljava/lang/String;

    move-result-object p1

    sget-object v2, Lf/t/a/g/a;->g:[Ljava/lang/String;

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public R0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/t/a/g/a;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public W(Lf/t/a/e;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 6

    .line 1
    iget-object v0, p0, Lf/t/a/g/a;->f:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v1, Lf/t/a/g/a$b;

    invoke-direct {v1, p0, p1}, Lf/t/a/g/a$b;-><init>(Lf/t/a/g/a;Lf/t/a/e;)V

    .line 2
    invoke-interface {p1}, Lf/t/a/e;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lf/t/a/g/a;->g:[Ljava/lang/String;

    const/4 v4, 0x0

    move-object v5, p2

    .line 3
    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQueryWithFactory(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/t/a/g/a;->f:Landroid/database/sqlite/SQLiteDatabase;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public beginTransaction()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/t/a/g/a;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/t/a/g/a;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-void
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lf/t/a/g/a;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/t/a/g/a;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method public i0(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/t/a/g/a;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lf/t/a/g/a;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    return v0
.end method

.method public r0(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .line 1
    new-instance v0, Lf/t/a/a;

    invoke-direct {v0, p1}, Lf/t/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lf/t/a/g/a;->L0(Lf/t/a/e;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public t()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/t/a/g/a;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getAttachedDbs()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public w(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lf/t/a/g/a;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public z0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/t/a/g/a;->f:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method
