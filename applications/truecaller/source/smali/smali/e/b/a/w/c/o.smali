.class public Le/b/a/w/c/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/graphics/Matrix;

.field public final b:Landroid/graphics/Matrix;

.field public final c:Landroid/graphics/Matrix;

.field public final d:Landroid/graphics/Matrix;

.field public final e:[F

.field public f:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public g:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public h:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Le/b/a/c0/d;",
            "Le/b/a/c0/d;",
            ">;"
        }
    .end annotation
.end field

.field public i:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public j:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public k:Le/b/a/w/c/c;

.field public l:Le/b/a/w/c/c;

.field public m:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public n:Le/b/a/w/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/b/a/w/c/a<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/b/a/y/j/l;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Le/b/a/w/c/o;->a:Landroid/graphics/Matrix;

    .line 3
    iget-object v0, p1, Le/b/a/y/j/l;->a:Le/b/a/y/j/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Le/b/a/y/j/e;->f()Le/b/a/w/c/a;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Le/b/a/w/c/o;->f:Le/b/a/w/c/a;

    .line 5
    iget-object v0, p1, Le/b/a/y/j/l;->b:Le/b/a/y/j/m;

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 6
    :cond_1
    invoke-interface {v0}, Le/b/a/y/j/m;->f()Le/b/a/w/c/a;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Le/b/a/w/c/o;->g:Le/b/a/w/c/a;

    .line 7
    iget-object v0, p1, Le/b/a/y/j/l;->c:Le/b/a/y/j/g;

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_2

    .line 8
    :cond_2
    invoke-virtual {v0}, Le/b/a/y/j/g;->f()Le/b/a/w/c/a;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Le/b/a/w/c/o;->h:Le/b/a/w/c/a;

    .line 9
    iget-object v0, p1, Le/b/a/y/j/l;->d:Le/b/a/y/j/b;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_3

    .line 10
    :cond_3
    invoke-virtual {v0}, Le/b/a/y/j/b;->f()Le/b/a/w/c/a;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Le/b/a/w/c/o;->i:Le/b/a/w/c/a;

    .line 11
    iget-object v0, p1, Le/b/a/y/j/l;->f:Le/b/a/y/j/b;

    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_4

    .line 12
    :cond_4
    invoke-virtual {v0}, Le/b/a/y/j/b;->f()Le/b/a/w/c/a;

    move-result-object v0

    check-cast v0, Le/b/a/w/c/c;

    :goto_4
    iput-object v0, p0, Le/b/a/w/c/o;->k:Le/b/a/w/c/c;

    if-eqz v0, :cond_5

    .line 13
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Le/b/a/w/c/o;->b:Landroid/graphics/Matrix;

    .line 14
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Le/b/a/w/c/o;->c:Landroid/graphics/Matrix;

    .line 15
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Le/b/a/w/c/o;->d:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 16
    iput-object v0, p0, Le/b/a/w/c/o;->e:[F

    goto :goto_5

    .line 17
    :cond_5
    iput-object v1, p0, Le/b/a/w/c/o;->b:Landroid/graphics/Matrix;

    .line 18
    iput-object v1, p0, Le/b/a/w/c/o;->c:Landroid/graphics/Matrix;

    .line 19
    iput-object v1, p0, Le/b/a/w/c/o;->d:Landroid/graphics/Matrix;

    .line 20
    iput-object v1, p0, Le/b/a/w/c/o;->e:[F

    .line 21
    :goto_5
    iget-object v0, p1, Le/b/a/y/j/l;->g:Le/b/a/y/j/b;

    if-nez v0, :cond_6

    move-object v0, v1

    goto :goto_6

    .line 22
    :cond_6
    invoke-virtual {v0}, Le/b/a/y/j/b;->f()Le/b/a/w/c/a;

    move-result-object v0

    check-cast v0, Le/b/a/w/c/c;

    :goto_6
    iput-object v0, p0, Le/b/a/w/c/o;->l:Le/b/a/w/c/c;

    .line 23
    iget-object v0, p1, Le/b/a/y/j/l;->e:Le/b/a/y/j/d;

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {v0}, Le/b/a/y/j/d;->f()Le/b/a/w/c/a;

    move-result-object v0

    iput-object v0, p0, Le/b/a/w/c/o;->j:Le/b/a/w/c/a;

    .line 25
    :cond_7
    iget-object v0, p1, Le/b/a/y/j/l;->h:Le/b/a/y/j/b;

    if-eqz v0, :cond_8

    .line 26
    invoke-virtual {v0}, Le/b/a/y/j/b;->f()Le/b/a/w/c/a;

    move-result-object v0

    iput-object v0, p0, Le/b/a/w/c/o;->m:Le/b/a/w/c/a;

    goto :goto_7

    .line 27
    :cond_8
    iput-object v1, p0, Le/b/a/w/c/o;->m:Le/b/a/w/c/a;

    .line 28
    :goto_7
    iget-object p1, p1, Le/b/a/y/j/l;->i:Le/b/a/y/j/b;

    if-eqz p1, :cond_9

    .line 29
    invoke-virtual {p1}, Le/b/a/y/j/b;->f()Le/b/a/w/c/a;

    move-result-object p1

    iput-object p1, p0, Le/b/a/w/c/o;->n:Le/b/a/w/c/a;

    goto :goto_8

    .line 30
    :cond_9
    iput-object v1, p0, Le/b/a/w/c/o;->n:Le/b/a/w/c/a;

    :goto_8
    return-void
.end method


# virtual methods
.method public a(Le/b/a/y/l/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/w/c/o;->j:Le/b/a/w/c/a;

    invoke-virtual {p1, v0}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    .line 2
    iget-object v0, p0, Le/b/a/w/c/o;->m:Le/b/a/w/c/a;

    invoke-virtual {p1, v0}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    .line 3
    iget-object v0, p0, Le/b/a/w/c/o;->n:Le/b/a/w/c/a;

    invoke-virtual {p1, v0}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    .line 4
    iget-object v0, p0, Le/b/a/w/c/o;->f:Le/b/a/w/c/a;

    invoke-virtual {p1, v0}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    .line 5
    iget-object v0, p0, Le/b/a/w/c/o;->g:Le/b/a/w/c/a;

    invoke-virtual {p1, v0}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    .line 6
    iget-object v0, p0, Le/b/a/w/c/o;->h:Le/b/a/w/c/a;

    invoke-virtual {p1, v0}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    .line 7
    iget-object v0, p0, Le/b/a/w/c/o;->i:Le/b/a/w/c/a;

    invoke-virtual {p1, v0}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    .line 8
    iget-object v0, p0, Le/b/a/w/c/o;->k:Le/b/a/w/c/c;

    invoke-virtual {p1, v0}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    .line 9
    iget-object v0, p0, Le/b/a/w/c/o;->l:Le/b/a/w/c/c;

    invoke-virtual {p1, v0}, Le/b/a/y/l/b;->b(Le/b/a/w/c/a;)V

    return-void
.end method

.method public b(Le/b/a/w/c/a$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/a/w/c/o;->j:Le/b/a/w/c/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_0
    iget-object v0, p0, Le/b/a/w/c/o;->m:Le/b/a/w/c/a;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, v0, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    iget-object v0, p0, Le/b/a/w/c/o;->n:Le/b/a/w/c/a;

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, v0, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_2
    iget-object v0, p0, Le/b/a/w/c/o;->f:Le/b/a/w/c/a;

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, v0, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_3
    iget-object v0, p0, Le/b/a/w/c/o;->g:Le/b/a/w/c/a;

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, v0, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_4
    iget-object v0, p0, Le/b/a/w/c/o;->h:Le/b/a/w/c/a;

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, v0, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_5
    iget-object v0, p0, Le/b/a/w/c/o;->i:Le/b/a/w/c/a;

    if-eqz v0, :cond_6

    .line 14
    iget-object v0, v0, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_6
    iget-object v0, p0, Le/b/a/w/c/o;->k:Le/b/a/w/c/c;

    if-eqz v0, :cond_7

    .line 16
    iget-object v0, v0, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_7
    iget-object v0, p0, Le/b/a/w/c/o;->l:Le/b/a/w/c/c;

    if-eqz v0, :cond_8

    .line 18
    iget-object v0, v0, Le/b/a/w/c/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method public c(Ljava/lang/Object;Le/b/a/c0/c;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Le/b/a/c0/c<",
            "TT;>;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Le/b/a/o;->e:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Le/b/a/w/c/o;->f:Le/b/a/w/c/a;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Le/b/a/w/c/p;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, Le/b/a/w/c/p;-><init>(Le/b/a/c0/c;Ljava/lang/Object;)V

    iput-object p1, p0, Le/b/a/w/c/o;->f:Le/b/a/w/c/a;

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    .line 5
    iput-object p2, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    goto/16 :goto_0

    .line 6
    :cond_1
    sget-object v0, Le/b/a/o;->f:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_3

    .line 7
    iget-object p1, p0, Le/b/a/w/c/o;->g:Le/b/a/w/c/a;

    if-nez p1, :cond_2

    .line 8
    new-instance p1, Le/b/a/w/c/p;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    invoke-direct {p1, p2, v0}, Le/b/a/w/c/p;-><init>(Le/b/a/c0/c;Ljava/lang/Object;)V

    iput-object p1, p0, Le/b/a/w/c/o;->g:Le/b/a/w/c/a;

    goto/16 :goto_0

    .line 9
    :cond_2
    iget-object v0, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    .line 10
    iput-object p2, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    goto/16 :goto_0

    .line 11
    :cond_3
    sget-object v0, Le/b/a/o;->k:Le/b/a/c0/d;

    if-ne p1, v0, :cond_5

    .line 12
    iget-object p1, p0, Le/b/a/w/c/o;->h:Le/b/a/w/c/a;

    if-nez p1, :cond_4

    .line 13
    new-instance p1, Le/b/a/w/c/p;

    new-instance v0, Le/b/a/c0/d;

    invoke-direct {v0}, Le/b/a/c0/d;-><init>()V

    invoke-direct {p1, p2, v0}, Le/b/a/w/c/p;-><init>(Le/b/a/c0/c;Ljava/lang/Object;)V

    iput-object p1, p0, Le/b/a/w/c/o;->h:Le/b/a/w/c/a;

    goto/16 :goto_0

    .line 14
    :cond_4
    iget-object v0, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    .line 15
    iput-object p2, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    goto/16 :goto_0

    .line 16
    :cond_5
    sget-object v0, Le/b/a/o;->l:Ljava/lang/Float;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    .line 17
    iget-object p1, p0, Le/b/a/w/c/o;->i:Le/b/a/w/c/a;

    if-nez p1, :cond_6

    .line 18
    new-instance p1, Le/b/a/w/c/p;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Le/b/a/w/c/p;-><init>(Le/b/a/c0/c;Ljava/lang/Object;)V

    iput-object p1, p0, Le/b/a/w/c/o;->i:Le/b/a/w/c/a;

    goto/16 :goto_0

    .line 19
    :cond_6
    iget-object v0, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    .line 20
    iput-object p2, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    goto/16 :goto_0

    .line 21
    :cond_7
    sget-object v0, Le/b/a/o;->c:Ljava/lang/Integer;

    const/16 v2, 0x64

    if-ne p1, v0, :cond_9

    .line 22
    iget-object p1, p0, Le/b/a/w/c/o;->j:Le/b/a/w/c/a;

    if-nez p1, :cond_8

    .line 23
    new-instance p1, Le/b/a/w/c/p;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Le/b/a/w/c/p;-><init>(Le/b/a/c0/c;Ljava/lang/Object;)V

    iput-object p1, p0, Le/b/a/w/c/o;->j:Le/b/a/w/c/a;

    goto/16 :goto_0

    .line 24
    :cond_8
    iget-object v0, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    .line 25
    iput-object p2, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    goto/16 :goto_0

    .line 26
    :cond_9
    sget-object v0, Le/b/a/o;->y:Ljava/lang/Float;

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Le/b/a/w/c/o;->m:Le/b/a/w/c/a;

    if-eqz v0, :cond_b

    if-nez v0, :cond_a

    .line 27
    new-instance p1, Le/b/a/w/c/p;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Le/b/a/w/c/p;-><init>(Le/b/a/c0/c;Ljava/lang/Object;)V

    iput-object p1, p0, Le/b/a/w/c/o;->m:Le/b/a/w/c/a;

    goto :goto_0

    .line 28
    :cond_a
    iget-object p1, v0, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    .line 29
    iput-object p2, v0, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    goto :goto_0

    .line 30
    :cond_b
    sget-object v0, Le/b/a/o;->z:Ljava/lang/Float;

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Le/b/a/w/c/o;->n:Le/b/a/w/c/a;

    if-eqz v0, :cond_d

    if-nez v0, :cond_c

    .line 31
    new-instance p1, Le/b/a/w/c/p;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Le/b/a/w/c/p;-><init>(Le/b/a/c0/c;Ljava/lang/Object;)V

    iput-object p1, p0, Le/b/a/w/c/o;->n:Le/b/a/w/c/a;

    goto :goto_0

    .line 32
    :cond_c
    iget-object p1, v0, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    .line 33
    iput-object p2, v0, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    goto :goto_0

    .line 34
    :cond_d
    sget-object v0, Le/b/a/o;->m:Ljava/lang/Float;

    if-ne p1, v0, :cond_f

    iget-object v0, p0, Le/b/a/w/c/o;->k:Le/b/a/w/c/c;

    if-eqz v0, :cond_f

    if-nez v0, :cond_e

    .line 35
    new-instance p1, Le/b/a/w/c/c;

    new-instance v0, Le/b/a/c0/a;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Le/b/a/c0/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Le/b/a/w/c/c;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Le/b/a/w/c/o;->k:Le/b/a/w/c/c;

    .line 36
    :cond_e
    iget-object p1, p0, Le/b/a/w/c/o;->k:Le/b/a/w/c/c;

    .line 37
    iget-object v0, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    .line 38
    iput-object p2, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    goto :goto_0

    .line 39
    :cond_f
    sget-object v0, Le/b/a/o;->n:Ljava/lang/Float;

    if-ne p1, v0, :cond_11

    iget-object p1, p0, Le/b/a/w/c/o;->l:Le/b/a/w/c/c;

    if-eqz p1, :cond_11

    if-nez p1, :cond_10

    .line 40
    new-instance p1, Le/b/a/w/c/c;

    new-instance v0, Le/b/a/c0/a;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Le/b/a/c0/a;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Le/b/a/w/c/c;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Le/b/a/w/c/o;->l:Le/b/a/w/c/c;

    .line 41
    :cond_10
    iget-object p1, p0, Le/b/a/w/c/o;->l:Le/b/a/w/c/c;

    .line 42
    iget-object v0, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    .line 43
    iput-object p2, p1, Le/b/a/w/c/a;->e:Le/b/a/c0/c;

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method public final d()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 1
    iget-object v1, p0, Le/b/a/w/c/o;->e:[F

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e()Landroid/graphics/Matrix;
    .locals 13

    .line 1
    iget-object v0, p0, Le/b/a/w/c/o;->a:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 2
    iget-object v0, p0, Le/b/a/w/c/o;->g:Le/b/a/w/c/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 4
    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_0

    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v1

    if-eqz v3, :cond_1

    .line 5
    :cond_0
    iget-object v3, p0, Le/b/a/w/c/o;->a:Landroid/graphics/Matrix;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 6
    :cond_1
    iget-object v0, p0, Le/b/a/w/c/o;->i:Le/b/a/w/c/a;

    if-eqz v0, :cond_3

    .line 7
    instance-of v2, v0, Le/b/a/w/c/p;

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v0}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 9
    :cond_2
    check-cast v0, Le/b/a/w/c/c;

    invoke-virtual {v0}, Le/b/a/w/c/c;->j()F

    move-result v0

    :goto_0
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    .line 10
    iget-object v2, p0, Le/b/a/w/c/o;->a:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 11
    :cond_3
    iget-object v0, p0, Le/b/a/w/c/o;->k:Le/b/a/w/c/c;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    .line 12
    iget-object v0, p0, Le/b/a/w/c/o;->l:Le/b/a/w/c/c;

    const/high16 v3, 0x42b40000    # 90.0f

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Le/b/a/w/c/c;->j()F

    move-result v0

    neg-float v0, v0

    add-float/2addr v0, v3

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 13
    :goto_1
    iget-object v4, p0, Le/b/a/w/c/o;->l:Le/b/a/w/c/c;

    if-nez v4, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Le/b/a/w/c/c;->j()F

    move-result v4

    neg-float v4, v4

    add-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 14
    :goto_2
    iget-object v4, p0, Le/b/a/w/c/o;->k:Le/b/a/w/c/c;

    invoke-virtual {v4}, Le/b/a/w/c/c;->j()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 15
    invoke-virtual {p0}, Le/b/a/w/c/o;->d()V

    .line 16
    iget-object v5, p0, Le/b/a/w/c/o;->e:[F

    const/4 v6, 0x0

    aput v0, v5, v6

    const/4 v7, 0x1

    .line 17
    aput v3, v5, v7

    neg-float v8, v3

    const/4 v9, 0x3

    .line 18
    aput v8, v5, v9

    const/4 v10, 0x4

    .line 19
    aput v0, v5, v10

    const/16 v11, 0x8

    .line 20
    aput v2, v5, v11

    .line 21
    iget-object v12, p0, Le/b/a/w/c/o;->b:Landroid/graphics/Matrix;

    invoke-virtual {v12, v5}, Landroid/graphics/Matrix;->setValues([F)V

    .line 22
    invoke-virtual {p0}, Le/b/a/w/c/o;->d()V

    .line 23
    iget-object v5, p0, Le/b/a/w/c/o;->e:[F

    aput v2, v5, v6

    .line 24
    aput v4, v5, v9

    .line 25
    aput v2, v5, v10

    .line 26
    aput v2, v5, v11

    .line 27
    iget-object v4, p0, Le/b/a/w/c/o;->c:Landroid/graphics/Matrix;

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->setValues([F)V

    .line 28
    invoke-virtual {p0}, Le/b/a/w/c/o;->d()V

    .line 29
    iget-object v4, p0, Le/b/a/w/c/o;->e:[F

    aput v0, v4, v6

    .line 30
    aput v8, v4, v7

    .line 31
    aput v3, v4, v9

    .line 32
    aput v0, v4, v10

    .line 33
    aput v2, v4, v11

    .line 34
    iget-object v0, p0, Le/b/a/w/c/o;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->setValues([F)V

    .line 35
    iget-object v0, p0, Le/b/a/w/c/o;->c:Landroid/graphics/Matrix;

    iget-object v3, p0, Le/b/a/w/c/o;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 36
    iget-object v0, p0, Le/b/a/w/c/o;->d:Landroid/graphics/Matrix;

    iget-object v3, p0, Le/b/a/w/c/o;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 37
    iget-object v0, p0, Le/b/a/w/c/o;->a:Landroid/graphics/Matrix;

    iget-object v3, p0, Le/b/a/w/c/o;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 38
    :cond_6
    iget-object v0, p0, Le/b/a/w/c/o;->h:Le/b/a/w/c/a;

    if-eqz v0, :cond_8

    .line 39
    invoke-virtual {v0}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/a/c0/d;

    .line 40
    iget v3, v0, Le/b/a/c0/d;->a:F

    cmpl-float v4, v3, v2

    if-nez v4, :cond_7

    .line 41
    iget v4, v0, Le/b/a/c0/d;->b:F

    cmpl-float v2, v4, v2

    if-eqz v2, :cond_8

    .line 42
    :cond_7
    iget-object v2, p0, Le/b/a/w/c/o;->a:Landroid/graphics/Matrix;

    .line 43
    iget v0, v0, Le/b/a/c0/d;->b:F

    .line 44
    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 45
    :cond_8
    iget-object v0, p0, Le/b/a/w/c/o;->f:Le/b/a/w/c/a;

    if-eqz v0, :cond_a

    .line 46
    invoke-virtual {v0}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 47
    iget v2, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v2, v1

    if-nez v3, :cond_9

    iget v3, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v1, v3, v1

    if-eqz v1, :cond_a

    .line 48
    :cond_9
    iget-object v1, p0, Le/b/a/w/c/o;->a:Landroid/graphics/Matrix;

    neg-float v2, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    neg-float v0, v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 49
    :cond_a
    iget-object v0, p0, Le/b/a/w/c/o;->a:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public f(F)Landroid/graphics/Matrix;
    .locals 9

    .line 1
    iget-object v0, p0, Le/b/a/w/c/o;->g:Le/b/a/w/c/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 2
    :goto_0
    iget-object v2, p0, Le/b/a/w/c/o;->h:Le/b/a/w/c/a;

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/b/a/c0/d;

    .line 3
    :goto_1
    iget-object v3, p0, Le/b/a/w/c/o;->a:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    if-eqz v0, :cond_2

    .line 4
    iget-object v3, p0, Le/b/a/w/c/o;->a:Landroid/graphics/Matrix;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v4, p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, p1

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    :cond_2
    if-eqz v2, :cond_3

    .line 5
    iget-object v0, p0, Le/b/a/w/c/o;->a:Landroid/graphics/Matrix;

    .line 6
    iget v3, v2, Le/b/a/c0/d;->a:F

    float-to-double v3, v3

    float-to-double v5, p1

    .line 7
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    .line 8
    iget v2, v2, Le/b/a/c0/d;->b:F

    float-to-double v7, v2

    .line 9
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v2, v4

    .line 10
    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 11
    :cond_3
    iget-object v0, p0, Le/b/a/w/c/o;->i:Le/b/a/w/c/a;

    if-eqz v0, :cond_7

    .line 12
    invoke-virtual {v0}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 13
    iget-object v2, p0, Le/b/a/w/c/o;->f:Le/b/a/w/c/a;

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Le/b/a/w/c/a;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 14
    :goto_2
    iget-object v2, p0, Le/b/a/w/c/o;->a:Landroid/graphics/Matrix;

    mul-float/2addr v0, p1

    const/4 p1, 0x0

    if-nez v1, :cond_5

    move v3, p1

    goto :goto_3

    :cond_5
    iget v3, v1, Landroid/graphics/PointF;->x:F

    :goto_3
    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    iget p1, v1, Landroid/graphics/PointF;->y:F

    :goto_4
    invoke-virtual {v2, v0, v3, p1}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 15
    :cond_7
    iget-object p1, p0, Le/b/a/w/c/o;->a:Landroid/graphics/Matrix;

    return-object p1
.end method
