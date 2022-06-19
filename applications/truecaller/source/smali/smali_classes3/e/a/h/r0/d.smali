.class public final Le/a/h/r0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/r0/c;


# instance fields
.field public final a:Le/a/e4/p;

.field public final b:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/e4/p;Le/a/p5/c0;)V
    .locals 1

    const-string v0, "multiSimManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/r0/d;->a:Le/a/e4/p;

    iput-object p2, p0, Le/a/h/r0/d;->b:Le/a/p5/c0;

    return-void
.end method


# virtual methods
.method public a(I)Le/a/h/e/l;
    .locals 14

    .line 1
    iget-object v0, p0, Le/a/h/r0/d;->a:Le/a/e4/p;

    invoke-interface {v0, p1}, Le/a/e4/p;->e(I)Lcom/truecaller/multisim/SimInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "multiSimManager.getSimIn\u2026ndex(slot) ?: return null"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const v2, 0x7f080694

    goto :goto_0

    :cond_0
    const v2, 0x7f080695

    .line 2
    :goto_0
    iget-object v3, p0, Le/a/h/r0/d;->b:Le/a/p5/c0;

    invoke-interface {v3, v2}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "resourceProvider.getDrawable(drawableRes)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v3, p0, Le/a/h/r0/d;->b:Le/a/p5/c0;

    const v4, 0x7f03002c

    invoke-interface {v3, v4}, Le/a/p5/c0;->i(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    .line 4
    iget-object v5, v0, Lcom/truecaller/multisim/SimInfo;->d:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    .line 5
    iget-object v7, v0, Lcom/truecaller/multisim/SimInfo;->c:Ljava/lang/String;

    aput-object v7, v4, v5

    const/4 v5, 0x2

    .line 6
    iget-boolean v0, v0, Lcom/truecaller/multisim/SimInfo;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/h/r0/d;->b:Le/a/p5/c0;

    const v1, 0x7f120aaa

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v0, v1, v6}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    aput-object v1, v4, v5

    .line 7
    invoke-static {v4}, Ls1/u/i;->V([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x3e

    const-string v7, ", "

    .line 8
    invoke-static/range {v6 .. v13}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Le/a/h/e/l$a;

    const-string v4, "title"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v3, v0, v2, p1}, Le/a/h/e/l$a;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;I)V

    :cond_2
    return-object v1
.end method
