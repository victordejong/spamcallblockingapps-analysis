.class public final Le/a/y/d/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/d/d;


# instance fields
.field public final a:Le/a/y/d/c;


# direct methods
.method public constructor <init>(Le/a/y/d/c;)V
    .locals 1

    const-string v0, "flashDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/d/e;->a:Le/a/y/d/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/d/e;->a:Le/a/y/d/c;

    invoke-interface {v0, p1}, Le/a/y/d/c;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)I
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/d/e;->a:Le/a/y/d/c;

    invoke-interface {v0, p1}, Le/a/y/d/c;->b(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public c([Ljava/lang/String;)I
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/y/d/e;->a:Le/a/y/d/c;

    invoke-interface {v0, p1}, Le/a/y/d/c;->c([Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public d(Landroid/content/ContentValues;)J
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    new-instance v0, Le/a/y/d/m;

    const-string v1, "phone"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "contentValues.getAsStrin\u2026.StateTable.COLUMN_PHONE)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "flash_enabled"

    .line 3
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "contentValues.getAsInteg\u2026tateTable.COLUMN_ENABLED)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "version"

    .line 4
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-direct {v0, v1, v2, p1}, Le/a/y/d/m;-><init>(Ljava/lang/String;II)V

    .line 6
    iget-object p1, p0, Le/a/y/d/e;->a:Le/a/y/d/c;

    invoke-interface {p1, v0}, Le/a/y/d/c;->d(Le/a/y/d/m;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    const/4 p1, -0x1

    int-to-long v0, p1

    return-wide v0
.end method

.method public e()Landroid/database/Cursor;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y/d/e;->a:Le/a/y/d/c;

    invoke-interface {v0}, Le/a/y/d/c;->e()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/database/Cursor;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y/d/e;->a:Le/a/y/d/c;

    const/4 v1, 0x0

    const-string v2, "call_me_back"

    .line 2
    invoke-interface {v0, v1, v2}, Le/a/y/d/c;->f(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public g(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 7

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1
    iget-object v1, p0, Le/a/y/d/e;->a:Le/a/y/d/c;

    const-string v0, "timestamp"

    .line 2
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v0, "type"

    .line 3
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v0, "history"

    .line 4
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, p1

    .line 5
    invoke-interface/range {v1 .. v6}, Le/a/y/d/c;->g(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public h(Landroid/content/ContentValues;)J
    .locals 7

    if-eqz p1, :cond_1

    .line 1
    new-instance v6, Le/a/y/d/g;

    const-string v0, "phone"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "contentValues.getAsStrin\u2026istoryTable.COLUMN_PHONE)"

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v2, v0

    const-string v0, "timestamp"

    .line 4
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "contentValues.getAsLong(\u2026ryTable.COLUMN_TIMESTAMP)"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-string v0, "history"

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    .line 6
    invoke-direct/range {v0 .. v5}, Le/a/y/d/g;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 7
    iget-object p1, p0, Le/a/y/d/e;->a:Le/a/y/d/c;

    invoke-interface {p1, v6}, Le/a/y/d/c;->i(Le/a/y/d/g;)J

    move-result-wide v0

    return-wide v0

    :cond_1
    const/4 p1, -0x1

    int-to-long v0, p1

    return-wide v0
.end method

.method public i(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 4

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    .line 1
    iget-object v0, p0, Le/a/y/d/e;->a:Le/a/y/d/c;

    const-string v1, "flash_enabled"

    .line 2
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v3, "version"

    .line 3
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4
    :cond_1
    invoke-interface {v0, v1, v2, p1}, Le/a/y/d/c;->j(IILjava/lang/String;)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public j([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/y/d/e;->a:Le/a/y/d/c;

    invoke-interface {v0, p1}, Le/a/y/d/c;->h([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
