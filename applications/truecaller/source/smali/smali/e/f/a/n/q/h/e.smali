.class public Le/f/a/n/q/h/e;
.super Le/f/a/n/q/f/b;
.source "SourceFile"

# interfaces
.implements Le/f/a/n/o/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/f/a/n/q/f/b<",
        "Le/f/a/n/q/h/c;",
        ">;",
        "Le/f/a/n/o/s;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/f/a/n/q/h/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/f/a/n/q/f/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/a/n/q/f/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Le/f/a/n/q/h/c;

    .line 2
    iget-object v0, v0, Le/f/a/n/q/h/c;->a:Le/f/a/n/q/h/c$a;

    iget-object v0, v0, Le/f/a/n/q/h/c$a;->a:Le/f/a/n/q/h/g;

    .line 3
    iget-object v1, v0, Le/f/a/n/q/h/g;->a:Le/f/a/l/a;

    invoke-interface {v1}, Le/f/a/l/a;->b()I

    move-result v1

    iget v0, v0, Le/f/a/n/q/h/g;->o:I

    add-int/2addr v1, v0

    return v1
.end method

.method public b()V
    .locals 5

    .line 1
    iget-object v0, p0, Le/f/a/n/q/f/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Le/f/a/n/q/h/c;

    invoke-virtual {v0}, Le/f/a/n/q/h/c;->stop()V

    .line 2
    iget-object v0, p0, Le/f/a/n/q/f/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Le/f/a/n/q/h/c;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Le/f/a/n/q/h/c;->d:Z

    .line 4
    iget-object v0, v0, Le/f/a/n/q/h/c;->a:Le/f/a/n/q/h/c$a;

    iget-object v0, v0, Le/f/a/n/q/h/c$a;->a:Le/f/a/n/q/h/g;

    .line 5
    iget-object v2, v0, Le/f/a/n/q/h/g;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 6
    iget-object v2, v0, Le/f/a/n/q/h/g;->l:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 7
    iget-object v4, v0, Le/f/a/n/q/h/g;->e:Le/f/a/n/o/b0/d;

    invoke-interface {v4, v2}, Le/f/a/n/o/b0/d;->c(Landroid/graphics/Bitmap;)V

    .line 8
    iput-object v3, v0, Le/f/a/n/q/h/g;->l:Landroid/graphics/Bitmap;

    :cond_0
    const/4 v2, 0x0

    .line 9
    iput-boolean v2, v0, Le/f/a/n/q/h/g;->f:Z

    .line 10
    iget-object v2, v0, Le/f/a/n/q/h/g;->i:Le/f/a/n/q/h/g$a;

    if-eqz v2, :cond_1

    .line 11
    iget-object v4, v0, Le/f/a/n/q/h/g;->d:Le/f/a/i;

    invoke-virtual {v4, v2}, Le/f/a/i;->n(Le/f/a/r/k/k;)V

    .line 12
    iput-object v3, v0, Le/f/a/n/q/h/g;->i:Le/f/a/n/q/h/g$a;

    .line 13
    :cond_1
    iget-object v2, v0, Le/f/a/n/q/h/g;->k:Le/f/a/n/q/h/g$a;

    if-eqz v2, :cond_2

    .line 14
    iget-object v4, v0, Le/f/a/n/q/h/g;->d:Le/f/a/i;

    invoke-virtual {v4, v2}, Le/f/a/i;->n(Le/f/a/r/k/k;)V

    .line 15
    iput-object v3, v0, Le/f/a/n/q/h/g;->k:Le/f/a/n/q/h/g$a;

    .line 16
    :cond_2
    iget-object v2, v0, Le/f/a/n/q/h/g;->n:Le/f/a/n/q/h/g$a;

    if-eqz v2, :cond_3

    .line 17
    iget-object v4, v0, Le/f/a/n/q/h/g;->d:Le/f/a/i;

    invoke-virtual {v4, v2}, Le/f/a/i;->n(Le/f/a/r/k/k;)V

    .line 18
    iput-object v3, v0, Le/f/a/n/q/h/g;->n:Le/f/a/n/q/h/g$a;

    .line 19
    :cond_3
    iget-object v2, v0, Le/f/a/n/q/h/g;->a:Le/f/a/l/a;

    invoke-interface {v2}, Le/f/a/l/a;->clear()V

    .line 20
    iput-boolean v1, v0, Le/f/a/n/q/h/g;->j:Z

    return-void
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Le/f/a/n/q/h/c;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Le/f/a/n/q/h/c;

    return-object v0
.end method

.method public initialize()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/n/q/f/b;->a:Landroid/graphics/drawable/Drawable;

    check-cast v0, Le/f/a/n/q/h/c;

    invoke-virtual {v0}, Le/f/a/n/q/h/c;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    return-void
.end method
