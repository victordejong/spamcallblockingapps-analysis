.class public Le/p/b/n;
.super Le/p/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/p/b/a<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field public m:Le/p/b/e;


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/Picasso;Landroid/widget/ImageView;Le/p/b/x;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Le/p/b/e;Z)V
    .locals 11

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v10, p11

    .line 1
    invoke-direct/range {v0 .. v10}, Le/p/b/a;-><init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Le/p/b/x;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v1, p10

    .line 2
    iput-object v1, v0, Le/p/b/n;->m:Le/p/b/e;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/p/b/a;->l:Z

    .line 2
    iget-object v0, p0, Le/p/b/n;->m:Le/p/b/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/p/b/n;->m:Le/p/b/e;

    :cond_0
    return-void
.end method

.method public b(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$d;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/p/b/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/p/b/a;->a:Lcom/squareup/picasso/Picasso;

    iget-object v2, v0, Lcom/squareup/picasso/Picasso;->e:Landroid/content/Context;

    .line 3
    iget-boolean v6, v0, Lcom/squareup/picasso/Picasso;->m:Z

    .line 4
    iget-boolean v5, p0, Le/p/b/a;->d:Z

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Le/p/b/v;->b(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$d;ZZ)V

    .line 5
    iget-object p1, p0, Le/p/b/n;->m:Le/p/b/e;

    if-eqz p1, :cond_1

    .line 6
    check-cast p1, Le/i/b/r1/m;

    .line 7
    iget-object p1, p1, Le/i/b/r1/m;->a:Le/i/b/w1/a$a;

    invoke-virtual {p1}, Le/i/b/w1/a$a;->a()V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/p/b/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3
    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_1

    .line 4
    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 5
    :cond_1
    iget v1, p0, Le/p/b/a;->g:I

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, p0, Le/p/b/a;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p0, Le/p/b/n;->m:Le/p/b/e;

    if-eqz v0, :cond_4

    .line 10
    check-cast v0, Le/i/b/r1/m;

    const-string v1, "e"

    .line 11
    invoke-static {p1, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object p1, v0, Le/i/b/r1/m;->a:Le/i/b/w1/a$a;

    invoke-virtual {p1}, Le/i/b/w1/a$a;->a()V

    :cond_4
    return-void
.end method
