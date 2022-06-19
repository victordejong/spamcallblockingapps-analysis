.class public Lcom/appnext/base/moments/a/b/d;
.super Lcom/appnext/base/a/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appnext/base/a/c/a<",
        "Lcom/appnext/base/moments/a/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field private co:[Ljava/lang/String;

.field private cp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/appnext/base/a/c/a;-><init>()V

    const-string v0, "pk"

    const-string v1, "t"

    const-string v2, "cd"

    const-string v3, "cdd"

    const-string v4, "cdt"

    .line 2
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appnext/base/moments/a/b/d;->co:[Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/appnext/base/moments/a/b/d;->cp:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const-string p1, "create table "

    .line 9
    invoke-static {p1, p0}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, " ( pk text not null, t text not null "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ""

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", cd"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " text not null, cdd"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " text default (strftime(\'%s\',\'now\')), cdt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " text)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final O()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appnext/base/moments/a/b/d;->co:[Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/appnext/base/moments/a/a/b;)J
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/b;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appnext/base/moments/a/b/d;->l(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/appnext/base/moments/a/b/d;->cp:Ljava/lang/String;

    .line 3
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/b;->U()Ljava/lang/String;

    move-result-object v2

    const-string v3, "pk"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/b;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "t"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/b;->V()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cd"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lcom/appnext/base/moments/a/a/b;->X()Ljava/lang/String;

    move-result-object p1

    const-string v2, "cdt"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {v0, v1}, Lcom/appnext/base/a/c/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final synthetic b(Landroid/database/Cursor;)Lcom/appnext/base/a/b/a;
    .locals 7

    const-string v0, "pk"

    .line 1
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "t"

    .line 2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "cd"

    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v0, "cdd"

    .line 4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v0, v5

    .line 5
    invoke-static {v0, v1}, Lcom/appnext/base/moments/b/d;->a(J)Ljava/util/Date;

    move-result-object v5

    const-string v0, "cdt"

    .line 6
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 7
    new-instance p1, Lcom/appnext/base/moments/a/a/b;

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/appnext/base/moments/a/a/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    return-object p1
.end method

.method public final l(Ljava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcom/appnext/base/a/c/a$a;->Equals:Lcom/appnext/base/a/c/a$a;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lcom/appnext/base/moments/a/b/d;->cp:Ljava/lang/String;

    const-string v2, "t"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-super {p0, v1, v2, v3, v0}, Lcom/appnext/base/a/c/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;)I

    return-void
.end method
