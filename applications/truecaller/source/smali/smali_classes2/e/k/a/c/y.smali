.class public final Le/k/a/c/y;
.super Le/k/a/c/c0/l;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/c0/l<",
        "Le/k/a/c/z;",
        "Le/k/a/c/y;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final r:Le/k/a/b/o;

.field public static final s:I


# instance fields
.field public final l:Le/k/a/b/o;

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/b/a0/e;

    invoke-direct {v0}, Le/k/a/b/a0/e;-><init>()V

    sput-object v0, Le/k/a/c/y;->r:Le/k/a/b/o;

    .line 2
    const-class v0, Le/k/a/c/z;

    invoke-static {v0}, Le/k/a/c/c0/k;->c(Ljava/lang/Class;)I

    move-result v0

    sput v0, Le/k/a/c/y;->s:I

    return-void
.end method

.method public constructor <init>(Le/k/a/c/c0/a;Le/k/a/c/j0/d;Le/k/a/c/g0/d0;Le/k/a/c/n0/x;Le/k/a/c/c0/g;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Le/k/a/c/c0/l;-><init>(Le/k/a/c/c0/a;Le/k/a/c/j0/d;Le/k/a/c/g0/d0;Le/k/a/c/n0/x;Le/k/a/c/c0/g;)V

    .line 2
    sget p1, Le/k/a/c/y;->s:I

    iput p1, p0, Le/k/a/c/y;->m:I

    .line 3
    sget-object p1, Le/k/a/c/y;->r:Le/k/a/b/o;

    iput-object p1, p0, Le/k/a/c/y;->l:Le/k/a/b/o;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Le/k/a/c/y;->n:I

    .line 5
    iput p1, p0, Le/k/a/c/y;->o:I

    .line 6
    iput p1, p0, Le/k/a/c/y;->p:I

    .line 7
    iput p1, p0, Le/k/a/c/y;->q:I

    return-void
.end method

.method public constructor <init>(Le/k/a/c/y;IIIIII)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Le/k/a/c/c0/l;-><init>(Le/k/a/c/c0/l;I)V

    .line 9
    iput p3, p0, Le/k/a/c/y;->m:I

    .line 10
    iget-object p1, p1, Le/k/a/c/y;->l:Le/k/a/b/o;

    iput-object p1, p0, Le/k/a/c/y;->l:Le/k/a/b/o;

    .line 11
    iput p4, p0, Le/k/a/c/y;->n:I

    .line 12
    iput p5, p0, Le/k/a/c/y;->o:I

    .line 13
    iput p6, p0, Le/k/a/c/y;->p:I

    .line 14
    iput p7, p0, Le/k/a/c/y;->q:I

    return-void
.end method


# virtual methods
.method public p(I)Le/k/a/c/c0/l;
    .locals 9

    .line 1
    new-instance v8, Le/k/a/c/y;

    iget v3, p0, Le/k/a/c/y;->m:I

    iget v4, p0, Le/k/a/c/y;->n:I

    iget v5, p0, Le/k/a/c/y;->o:I

    iget v6, p0, Le/k/a/c/y;->p:I

    iget v7, p0, Le/k/a/c/y;->q:I

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Le/k/a/c/y;-><init>(Le/k/a/c/y;IIIIII)V

    return-object v8
.end method

.method public u(Le/k/a/b/g;)V
    .locals 4

    .line 1
    sget-object v0, Le/k/a/c/z;->d:Le/k/a/c/z;

    iget v1, p0, Le/k/a/c/y;->m:I

    .line 2
    iget v0, v0, Le/k/a/c/z;->b:I

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p1, Le/k/a/b/g;->a:Le/k/a/b/o;

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Le/k/a/c/y;->l:Le/k/a/b/o;

    .line 5
    instance-of v3, v0, Le/k/a/b/a0/f;

    if-eqz v3, :cond_1

    .line 6
    check-cast v0, Le/k/a/b/a0/f;

    invoke-interface {v0}, Le/k/a/b/a0/f;->createInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/k/a/b/o;

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    iput-object v0, p1, Le/k/a/b/g;->a:Le/k/a/b/o;

    .line 8
    :cond_2
    sget-object v0, Le/k/a/c/z;->w:Le/k/a/c/z;

    iget v3, p0, Le/k/a/c/y;->m:I

    .line 9
    iget v0, v0, Le/k/a/c/z;->b:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 10
    :goto_1
    iget v0, p0, Le/k/a/c/y;->o:I

    if-nez v0, :cond_4

    if-eqz v1, :cond_6

    .line 11
    :cond_4
    iget v2, p0, Le/k/a/c/y;->n:I

    if-eqz v1, :cond_5

    .line 12
    sget-object v1, Le/k/a/b/g$a;->j:Le/k/a/b/g$a;

    .line 13
    iget v1, v1, Le/k/a/b/g$a;->b:I

    or-int/2addr v2, v1

    or-int/2addr v0, v1

    .line 14
    :cond_5
    invoke-virtual {p1, v2, v0}, Le/k/a/b/g;->I(II)Le/k/a/b/g;

    .line 15
    :cond_6
    iget v0, p0, Le/k/a/c/y;->q:I

    if-eqz v0, :cond_7

    .line 16
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public v(Le/k/a/c/i;)Le/k/a/c/c;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 2
    iget-object v0, v0, Le/k/a/c/c0/a;->b:Le/k/a/c/g0/t;

    .line 3
    check-cast v0, Le/k/a/c/g0/r;

    .line 4
    invoke-virtual {v0, p0, p1}, Le/k/a/c/g0/r;->b(Le/k/a/c/c0/k;Le/k/a/c/i;)Le/k/a/c/g0/q;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0, p0, p1}, Le/k/a/c/g0/r;->a(Le/k/a/c/c0/k;Le/k/a/c/i;)Le/k/a/c/g0/q;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, p0, p1, p0, v1}, Le/k/a/c/g0/r;->d(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/g0/t$a;Z)Le/k/a/c/g0/b0;

    move-result-object p1

    .line 7
    new-instance v1, Le/k/a/c/g0/q;

    invoke-direct {v1, p1}, Le/k/a/c/g0/q;-><init>(Le/k/a/c/g0/b0;)V

    :cond_0
    return-object v1
.end method

.method public final w(Le/k/a/c/z;)Z
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/c/y;->m:I

    .line 2
    iget p1, p1, Le/k/a/c/z;->b:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
