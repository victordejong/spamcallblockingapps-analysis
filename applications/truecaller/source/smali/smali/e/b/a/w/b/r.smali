.class public Le/b/a/w/b/r;
.super Le/b/a/w/b/a;
.source "SourceFile"


# instance fields
.field public final o:Le/b/a/y/l/b;

.field public final p:Ljava/lang/String;

.field public final q:Z

.field public final r:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public s:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/b/a/k;Le/b/a/y/l/b;Le/b/a/y/k/p;)V
    .locals 11

    .line 1
    iget-object v0, p3, Le/b/a/y/k/p;->g:Le/b/a/y/k/p$a;

    .line 2
    invoke-virtual {v0}, Le/b/a/y/k/p$a;->a()Landroid/graphics/Paint$Cap;

    move-result-object v4

    .line 3
    iget-object v0, p3, Le/b/a/y/k/p;->h:Le/b/a/y/k/p$b;

    .line 4
    invoke-virtual {v0}, Le/b/a/y/k/p$b;->a()Landroid/graphics/Paint$Join;

    move-result-object v5

    .line 5
    iget v6, p3, Le/b/a/y/k/p;->i:F

    .line 6
    iget-object v7, p3, Le/b/a/y/k/p;->e:Le/b/a/y/j/d;

    .line 7
    iget-object v8, p3, Le/b/a/y/k/p;->f:Le/b/a/y/j/b;

    .line 8
    iget-object v9, p3, Le/b/a/y/k/p;->c:Ljava/util/List;

    .line 9
    iget-object v10, p3, Le/b/a/y/k/p;->b:Le/b/a/y/j/b;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 10
    invoke-direct/range {v1 .. v10}, Le/b/a/w/b/a;-><init>(Le/b/a/k;Le/b/a/y/l/b;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLe/b/a/y/j/d;Le/b/a/y/j/b;Ljava/util/List;Le/b/a/y/j/b;)V

    .line 11
    iput-object p2, p0, Le/b/a/w/b/r;->o:Le/b/a/y/l/b;

    .line 12
    iget-object p1, p3, Le/b/a/y/k/p;->a:Ljava/lang/String;

    .line 13
    iput-object p1, p0, Le/b/a/w/b/r;->p:Ljava/lang/String;

    .line 14
    iget-boolean p1, p3, Le/b/a/y/k/p;->j:Z

    .line 15
    iput-boolean p1, p0, Le/b/a/w/b/r;->q:Z

    .line 16
    iget-object p1, p3, Le/b/a/y/k/p;->d:Le/b/a/y/j/a;

    .line 17
    invoke-virtual {p1}, Le/b/a/y/j/a;->f()Le/b/a/w/c/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/w/b/r;->r:Le/b/a/w/c/a;

    .line 18
    iget-object p3, p1, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {p2, p1}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Le/b/a/w/b/r;->q:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/b/a/w/b/a;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Le/b/a/w/b/r;->r:Le/b/a/w/c/a;

    check-cast v1, Le/b/a/w/c/b;

    .line 3
    invoke-virtual {v1}, Le/b/a/w/c/a;->a()Le/b/a/c0/a;

    move-result-object v2

    invoke-virtual {v1}, Le/b/a/w/c/a;->c()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Le/b/a/w/c/b;->j(Le/b/a/c0/a;F)I

    move-result v1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Le/b/a/w/b/r;->s:Le/b/a/w/c/a;

    if-eqz v0, :cond_1

    .line 6
    iget-object v1, p0, Le/b/a/w/b/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v0}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorFilter;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 7
    :cond_1
    invoke-super {p0, p1, p2, p3}, Le/b/a/w/b/a;->c(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public f(Ljava/lang/Object;Le/b/a/c0/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Le/b/a/c0/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Le/b/a/w/b/a;->f(Ljava/lang/Object;Le/b/a/c0/c;)V

    .line 2
    sget-object v0, Le/b/a/o;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Le/b/a/w/b/r;->r:Le/b/a/w/c/a;

    .line 4
    iget-object v0, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    .line 5
    iput-object p2, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Le/b/a/o;->B:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    if-nez p2, :cond_1

    .line 7
    iput-object p1, p0, Le/b/a/w/b/r;->s:Le/b/a/w/c/a;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Le/b/a/w/c/p;

    .line 9
    invoke-direct {v0, p2, p1}, Le/b/a/w/c/p;-><init>(Le/b/a/c0/c;Ljava/lang/Object;)V

    .line 10
    iput-object v0, p0, Le/b/a/w/b/r;->s:Le/b/a/w/c/a;

    .line 11
    iget-object p1, v0, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object p1, p0, Le/b/a/w/b/r;->o:Le/b/a/y/l/b;

    iget-object p2, p0, Le/b/a/w/b/r;->r:Le/b/a/w/c/a;

    invoke-virtual {p1, p2}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/w/b/r;->p:Ljava/lang/String;

    return-object v0
.end method
