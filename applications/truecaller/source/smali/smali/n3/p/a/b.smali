.class public abstract Ln3/p/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/p/a/a$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/p/a/b$m;,
        Ln3/p/a/b$l;,
        Ln3/p/a/b$k;,
        Ln3/p/a/b$n;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ln3/p/a/b<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ln3/p/a/a$b;"
    }
.end annotation


# static fields
.field public static final m:Ln3/p/a/b$n;

.field public static final n:Ln3/p/a/b$n;

.field public static final o:Ln3/p/a/b$n;

.field public static final p:Ln3/p/a/b$n;

.field public static final q:Ln3/p/a/b$n;

.field public static final r:Ln3/p/a/b$n;

.field public static final s:Ln3/p/a/b$n;

.field public static final t:Ln3/p/a/b$n;

.field public static final u:Ln3/p/a/b$n;


# instance fields
.field public a:F

.field public b:F

.field public c:Z

.field public final d:Ljava/lang/Object;

.field public final e:Ln3/p/a/d;

.field public f:Z

.field public g:F

.field public h:F

.field public i:J

.field public j:F

.field public final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/p/a/b$l;",
            ">;"
        }
    .end annotation
.end field

.field public final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ln3/p/a/b$m;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ln3/p/a/b$d;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Ln3/p/a/b$d;-><init>(Ljava/lang/String;)V

    sput-object v0, Ln3/p/a/b;->m:Ln3/p/a/b$n;

    .line 2
    new-instance v0, Ln3/p/a/b$e;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Ln3/p/a/b$e;-><init>(Ljava/lang/String;)V

    sput-object v0, Ln3/p/a/b;->n:Ln3/p/a/b$n;

    .line 3
    new-instance v0, Ln3/p/a/b$f;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Ln3/p/a/b$f;-><init>(Ljava/lang/String;)V

    sput-object v0, Ln3/p/a/b;->o:Ln3/p/a/b$n;

    .line 4
    new-instance v0, Ln3/p/a/b$g;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Ln3/p/a/b$g;-><init>(Ljava/lang/String;)V

    sput-object v0, Ln3/p/a/b;->p:Ln3/p/a/b$n;

    .line 5
    new-instance v0, Ln3/p/a/b$h;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Ln3/p/a/b$h;-><init>(Ljava/lang/String;)V

    sput-object v0, Ln3/p/a/b;->q:Ln3/p/a/b$n;

    .line 6
    new-instance v0, Ln3/p/a/b$i;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Ln3/p/a/b$i;-><init>(Ljava/lang/String;)V

    sput-object v0, Ln3/p/a/b;->r:Ln3/p/a/b$n;

    .line 7
    new-instance v0, Ln3/p/a/b$j;

    const-string v1, "x"

    invoke-direct {v0, v1}, Ln3/p/a/b$j;-><init>(Ljava/lang/String;)V

    sput-object v0, Ln3/p/a/b;->s:Ln3/p/a/b$n;

    .line 8
    new-instance v0, Ln3/p/a/b$a;

    const-string v1, "y"

    invoke-direct {v0, v1}, Ln3/p/a/b$a;-><init>(Ljava/lang/String;)V

    sput-object v0, Ln3/p/a/b;->t:Ln3/p/a/b$n;

    .line 9
    new-instance v0, Ln3/p/a/b$b;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Ln3/p/a/b$b;-><init>(Ljava/lang/String;)V

    sput-object v0, Ln3/p/a/b;->u:Ln3/p/a/b$n;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ln3/p/a/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ln3/p/a/d<",
            "TK;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Ln3/p/a/b;->a:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 16
    iput v0, p0, Ln3/p/a/b;->b:F

    const/4 v1, 0x0

    .line 17
    iput-boolean v1, p0, Ln3/p/a/b;->c:Z

    .line 18
    iput-boolean v1, p0, Ln3/p/a/b;->f:Z

    .line 19
    iput v0, p0, Ln3/p/a/b;->g:F

    neg-float v0, v0

    .line 20
    iput v0, p0, Ln3/p/a/b;->h:F

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Ln3/p/a/b;->i:J

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/p/a/b;->k:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/p/a/b;->l:Ljava/util/ArrayList;

    .line 24
    iput-object p1, p0, Ln3/p/a/b;->d:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Ln3/p/a/b;->e:Ln3/p/a/d;

    .line 26
    sget-object p1, Ln3/p/a/b;->p:Ln3/p/a/b$n;

    if-eq p2, p1, :cond_4

    sget-object p1, Ln3/p/a/b;->q:Ln3/p/a/b$n;

    if-eq p2, p1, :cond_4

    sget-object p1, Ln3/p/a/b;->r:Ln3/p/a/b$n;

    if-ne p2, p1, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    sget-object p1, Ln3/p/a/b;->u:Ln3/p/a/b$n;

    const/high16 v0, 0x3b800000    # 0.00390625f

    if-ne p2, p1, :cond_1

    .line 28
    iput v0, p0, Ln3/p/a/b;->j:F

    goto :goto_2

    .line 29
    :cond_1
    sget-object p1, Ln3/p/a/b;->n:Ln3/p/a/b$n;

    if-eq p2, p1, :cond_3

    sget-object p1, Ln3/p/a/b;->o:Ln3/p/a/b$n;

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 30
    iput p1, p0, Ln3/p/a/b;->j:F

    goto :goto_2

    .line 31
    :cond_3
    :goto_0
    iput v0, p0, Ln3/p/a/b;->j:F

    goto :goto_2

    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    .line 32
    iput p1, p0, Ln3/p/a/b;->j:F

    :goto_2
    return-void
.end method

.method public constructor <init>(Ln3/p/a/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ln3/p/a/b;->a:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    iput v0, p0, Ln3/p/a/b;->b:F

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Ln3/p/a/b;->c:Z

    .line 5
    iput-boolean v1, p0, Ln3/p/a/b;->f:Z

    .line 6
    iput v0, p0, Ln3/p/a/b;->g:F

    const v0, -0x800001

    .line 7
    iput v0, p0, Ln3/p/a/b;->h:F

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Ln3/p/a/b;->i:J

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/p/a/b;->k:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ln3/p/a/b;->l:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Ln3/p/a/b;->d:Ljava/lang/Object;

    .line 12
    new-instance v0, Ln3/p/a/b$c;

    const-string v1, "FloatValueHolder"

    invoke-direct {v0, p0, v1, p1}, Ln3/p/a/b$c;-><init>(Ln3/p/a/b;Ljava/lang/String;Ln3/p/a/e;)V

    iput-object v0, p0, Ln3/p/a/b;->e:Ln3/p/a/d;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 13
    iput p1, p0, Ln3/p/a/b;->j:F

    return-void
.end method

.method public static f(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Ln3/p/a/b;->i:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2
    iput-wide p1, p0, Ln3/p/a/b;->i:J

    .line 3
    iget p1, p0, Ln3/p/a/b;->b:F

    invoke-virtual {p0, p1}, Ln3/p/a/b;->g(F)V

    return v3

    :cond_0
    sub-long v0, p1, v0

    .line 4
    iput-wide p1, p0, Ln3/p/a/b;->i:J

    .line 5
    invoke-virtual {p0, v0, v1}, Ln3/p/a/b;->j(J)Z

    move-result p1

    .line 6
    iget p2, p0, Ln3/p/a/b;->b:F

    iget v0, p0, Ln3/p/a/b;->g:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Ln3/p/a/b;->b:F

    .line 7
    iget v0, p0, Ln3/p/a/b;->h:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Ln3/p/a/b;->b:F

    .line 8
    invoke-virtual {p0, p2}, Ln3/p/a/b;->g(F)V

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0, v3}, Ln3/p/a/b;->d(Z)V

    :cond_1
    return p1
.end method

.method public b(Ln3/p/a/b$m;)Ln3/p/a/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/p/a/b$m;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Ln3/p/a/b;->f:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Ln3/p/a/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Ln3/p/a/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Error: Update listeners must be added beforethe animation."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 2
    iget-boolean v0, p0, Ln3/p/a/b;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Ln3/p/a/b;->d(Z)V

    :cond_0
    return-void

    .line 4
    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be canceled on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(Z)V
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Ln3/p/a/b;->f:Z

    .line 2
    invoke-static {}, Ln3/p/a/a;->a()Ln3/p/a/a;

    move-result-object v1

    .line 3
    iget-object v2, v1, Ln3/p/a/a;->a:Ln3/g/h;

    invoke-virtual {v2, p0}, Ln3/g/h;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v2, v1, Ln3/p/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 5
    iget-object v3, v1, Ln3/p/a/a;->b:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v1, Ln3/p/a/a;->f:Z

    :cond_0
    const-wide/16 v1, 0x0

    .line 7
    iput-wide v1, p0, Ln3/p/a/b;->i:J

    .line 8
    iput-boolean v0, p0, Ln3/p/a/b;->c:Z

    .line 9
    :goto_0
    iget-object v1, p0, Ln3/p/a/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 10
    iget-object v1, p0, Ln3/p/a/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    iget-object v1, p0, Ln3/p/a/b;->k:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/p/a/b$l;

    iget v2, p0, Ln3/p/a/b;->b:F

    iget v3, p0, Ln3/p/a/b;->a:F

    invoke-interface {v1, p0, p1, v2, v3}, Ln3/p/a/b$l;->a(Ln3/p/a/b;ZFF)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Ln3/p/a/b;->k:Ljava/util/ArrayList;

    invoke-static {p1}, Ln3/p/a/b;->f(Ljava/util/ArrayList;)V

    return-void
.end method

.method public e()F
    .locals 2

    .line 1
    iget v0, p0, Ln3/p/a/b;->j:F

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float/2addr v0, v1

    return v0
.end method

.method public g(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/p/a/b;->e:Ln3/p/a/d;

    iget-object v1, p0, Ln3/p/a/b;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ln3/p/a/d;->b(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Ln3/p/a/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 3
    iget-object v0, p0, Ln3/p/a/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Ln3/p/a/b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/p/a/b$m;

    iget v1, p0, Ln3/p/a/b;->b:F

    iget v2, p0, Ln3/p/a/b;->a:F

    invoke-interface {v0, p0, v1, v2}, Ln3/p/a/b$m;->a(Ln3/p/a/b;FF)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Ln3/p/a/b;->l:Ljava/util/ArrayList;

    invoke-static {p1}, Ln3/p/a/b;->f(Ljava/util/ArrayList;)V

    return-void
.end method

.method public h(F)Ln3/p/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 1
    iput p1, p0, Ln3/p/a/b;->b:F

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Ln3/p/a/b;->c:Z

    return-object p0
.end method

.method public i()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 2
    iget-boolean v0, p0, Ln3/p/a/b;->f:Z

    if-nez v0, :cond_4

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Ln3/p/a/b;->f:Z

    .line 4
    iget-boolean v0, p0, Ln3/p/a/b;->c:Z

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Ln3/p/a/b;->e:Ln3/p/a/d;

    iget-object v1, p0, Ln3/p/a/b;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ln3/p/a/d;->a(Ljava/lang/Object;)F

    move-result v0

    .line 6
    iput v0, p0, Ln3/p/a/b;->b:F

    .line 7
    :cond_0
    iget v0, p0, Ln3/p/a/b;->b:F

    iget v1, p0, Ln3/p/a/b;->g:F

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_3

    iget v1, p0, Ln3/p/a/b;->h:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 8
    invoke-static {}, Ln3/p/a/a;->a()Ln3/p/a/a;

    move-result-object v0

    .line 9
    iget-object v1, v0, Ln3/p/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iget-object v1, v0, Ln3/p/a/a;->d:Ln3/p/a/a$c;

    if-nez v1, :cond_1

    .line 11
    new-instance v1, Ln3/p/a/a$d;

    iget-object v2, v0, Ln3/p/a/a;->c:Ln3/p/a/a$a;

    invoke-direct {v1, v2}, Ln3/p/a/a$d;-><init>(Ln3/p/a/a$a;)V

    iput-object v1, v0, Ln3/p/a/a;->d:Ln3/p/a/a$c;

    .line 12
    :cond_1
    iget-object v1, v0, Ln3/p/a/a;->d:Ln3/p/a/a$c;

    .line 13
    check-cast v1, Ln3/p/a/a$d;

    .line 14
    iget-object v2, v1, Ln3/p/a/a$d;->b:Landroid/view/Choreographer;

    iget-object v1, v1, Ln3/p/a/a$d;->c:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v2, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 15
    :cond_2
    iget-object v1, v0, Ln3/p/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 16
    iget-object v0, v0, Ln3/p/a/a;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Starting value need to be in between min value and max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    return-void

    .line 18
    :cond_5
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be started on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract j(J)Z
.end method
