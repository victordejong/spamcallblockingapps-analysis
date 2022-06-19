.class public Le/a/h0/w/c;
.super Landroid/database/CursorWrapper;
.source "SourceFile"

# interfaces
.implements Le/a/h0/w/b;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    const-string v0, "_id"

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/h0/w/c;->a:I

    const-string v0, "rule"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/h0/w/c;->b:I

    const-string v0, "sync_state"

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/h0/w/c;->c:I

    const-string v0, "wildcard_type"

    .line 5
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/h0/w/c;->d:I

    const-string v0, "label"

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/h0/w/c;->e:I

    const-string v0, "value"

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/h0/w/c;->f:I

    const-string v0, "tracking_type"

    .line 8
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/h0/w/c;->g:I

    const-string v0, "tracking_source"

    .line 9
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/h0/w/c;->h:I

    const-string v0, "entity_type"

    .line 10
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/h0/w/c;->i:I

    const-string v0, "category_id"

    .line 11
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/h0/w/c;->j:I

    const-string v0, "spam_version"

    .line 12
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/a/h0/w/c;->k:I

    const-string v0, "history_event_id"

    .line 13
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/h0/w/c;->l:I

    return-void
.end method


# virtual methods
.method public getFilter()Le/a/h0/w/a;
    .locals 5

    .line 1
    new-instance v0, Le/a/h0/w/a$b;

    invoke-direct {v0}, Le/a/h0/w/a$b;-><init>()V

    iget v1, p0, Le/a/h0/w/c;->a:I

    .line 2
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v1

    .line 3
    iput-wide v1, v0, Le/a/h0/w/a$b;->a:J

    .line 4
    iget v1, p0, Le/a/h0/w/c;->b:I

    .line 5
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 6
    iput v1, v0, Le/a/h0/w/a$b;->b:I

    .line 7
    iget v1, p0, Le/a/h0/w/c;->c:I

    .line 8
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 9
    iput v1, v0, Le/a/h0/w/a$b;->c:I

    .line 10
    iget v1, p0, Le/a/h0/w/c;->d:I

    .line 11
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 12
    invoke-static {v1}, Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;->valueOfType(I)Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    move-result-object v1

    iput-object v1, v0, Le/a/h0/w/a$b;->l:Lcom/truecaller/blocking/FiltersContract$Filters$WildCardType;

    .line 13
    iget v1, p0, Le/a/h0/w/c;->e:I

    .line 14
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 15
    iput-object v1, v0, Le/a/h0/w/a$b;->d:Ljava/lang/String;

    .line 16
    iget v1, p0, Le/a/h0/w/c;->f:I

    .line 17
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 18
    iput-object v1, v0, Le/a/h0/w/a$b;->e:Ljava/lang/String;

    .line 19
    iget v1, p0, Le/a/h0/w/c;->g:I

    .line 20
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 21
    iput-object v1, v0, Le/a/h0/w/a$b;->f:Ljava/lang/String;

    .line 22
    iget v1, p0, Le/a/h0/w/c;->h:I

    .line 23
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 24
    iput-object v1, v0, Le/a/h0/w/a$b;->g:Ljava/lang/String;

    .line 25
    iget v1, p0, Le/a/h0/w/c;->i:I

    .line 26
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    .line 27
    iput v1, v0, Le/a/h0/w/a$b;->h:I

    .line 28
    iget v1, p0, Le/a/h0/w/c;->j:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Le/a/h0/w/c;->j:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 29
    :goto_0
    iput-object v1, v0, Le/a/h0/w/a$b;->i:Ljava/lang/Long;

    .line 30
    iget v1, p0, Le/a/h0/w/c;->k:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    iget v1, p0, Le/a/h0/w/c;->k:I

    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 31
    :goto_1
    iput-object v1, v0, Le/a/h0/w/a$b;->j:Ljava/lang/Integer;

    .line 32
    iget v1, p0, Le/a/h0/w/c;->l:I

    .line 33
    invoke-virtual {p0, v1}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    iput-object v1, v0, Le/a/h0/w/a$b;->k:Ljava/lang/String;

    .line 35
    new-instance v1, Le/a/h0/w/a;

    invoke-direct {v1, v0, v2}, Le/a/h0/w/a;-><init>(Le/a/h0/w/a$b;Le/a/h0/w/a$a;)V

    return-object v1
.end method
