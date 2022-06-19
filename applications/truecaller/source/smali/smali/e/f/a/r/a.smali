.class public abstract Le/f/a/r/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Le/f/a/r/a<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:F

.field public c:Le/f/a/n/o/k;

.field public d:Le/f/a/f;

.field public e:Landroid/graphics/drawable/Drawable;

.field public f:I

.field public g:Landroid/graphics/drawable/Drawable;

.field public h:I

.field public i:Z

.field public j:I

.field public k:I

.field public l:Le/f/a/n/f;

.field public m:Z

.field public n:Z

.field public o:Landroid/graphics/drawable/Drawable;

.field public p:I

.field public q:Le/f/a/n/i;

.field public r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Le/f/a/n/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field public s:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public t:Z

.field public u:Landroid/content/res/Resources$Theme;

.field public v:Z

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Le/f/a/r/a;->b:F

    .line 3
    sget-object v0, Le/f/a/n/o/k;->d:Le/f/a/n/o/k;

    iput-object v0, p0, Le/f/a/r/a;->c:Le/f/a/n/o/k;

    .line 4
    sget-object v0, Le/f/a/f;->c:Le/f/a/f;

    iput-object v0, p0, Le/f/a/r/a;->d:Le/f/a/f;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Le/f/a/r/a;->i:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Le/f/a/r/a;->j:I

    .line 7
    iput v1, p0, Le/f/a/r/a;->k:I

    .line 8
    sget-object v1, Le/f/a/s/c;->b:Le/f/a/s/c;

    sget-object v1, Le/f/a/s/c;->b:Le/f/a/s/c;

    iput-object v1, p0, Le/f/a/r/a;->l:Le/f/a/n/f;

    .line 9
    iput-boolean v0, p0, Le/f/a/r/a;->n:Z

    .line 10
    new-instance v1, Le/f/a/n/i;

    invoke-direct {v1}, Le/f/a/n/i;-><init>()V

    iput-object v1, p0, Le/f/a/r/a;->q:Le/f/a/n/i;

    .line 11
    new-instance v1, Le/f/a/t/b;

    invoke-direct {v1}, Le/f/a/t/b;-><init>()V

    iput-object v1, p0, Le/f/a/r/a;->r:Ljava/util/Map;

    .line 12
    const-class v1, Ljava/lang/Object;

    iput-object v1, p0, Le/f/a/r/a;->s:Ljava/lang/Class;

    .line 13
    iput-boolean v0, p0, Le/f/a/r/a;->y:Z

    return-void
.end method

.method public static n(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public A(Z)Le/f/a/r/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/f/a/r/a;->v:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/f/a/r/a;->g()Le/f/a/r/a;

    move-result-object p1

    invoke-virtual {p1, v1}, Le/f/a/r/a;->A(Z)Le/f/a/r/a;

    move-result-object p1

    return-object p1

    :cond_0
    xor-int/2addr p1, v1

    .line 3
    iput-boolean p1, p0, Le/f/a/r/a;->i:Z

    .line 4
    iget p1, p0, Le/f/a/r/a;->a:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Le/f/a/r/a;->a:I

    .line 5
    invoke-virtual {p0}, Le/f/a/r/a;->x()Le/f/a/r/a;

    return-object p0
.end method

.method public B(Le/f/a/n/m;)Le/f/a/r/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/m<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Le/f/a/r/a;->C(Le/f/a/n/m;Z)Le/f/a/r/a;

    move-result-object p1

    return-object p1
.end method

.method public C(Le/f/a/n/m;Z)Le/f/a/r/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/m<",
            "Landroid/graphics/Bitmap;",
            ">;Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/f/a/r/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/f/a/r/a;->g()Le/f/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Le/f/a/r/a;->C(Le/f/a/n/m;Z)Le/f/a/r/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Le/f/a/n/q/d/p;

    invoke-direct {v0, p1, p2}, Le/f/a/n/q/d/p;-><init>(Le/f/a/n/m;Z)V

    .line 4
    const-class v1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v1, p1, p2}, Le/f/a/r/a;->E(Ljava/lang/Class;Le/f/a/n/m;Z)Le/f/a/r/a;

    .line 5
    const-class v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v0, p2}, Le/f/a/r/a;->E(Ljava/lang/Class;Le/f/a/n/m;Z)Le/f/a/r/a;

    .line 6
    const-class v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, v1, v0, p2}, Le/f/a/r/a;->E(Ljava/lang/Class;Le/f/a/n/m;Z)Le/f/a/r/a;

    .line 7
    const-class v0, Le/f/a/n/q/h/c;

    new-instance v1, Le/f/a/n/q/h/f;

    invoke-direct {v1, p1}, Le/f/a/n/q/h/f;-><init>(Le/f/a/n/m;)V

    invoke-virtual {p0, v0, v1, p2}, Le/f/a/r/a;->E(Ljava/lang/Class;Le/f/a/n/m;Z)Le/f/a/r/a;

    .line 8
    invoke-virtual {p0}, Le/f/a/r/a;->x()Le/f/a/r/a;

    return-object p0
.end method

.method public final D(Le/f/a/n/q/d/m;Le/f/a/n/m;)Le/f/a/r/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/q/d/m;",
            "Le/f/a/n/m<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/f/a/r/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/f/a/r/a;->g()Le/f/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Le/f/a/r/a;->D(Le/f/a/n/q/d/m;Le/f/a/n/m;)Le/f/a/r/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Le/f/a/r/a;->j(Le/f/a/n/q/d/m;)Le/f/a/r/a;

    .line 4
    invoke-virtual {p0, p2}, Le/f/a/r/a;->B(Le/f/a/n/m;)Le/f/a/r/a;

    move-result-object p1

    return-object p1
.end method

.method public E(Ljava/lang/Class;Le/f/a/n/m;Z)Le/f/a/r/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TY;>;",
            "Le/f/a/n/m<",
            "TY;>;Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/f/a/r/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/f/a/r/a;->g()Le/f/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Le/f/a/r/a;->E(Ljava/lang/Class;Le/f/a/n/m;Z)Le/f/a/r/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Le/f/a/r/a;->r:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget p1, p0, Le/f/a/r/a;->a:I

    or-int/lit16 p1, p1, 0x800

    iput p1, p0, Le/f/a/r/a;->a:I

    const/4 p2, 0x1

    .line 7
    iput-boolean p2, p0, Le/f/a/r/a;->n:Z

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Le/f/a/r/a;->a:I

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Le/f/a/r/a;->y:Z

    if-eqz p3, :cond_1

    const/high16 p3, 0x20000

    or-int/2addr p1, p3

    .line 10
    iput p1, p0, Le/f/a/r/a;->a:I

    .line 11
    iput-boolean p2, p0, Le/f/a/r/a;->m:Z

    .line 12
    :cond_1
    invoke-virtual {p0}, Le/f/a/r/a;->x()Le/f/a/r/a;

    return-object p0
.end method

.method public varargs F([Le/f/a/n/m;)Le/f/a/r/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Le/f/a/n/m<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    new-instance v0, Le/f/a/n/g;

    invoke-direct {v0, p1}, Le/f/a/n/g;-><init>([Le/f/a/n/m;)V

    invoke-virtual {p0, v0, v1}, Le/f/a/r/a;->C(Le/f/a/n/m;Z)Le/f/a/r/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    array-length v0, p1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 4
    aget-object p1, p1, v0

    invoke-virtual {p0, p1}, Le/f/a/r/a;->B(Le/f/a/n/m;)Le/f/a/r/a;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0}, Le/f/a/r/a;->x()Le/f/a/r/a;

    return-object p0
.end method

.method public G(Z)Le/f/a/r/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/f/a/r/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/f/a/r/a;->g()Le/f/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/r/a;->G(Z)Le/f/a/r/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-boolean p1, p0, Le/f/a/r/a;->z:Z

    .line 4
    iget p1, p0, Le/f/a/r/a;->a:I

    const/high16 v0, 0x100000

    or-int/2addr p1, v0

    iput p1, p0, Le/f/a/r/a;->a:I

    .line 5
    invoke-virtual {p0}, Le/f/a/r/a;->x()Le/f/a/r/a;

    return-object p0
.end method

.method public a(Le/f/a/r/a;)Le/f/a/r/a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/r/a<",
            "*>;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/f/a/r/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/f/a/r/a;->g()Le/f/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/r/a;->a(Le/f/a/r/a;)Le/f/a/r/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget v0, p1, Le/f/a/r/a;->a:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Le/f/a/r/a;->n(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget v0, p1, Le/f/a/r/a;->b:F

    iput v0, p0, Le/f/a/r/a;->b:F

    .line 5
    :cond_1
    iget v0, p1, Le/f/a/r/a;->a:I

    const/high16 v1, 0x40000

    invoke-static {v0, v1}, Le/f/a/r/a;->n(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p1, Le/f/a/r/a;->w:Z

    iput-boolean v0, p0, Le/f/a/r/a;->w:Z

    .line 7
    :cond_2
    iget v0, p1, Le/f/a/r/a;->a:I

    const/high16 v1, 0x100000

    invoke-static {v0, v1}, Le/f/a/r/a;->n(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-boolean v0, p1, Le/f/a/r/a;->z:Z

    iput-boolean v0, p0, Le/f/a/r/a;->z:Z

    .line 9
    :cond_3
    iget v0, p1, Le/f/a/r/a;->a:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Le/f/a/r/a;->n(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p1, Le/f/a/r/a;->c:Le/f/a/n/o/k;

    iput-object v0, p0, Le/f/a/r/a;->c:Le/f/a/n/o/k;

    .line 11
    :cond_4
    iget v0, p1, Le/f/a/r/a;->a:I

    const/16 v1, 0x8

    invoke-static {v0, v1}, Le/f/a/r/a;->n(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p1, Le/f/a/r/a;->d:Le/f/a/f;

    iput-object v0, p0, Le/f/a/r/a;->d:Le/f/a/f;

    .line 13
    :cond_5
    iget v0, p1, Le/f/a/r/a;->a:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Le/f/a/r/a;->n(II)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, p1, Le/f/a/r/a;->e:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Le/f/a/r/a;->e:Landroid/graphics/drawable/Drawable;

    .line 15
    iput v1, p0, Le/f/a/r/a;->f:I

    .line 16
    iget v0, p0, Le/f/a/r/a;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Le/f/a/r/a;->a:I

    .line 17
    :cond_6
    iget v0, p1, Le/f/a/r/a;->a:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Le/f/a/r/a;->n(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 18
    iget v0, p1, Le/f/a/r/a;->f:I

    iput v0, p0, Le/f/a/r/a;->f:I

    .line 19
    iput-object v2, p0, Le/f/a/r/a;->e:Landroid/graphics/drawable/Drawable;

    .line 20
    iget v0, p0, Le/f/a/r/a;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Le/f/a/r/a;->a:I

    .line 21
    :cond_7
    iget v0, p1, Le/f/a/r/a;->a:I

    const/16 v3, 0x40

    invoke-static {v0, v3}, Le/f/a/r/a;->n(II)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 22
    iget-object v0, p1, Le/f/a/r/a;->g:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Le/f/a/r/a;->g:Landroid/graphics/drawable/Drawable;

    .line 23
    iput v1, p0, Le/f/a/r/a;->h:I

    .line 24
    iget v0, p0, Le/f/a/r/a;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Le/f/a/r/a;->a:I

    .line 25
    :cond_8
    iget v0, p1, Le/f/a/r/a;->a:I

    const/16 v3, 0x80

    invoke-static {v0, v3}, Le/f/a/r/a;->n(II)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 26
    iget v0, p1, Le/f/a/r/a;->h:I

    iput v0, p0, Le/f/a/r/a;->h:I

    .line 27
    iput-object v2, p0, Le/f/a/r/a;->g:Landroid/graphics/drawable/Drawable;

    .line 28
    iget v0, p0, Le/f/a/r/a;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Le/f/a/r/a;->a:I

    .line 29
    :cond_9
    iget v0, p1, Le/f/a/r/a;->a:I

    const/16 v3, 0x100

    invoke-static {v0, v3}, Le/f/a/r/a;->n(II)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 30
    iget-boolean v0, p1, Le/f/a/r/a;->i:Z

    iput-boolean v0, p0, Le/f/a/r/a;->i:Z

    .line 31
    :cond_a
    iget v0, p1, Le/f/a/r/a;->a:I

    const/16 v3, 0x200

    invoke-static {v0, v3}, Le/f/a/r/a;->n(II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 32
    iget v0, p1, Le/f/a/r/a;->k:I

    iput v0, p0, Le/f/a/r/a;->k:I

    .line 33
    iget v0, p1, Le/f/a/r/a;->j:I

    iput v0, p0, Le/f/a/r/a;->j:I

    .line 34
    :cond_b
    iget v0, p1, Le/f/a/r/a;->a:I

    const/16 v3, 0x400

    invoke-static {v0, v3}, Le/f/a/r/a;->n(II)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 35
    iget-object v0, p1, Le/f/a/r/a;->l:Le/f/a/n/f;

    iput-object v0, p0, Le/f/a/r/a;->l:Le/f/a/n/f;

    .line 36
    :cond_c
    iget v0, p1, Le/f/a/r/a;->a:I

    const/16 v3, 0x1000

    invoke-static {v0, v3}, Le/f/a/r/a;->n(II)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 37
    iget-object v0, p1, Le/f/a/r/a;->s:Ljava/lang/Class;

    iput-object v0, p0, Le/f/a/r/a;->s:Ljava/lang/Class;

    .line 38
    :cond_d
    iget v0, p1, Le/f/a/r/a;->a:I

    const/16 v3, 0x2000

    invoke-static {v0, v3}, Le/f/a/r/a;->n(II)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 39
    iget-object v0, p1, Le/f/a/r/a;->o:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Le/f/a/r/a;->o:Landroid/graphics/drawable/Drawable;

    .line 40
    iput v1, p0, Le/f/a/r/a;->p:I

    .line 41
    iget v0, p0, Le/f/a/r/a;->a:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Le/f/a/r/a;->a:I

    .line 42
    :cond_e
    iget v0, p1, Le/f/a/r/a;->a:I

    const/16 v3, 0x4000

    invoke-static {v0, v3}, Le/f/a/r/a;->n(II)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 43
    iget v0, p1, Le/f/a/r/a;->p:I

    iput v0, p0, Le/f/a/r/a;->p:I

    .line 44
    iput-object v2, p0, Le/f/a/r/a;->o:Landroid/graphics/drawable/Drawable;

    .line 45
    iget v0, p0, Le/f/a/r/a;->a:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Le/f/a/r/a;->a:I

    .line 46
    :cond_f
    iget v0, p1, Le/f/a/r/a;->a:I

    const v2, 0x8000

    invoke-static {v0, v2}, Le/f/a/r/a;->n(II)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 47
    iget-object v0, p1, Le/f/a/r/a;->u:Landroid/content/res/Resources$Theme;

    iput-object v0, p0, Le/f/a/r/a;->u:Landroid/content/res/Resources$Theme;

    .line 48
    :cond_10
    iget v0, p1, Le/f/a/r/a;->a:I

    const/high16 v2, 0x10000

    invoke-static {v0, v2}, Le/f/a/r/a;->n(II)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 49
    iget-boolean v0, p1, Le/f/a/r/a;->n:Z

    iput-boolean v0, p0, Le/f/a/r/a;->n:Z

    .line 50
    :cond_11
    iget v0, p1, Le/f/a/r/a;->a:I

    const/high16 v2, 0x20000

    invoke-static {v0, v2}, Le/f/a/r/a;->n(II)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 51
    iget-boolean v0, p1, Le/f/a/r/a;->m:Z

    iput-boolean v0, p0, Le/f/a/r/a;->m:Z

    .line 52
    :cond_12
    iget v0, p1, Le/f/a/r/a;->a:I

    const/16 v2, 0x800

    invoke-static {v0, v2}, Le/f/a/r/a;->n(II)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 53
    iget-object v0, p0, Le/f/a/r/a;->r:Ljava/util/Map;

    iget-object v2, p1, Le/f/a/r/a;->r:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 54
    iget-boolean v0, p1, Le/f/a/r/a;->y:Z

    iput-boolean v0, p0, Le/f/a/r/a;->y:Z

    .line 55
    :cond_13
    iget v0, p1, Le/f/a/r/a;->a:I

    const/high16 v2, 0x80000

    invoke-static {v0, v2}, Le/f/a/r/a;->n(II)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 56
    iget-boolean v0, p1, Le/f/a/r/a;->x:Z

    iput-boolean v0, p0, Le/f/a/r/a;->x:Z

    .line 57
    :cond_14
    iget-boolean v0, p0, Le/f/a/r/a;->n:Z

    if-nez v0, :cond_15

    .line 58
    iget-object v0, p0, Le/f/a/r/a;->r:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 59
    iget v0, p0, Le/f/a/r/a;->a:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Le/f/a/r/a;->a:I

    .line 60
    iput-boolean v1, p0, Le/f/a/r/a;->m:Z

    const v1, -0x20001

    and-int/2addr v0, v1

    .line 61
    iput v0, p0, Le/f/a/r/a;->a:I

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Le/f/a/r/a;->y:Z

    .line 63
    :cond_15
    iget v0, p0, Le/f/a/r/a;->a:I

    iget v1, p1, Le/f/a/r/a;->a:I

    or-int/2addr v0, v1

    iput v0, p0, Le/f/a/r/a;->a:I

    .line 64
    iget-object v0, p0, Le/f/a/r/a;->q:Le/f/a/n/i;

    iget-object p1, p1, Le/f/a/r/a;->q:Le/f/a/n/i;

    invoke-virtual {v0, p1}, Le/f/a/n/i;->d(Le/f/a/n/i;)V

    .line 65
    invoke-virtual {p0}, Le/f/a/r/a;->x()Le/f/a/r/a;

    return-object p0
.end method

.method public b()Le/f/a/r/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/f/a/r/a;->t:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Le/f/a/r/a;->v:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot auto lock an already locked options object, try clone() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le/f/a/r/a;->v:Z

    .line 4
    invoke-virtual {p0}, Le/f/a/r/a;->o()Le/f/a/r/a;

    move-result-object v0

    return-object v0
.end method

.method public c()Le/f/a/r/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/f/a/n/q/d/m;->d:Le/f/a/n/q/d/m;

    new-instance v1, Le/f/a/n/q/d/i;

    invoke-direct {v1}, Le/f/a/n/q/d/i;-><init>()V

    invoke-virtual {p0, v0, v1}, Le/f/a/r/a;->D(Le/f/a/n/q/d/m;Le/f/a/n/m;)Le/f/a/r/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Le/f/a/r/a;->g()Le/f/a/r/a;

    move-result-object v0

    return-object v0
.end method

.method public e()Le/f/a/r/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/f/a/n/q/d/m;->c:Le/f/a/n/q/d/m;

    new-instance v1, Le/f/a/n/q/d/j;

    invoke-direct {v1}, Le/f/a/n/q/d/j;-><init>()V

    .line 2
    invoke-virtual {p0, v0, v1}, Le/f/a/r/a;->D(Le/f/a/n/q/d/m;Le/f/a/n/m;)Le/f/a/r/a;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Le/f/a/r/a;->y:Z

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Le/f/a/r/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Le/f/a/r/a;

    .line 3
    iget v0, p1, Le/f/a/r/a;->b:F

    iget v2, p0, Le/f/a/r/a;->b:F

    invoke-static {v0, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Le/f/a/r/a;->f:I

    iget v2, p1, Le/f/a/r/a;->f:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Le/f/a/r/a;->e:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Le/f/a/r/a;->e:Landroid/graphics/drawable/Drawable;

    .line 4
    invoke-static {v0, v2}, Le/f/a/t/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Le/f/a/r/a;->h:I

    iget v2, p1, Le/f/a/r/a;->h:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Le/f/a/r/a;->g:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Le/f/a/r/a;->g:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-static {v0, v2}, Le/f/a/t/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Le/f/a/r/a;->p:I

    iget v2, p1, Le/f/a/r/a;->p:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Le/f/a/r/a;->o:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Le/f/a/r/a;->o:Landroid/graphics/drawable/Drawable;

    .line 6
    invoke-static {v0, v2}, Le/f/a/t/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Le/f/a/r/a;->i:Z

    iget-boolean v2, p1, Le/f/a/r/a;->i:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Le/f/a/r/a;->j:I

    iget v2, p1, Le/f/a/r/a;->j:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Le/f/a/r/a;->k:I

    iget v2, p1, Le/f/a/r/a;->k:I

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Le/f/a/r/a;->m:Z

    iget-boolean v2, p1, Le/f/a/r/a;->m:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Le/f/a/r/a;->n:Z

    iget-boolean v2, p1, Le/f/a/r/a;->n:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Le/f/a/r/a;->w:Z

    iget-boolean v2, p1, Le/f/a/r/a;->w:Z

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Le/f/a/r/a;->x:Z

    iget-boolean v2, p1, Le/f/a/r/a;->x:Z

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Le/f/a/r/a;->c:Le/f/a/n/o/k;

    iget-object v2, p1, Le/f/a/r/a;->c:Le/f/a/n/o/k;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/f/a/r/a;->d:Le/f/a/f;

    iget-object v2, p1, Le/f/a/r/a;->d:Le/f/a/f;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Le/f/a/r/a;->q:Le/f/a/n/i;

    iget-object v2, p1, Le/f/a/r/a;->q:Le/f/a/n/i;

    .line 8
    invoke-virtual {v0, v2}, Le/f/a/n/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/f/a/r/a;->r:Ljava/util/Map;

    iget-object v2, p1, Le/f/a/r/a;->r:Ljava/util/Map;

    .line 9
    invoke-interface {v0, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/f/a/r/a;->s:Ljava/lang/Class;

    iget-object v2, p1, Le/f/a/r/a;->s:Ljava/lang/Class;

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/f/a/r/a;->l:Le/f/a/n/f;

    iget-object v2, p1, Le/f/a/r/a;->l:Le/f/a/n/f;

    .line 11
    invoke-static {v0, v2}, Le/f/a/t/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/f/a/r/a;->u:Landroid/content/res/Resources$Theme;

    iget-object p1, p1, Le/f/a/r/a;->u:Landroid/content/res/Resources$Theme;

    .line 12
    invoke-static {v0, p1}, Le/f/a/t/j;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public f()Le/f/a/r/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/f/a/n/q/d/m;->c:Le/f/a/n/q/d/m;

    new-instance v1, Le/f/a/n/q/d/k;

    invoke-direct {v1}, Le/f/a/n/q/d/k;-><init>()V

    invoke-virtual {p0, v0, v1}, Le/f/a/r/a;->D(Le/f/a/n/q/d/m;Le/f/a/n/m;)Le/f/a/r/a;

    move-result-object v0

    return-object v0
.end method

.method public g()Le/f/a/r/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/f/a/r/a;

    .line 2
    new-instance v1, Le/f/a/n/i;

    invoke-direct {v1}, Le/f/a/n/i;-><init>()V

    iput-object v1, v0, Le/f/a/r/a;->q:Le/f/a/n/i;

    .line 3
    iget-object v2, p0, Le/f/a/r/a;->q:Le/f/a/n/i;

    invoke-virtual {v1, v2}, Le/f/a/n/i;->d(Le/f/a/n/i;)V

    .line 4
    new-instance v1, Le/f/a/t/b;

    invoke-direct {v1}, Le/f/a/t/b;-><init>()V

    iput-object v1, v0, Le/f/a/r/a;->r:Ljava/util/Map;

    .line 5
    iget-object v2, p0, Le/f/a/r/a;->r:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, v0, Le/f/a/r/a;->t:Z

    .line 7
    iput-boolean v1, v0, Le/f/a/r/a;->v:Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public h(Ljava/lang/Class;)Le/f/a/r/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/f/a/r/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/f/a/r/a;->g()Le/f/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/r/a;->h(Ljava/lang/Class;)Le/f/a/r/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Le/f/a/r/a;->s:Ljava/lang/Class;

    .line 5
    iget p1, p0, Le/f/a/r/a;->a:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Le/f/a/r/a;->a:I

    .line 6
    invoke-virtual {p0}, Le/f/a/r/a;->x()Le/f/a/r/a;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Le/f/a/r/a;->b:F

    const/16 v1, 0x11

    .line 2
    invoke-static {v0, v1}, Le/f/a/t/j;->f(FI)I

    move-result v0

    .line 3
    iget v1, p0, Le/f/a/r/a;->f:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Le/f/a/r/a;->e:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Le/f/a/t/j;->g(Ljava/lang/Object;I)I

    move-result v0

    .line 5
    iget v1, p0, Le/f/a/r/a;->h:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Le/f/a/r/a;->g:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Le/f/a/t/j;->g(Ljava/lang/Object;I)I

    move-result v0

    .line 7
    iget v1, p0, Le/f/a/r/a;->p:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 8
    iget-object v1, p0, Le/f/a/r/a;->o:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Le/f/a/t/j;->g(Ljava/lang/Object;I)I

    move-result v0

    .line 9
    iget-boolean v1, p0, Le/f/a/r/a;->i:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 10
    iget v1, p0, Le/f/a/r/a;->j:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 11
    iget v1, p0, Le/f/a/r/a;->k:I

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 12
    iget-boolean v1, p0, Le/f/a/r/a;->m:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 13
    iget-boolean v1, p0, Le/f/a/r/a;->n:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 14
    iget-boolean v1, p0, Le/f/a/r/a;->w:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 15
    iget-boolean v1, p0, Le/f/a/r/a;->x:Z

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    .line 16
    iget-object v1, p0, Le/f/a/r/a;->c:Le/f/a/n/o/k;

    invoke-static {v1, v0}, Le/f/a/t/j;->g(Ljava/lang/Object;I)I

    move-result v0

    .line 17
    iget-object v1, p0, Le/f/a/r/a;->d:Le/f/a/f;

    invoke-static {v1, v0}, Le/f/a/t/j;->g(Ljava/lang/Object;I)I

    move-result v0

    .line 18
    iget-object v1, p0, Le/f/a/r/a;->q:Le/f/a/n/i;

    invoke-static {v1, v0}, Le/f/a/t/j;->g(Ljava/lang/Object;I)I

    move-result v0

    .line 19
    iget-object v1, p0, Le/f/a/r/a;->r:Ljava/util/Map;

    invoke-static {v1, v0}, Le/f/a/t/j;->g(Ljava/lang/Object;I)I

    move-result v0

    .line 20
    iget-object v1, p0, Le/f/a/r/a;->s:Ljava/lang/Class;

    invoke-static {v1, v0}, Le/f/a/t/j;->g(Ljava/lang/Object;I)I

    move-result v0

    .line 21
    iget-object v1, p0, Le/f/a/r/a;->l:Le/f/a/n/f;

    invoke-static {v1, v0}, Le/f/a/t/j;->g(Ljava/lang/Object;I)I

    move-result v0

    .line 22
    iget-object v1, p0, Le/f/a/r/a;->u:Landroid/content/res/Resources$Theme;

    invoke-static {v1, v0}, Le/f/a/t/j;->g(Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method public i(Le/f/a/n/o/k;)Le/f/a/r/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/k;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/f/a/r/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/f/a/r/a;->g()Le/f/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/r/a;->i(Le/f/a/n/o/k;)Le/f/a/r/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Le/f/a/r/a;->c:Le/f/a/n/o/k;

    .line 5
    iget p1, p0, Le/f/a/r/a;->a:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Le/f/a/r/a;->a:I

    .line 6
    invoke-virtual {p0}, Le/f/a/r/a;->x()Le/f/a/r/a;

    return-object p0
.end method

.method public j(Le/f/a/n/q/d/m;)Le/f/a/r/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/q/d/m;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/f/a/n/q/d/m;->g:Le/f/a/n/h;

    const-string v1, "Argument must not be null"

    .line 2
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v0, p1}, Le/f/a/r/a;->y(Le/f/a/n/h;Ljava/lang/Object;)Le/f/a/r/a;

    move-result-object p1

    return-object p1
.end method

.method public k(I)Le/f/a/r/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/f/a/r/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/f/a/r/a;->g()Le/f/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/r/a;->k(I)Le/f/a/r/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput p1, p0, Le/f/a/r/a;->f:I

    .line 4
    iget p1, p0, Le/f/a/r/a;->a:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Le/f/a/r/a;->a:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Le/f/a/r/a;->e:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x11

    .line 6
    iput p1, p0, Le/f/a/r/a;->a:I

    .line 7
    invoke-virtual {p0}, Le/f/a/r/a;->x()Le/f/a/r/a;

    return-object p0
.end method

.method public l(Landroid/graphics/drawable/Drawable;)Le/f/a/r/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/f/a/r/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/f/a/r/a;->g()Le/f/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/r/a;->l(Landroid/graphics/drawable/Drawable;)Le/f/a/r/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-object p1, p0, Le/f/a/r/a;->e:Landroid/graphics/drawable/Drawable;

    .line 4
    iget p1, p0, Le/f/a/r/a;->a:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Le/f/a/r/a;->a:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Le/f/a/r/a;->f:I

    and-int/lit8 p1, p1, -0x21

    .line 6
    iput p1, p0, Le/f/a/r/a;->a:I

    .line 7
    invoke-virtual {p0}, Le/f/a/r/a;->x()Le/f/a/r/a;

    return-object p0
.end method

.method public m()Le/f/a/r/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/f/a/n/q/d/m;->b:Le/f/a/n/q/d/m;

    new-instance v1, Le/f/a/n/q/d/r;

    invoke-direct {v1}, Le/f/a/n/q/d/r;-><init>()V

    .line 2
    invoke-virtual {p0, v0, v1}, Le/f/a/r/a;->D(Le/f/a/n/q/d/m;Le/f/a/n/m;)Le/f/a/r/a;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Le/f/a/r/a;->y:Z

    return-object v0
.end method

.method public o()Le/f/a/r/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/f/a/r/a;->t:Z

    return-object p0
.end method

.method public p()Le/f/a/r/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/f/a/n/q/d/m;->d:Le/f/a/n/q/d/m;

    new-instance v1, Le/f/a/n/q/d/i;

    invoke-direct {v1}, Le/f/a/n/q/d/i;-><init>()V

    invoke-virtual {p0, v0, v1}, Le/f/a/r/a;->s(Le/f/a/n/q/d/m;Le/f/a/n/m;)Le/f/a/r/a;

    move-result-object v0

    return-object v0
.end method

.method public q()Le/f/a/r/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/f/a/n/q/d/m;->c:Le/f/a/n/q/d/m;

    new-instance v1, Le/f/a/n/q/d/j;

    invoke-direct {v1}, Le/f/a/n/q/d/j;-><init>()V

    .line 2
    invoke-virtual {p0, v0, v1}, Le/f/a/r/a;->s(Le/f/a/n/q/d/m;Le/f/a/n/m;)Le/f/a/r/a;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Le/f/a/r/a;->y:Z

    return-object v0
.end method

.method public r()Le/f/a/r/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Le/f/a/n/q/d/m;->b:Le/f/a/n/q/d/m;

    new-instance v1, Le/f/a/n/q/d/r;

    invoke-direct {v1}, Le/f/a/n/q/d/r;-><init>()V

    .line 2
    invoke-virtual {p0, v0, v1}, Le/f/a/r/a;->s(Le/f/a/n/q/d/m;Le/f/a/n/m;)Le/f/a/r/a;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Le/f/a/r/a;->y:Z

    return-object v0
.end method

.method public final s(Le/f/a/n/q/d/m;Le/f/a/n/m;)Le/f/a/r/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/q/d/m;",
            "Le/f/a/n/m<",
            "Landroid/graphics/Bitmap;",
            ">;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/f/a/r/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/f/a/r/a;->g()Le/f/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Le/f/a/r/a;->s(Le/f/a/n/q/d/m;Le/f/a/n/m;)Le/f/a/r/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Le/f/a/r/a;->j(Le/f/a/n/q/d/m;)Le/f/a/r/a;

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p2, p1}, Le/f/a/r/a;->C(Le/f/a/n/m;Z)Le/f/a/r/a;

    move-result-object p1

    return-object p1
.end method

.method public t(II)Le/f/a/r/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/f/a/r/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/f/a/r/a;->g()Le/f/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Le/f/a/r/a;->t(II)Le/f/a/r/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput p1, p0, Le/f/a/r/a;->k:I

    .line 4
    iput p2, p0, Le/f/a/r/a;->j:I

    .line 5
    iget p1, p0, Le/f/a/r/a;->a:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Le/f/a/r/a;->a:I

    .line 6
    invoke-virtual {p0}, Le/f/a/r/a;->x()Le/f/a/r/a;

    return-object p0
.end method

.method public u(I)Le/f/a/r/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/f/a/r/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/f/a/r/a;->g()Le/f/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/r/a;->u(I)Le/f/a/r/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput p1, p0, Le/f/a/r/a;->h:I

    .line 4
    iget p1, p0, Le/f/a/r/a;->a:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Le/f/a/r/a;->a:I

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Le/f/a/r/a;->g:Landroid/graphics/drawable/Drawable;

    and-int/lit8 p1, p1, -0x41

    .line 6
    iput p1, p0, Le/f/a/r/a;->a:I

    .line 7
    invoke-virtual {p0}, Le/f/a/r/a;->x()Le/f/a/r/a;

    return-object p0
.end method

.method public v(Landroid/graphics/drawable/Drawable;)Le/f/a/r/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/f/a/r/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/f/a/r/a;->g()Le/f/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/r/a;->v(Landroid/graphics/drawable/Drawable;)Le/f/a/r/a;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iput-object p1, p0, Le/f/a/r/a;->g:Landroid/graphics/drawable/Drawable;

    .line 4
    iget p1, p0, Le/f/a/r/a;->a:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Le/f/a/r/a;->a:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Le/f/a/r/a;->h:I

    and-int/lit16 p1, p1, -0x81

    .line 6
    iput p1, p0, Le/f/a/r/a;->a:I

    .line 7
    invoke-virtual {p0}, Le/f/a/r/a;->x()Le/f/a/r/a;

    return-object p0
.end method

.method public w(Le/f/a/f;)Le/f/a/r/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/f;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/f/a/r/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/f/a/r/a;->g()Le/f/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/r/a;->w(Le/f/a/f;)Le/f/a/r/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Le/f/a/r/a;->d:Le/f/a/f;

    .line 5
    iget p1, p0, Le/f/a/r/a;->a:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Le/f/a/r/a;->a:I

    .line 6
    invoke-virtual {p0}, Le/f/a/r/a;->x()Le/f/a/r/a;

    return-object p0
.end method

.method public final x()Le/f/a/r/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/f/a/r/a;->t:Z

    if-nez v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot modify locked T, consider clone()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public y(Le/f/a/n/h;Ljava/lang/Object;)Le/f/a/r/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y:",
            "Ljava/lang/Object;",
            ">(",
            "Le/f/a/n/h<",
            "TY;>;TY;)TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/f/a/r/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/f/a/r/a;->g()Le/f/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Le/f/a/r/a;->y(Le/f/a/n/h;Ljava/lang/Object;)Le/f/a/r/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Le/f/a/r/a;->q:Le/f/a/n/i;

    .line 6
    iget-object v0, v0, Le/f/a/n/i;->b:Ln3/g/a;

    invoke-virtual {v0, p1, p2}, Ln3/g/h;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Le/f/a/r/a;->x()Le/f/a/r/a;

    return-object p0
.end method

.method public z(Le/f/a/n/f;)Le/f/a/r/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/f;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/f/a/r/a;->v:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Le/f/a/r/a;->g()Le/f/a/r/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/f/a/r/a;->z(Le/f/a/n/f;)Le/f/a/r/a;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "Argument must not be null"

    .line 3
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    iput-object p1, p0, Le/f/a/r/a;->l:Le/f/a/n/f;

    .line 5
    iget p1, p0, Le/f/a/r/a;->a:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Le/f/a/r/a;->a:I

    .line 6
    invoke-virtual {p0}, Le/f/a/r/a;->x()Le/f/a/r/a;

    return-object p0
.end method
