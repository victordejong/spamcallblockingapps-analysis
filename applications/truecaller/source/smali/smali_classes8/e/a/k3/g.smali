.class public final Le/a/k3/g;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# instance fields
.field public final a:Le/a/k3/j/d;

.field public final b:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 3

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Le/a/k3/b;

    .line 7
    new-instance v1, Le/a/k3/c$a;

    sget-object v2, Ls1/u/t;->a:Ls1/u/t;

    invoke-direct {v1, v2}, Le/a/k3/c$a;-><init>(Ljava/util/Map;)V

    invoke-direct {v0, v1}, Le/a/k3/b;-><init>(Le/a/k3/c$a;)V

    .line 8
    invoke-direct {p0, p1, v0}, Le/a/k3/g;-><init>(Landroid/database/Cursor;Le/a/k3/c;)V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;Le/a/k3/c;)V
    .locals 2

    const-string v0, "cursor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraMetaInfoReader"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    .line 2
    new-instance v0, Le/a/k3/j/d;

    .line 3
    sget-object v1, Le/a/k3/l/j;->b:Le/a/k3/l/j;

    invoke-direct {v0, p1, p2, v1}, Le/a/k3/j/d;-><init>(Landroid/database/Cursor;Le/a/k3/c;Le/a/k3/l/j;)V

    .line 4
    iput-object v0, p0, Le/a/k3/g;->a:Le/a/k3/j/d;

    const-string p1, "matched_value"

    .line 5
    invoke-virtual {p0, p1}, Landroid/database/CursorWrapper;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Le/a/k3/g;->b:I

    return-void
.end method


# virtual methods
.method public final b()Lcom/truecaller/data/entity/Contact;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k3/g;->a:Le/a/k3/j/d;

    .line 2
    invoke-virtual {v0, p0}, Le/a/k3/j/d;->g(Landroid/database/Cursor;)Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    .line 3
    iget-object v1, p0, Le/a/k3/g;->a:Le/a/k3/j/d;

    invoke-virtual {v1, p0, v0}, Le/a/k3/j/d;->f(Landroid/database/Cursor;Lcom/truecaller/data/entity/Contact;)Lcom/truecaller/data/entity/Entity;

    .line 4
    invoke-static {v0}, Le/a/m0/a1$k;->u0(Lcom/truecaller/data/entity/Contact;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Le/a/k3/g;->b:I

    invoke-virtual {p0, v0}, Landroid/database/CursorWrapper;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(matchedValueIndex)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
