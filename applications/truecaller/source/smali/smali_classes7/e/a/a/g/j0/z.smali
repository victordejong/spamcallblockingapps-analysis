.class public final Le/a/a/g/j0/z;
.super Le/a/a/g/j0/w;
.source "SourceFile"


# instance fields
.field public final j2:I

.field public final k2:I

.field public final l2:I

.field public final m2:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/g/j0/w;-><init>(Landroid/database/Cursor;)V

    const-string v0, "grouped_by_day_count"

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/z;->j2:I

    const-string v0, "grouped_by_minute_count"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/z;->k2:I

    const-string v0, "group_start_date"

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/a/g/j0/z;->l2:I

    const-string v0, "group_end_date"

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/a/g/j0/z;->m2:I

    return-void
.end method


# virtual methods
.method public j()J
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/g/j0/z;->m2:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public k()J
    .locals 2

    .line 1
    iget v0, p0, Le/a/a/g/j0/z;->l2:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/g/j0/z;->j2:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/a/g/j0/z;->k2:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v0

    return v0
.end method
