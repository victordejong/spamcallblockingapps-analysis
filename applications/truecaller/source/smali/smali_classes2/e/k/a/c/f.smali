.class public final Le/k/a/c/f;
.super Le/k/a/c/c0/l;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/c0/l<",
        "Le/k/a/c/h;",
        "Le/k/a/c/f;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final u:I


# instance fields
.field public final l:Le/k/a/c/n0/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n0/n<",
            "Le/k/a/c/d0/m;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Le/k/a/c/k0/l;

.field public final n:Le/k/a/c/c0/c;

.field public final o:Le/k/a/c/c0/h;

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/h;

    invoke-static {v0}, Le/k/a/c/c0/k;->c(Ljava/lang/Class;)I

    move-result v0

    sput v0, Le/k/a/c/f;->u:I

    return-void
.end method

.method public constructor <init>(Le/k/a/c/c0/a;Le/k/a/c/j0/d;Le/k/a/c/g0/d0;Le/k/a/c/n0/x;Le/k/a/c/c0/g;Le/k/a/c/c0/c;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Le/k/a/c/c0/l;-><init>(Le/k/a/c/c0/a;Le/k/a/c/j0/d;Le/k/a/c/g0/d0;Le/k/a/c/n0/x;Le/k/a/c/c0/g;)V

    .line 2
    sget p1, Le/k/a/c/f;->u:I

    iput p1, p0, Le/k/a/c/f;->p:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/k/a/c/f;->l:Le/k/a/c/n0/n;

    .line 4
    sget-object p2, Le/k/a/c/k0/l;->b:Le/k/a/c/k0/l;

    iput-object p2, p0, Le/k/a/c/f;->m:Le/k/a/c/k0/l;

    .line 5
    iput-object p1, p0, Le/k/a/c/f;->o:Le/k/a/c/c0/h;

    .line 6
    iput-object p6, p0, Le/k/a/c/f;->n:Le/k/a/c/c0/c;

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Le/k/a/c/f;->q:I

    .line 8
    iput p1, p0, Le/k/a/c/f;->r:I

    .line 9
    iput p1, p0, Le/k/a/c/f;->s:I

    .line 10
    iput p1, p0, Le/k/a/c/f;->t:I

    return-void
.end method

.method public constructor <init>(Le/k/a/c/f;IIIIII)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Le/k/a/c/c0/l;-><init>(Le/k/a/c/c0/l;I)V

    .line 12
    iput p3, p0, Le/k/a/c/f;->p:I

    .line 13
    iget-object p2, p1, Le/k/a/c/f;->l:Le/k/a/c/n0/n;

    iput-object p2, p0, Le/k/a/c/f;->l:Le/k/a/c/n0/n;

    .line 14
    iget-object p2, p1, Le/k/a/c/f;->m:Le/k/a/c/k0/l;

    iput-object p2, p0, Le/k/a/c/f;->m:Le/k/a/c/k0/l;

    .line 15
    iget-object p2, p1, Le/k/a/c/f;->n:Le/k/a/c/c0/c;

    iput-object p2, p0, Le/k/a/c/f;->n:Le/k/a/c/c0/c;

    .line 16
    iget-object p1, p1, Le/k/a/c/f;->o:Le/k/a/c/c0/h;

    iput-object p1, p0, Le/k/a/c/f;->o:Le/k/a/c/c0/h;

    .line 17
    iput p4, p0, Le/k/a/c/f;->q:I

    .line 18
    iput p5, p0, Le/k/a/c/f;->r:I

    .line 19
    iput p6, p0, Le/k/a/c/f;->s:I

    .line 20
    iput p7, p0, Le/k/a/c/f;->t:I

    return-void
.end method


# virtual methods
.method public p(I)Le/k/a/c/c0/l;
    .locals 9

    .line 1
    new-instance v8, Le/k/a/c/f;

    iget v3, p0, Le/k/a/c/f;->p:I

    iget v4, p0, Le/k/a/c/f;->q:I

    iget v5, p0, Le/k/a/c/f;->r:I

    iget v6, p0, Le/k/a/c/f;->s:I

    iget v7, p0, Le/k/a/c/f;->t:I

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Le/k/a/c/f;-><init>(Le/k/a/c/f;IIIIII)V

    return-object v8
.end method

.method public u()Le/k/a/c/c0/h;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/f;->o:Le/k/a/c/c0/h;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Le/k/a/c/c0/h;->a:Le/k/a/c/c0/h;

    :cond_0
    return-object v0
.end method

.method public v(Le/k/a/b/j;Le/k/a/b/c;)Le/k/a/b/j;
    .locals 2

    .line 1
    iget v0, p0, Le/k/a/c/f;->r:I

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Le/k/a/c/f;->q:I

    invoke-virtual {p1, v1, v0}, Le/k/a/b/j;->q2(II)Le/k/a/b/j;

    .line 3
    :cond_0
    iget v0, p0, Le/k/a/c/f;->t:I

    if-eqz v0, :cond_1

    .line 4
    iget v1, p0, Le/k/a/c/f;->s:I

    invoke-virtual {p1, v1, v0}, Le/k/a/b/j;->p2(II)Le/k/a/b/j;

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p1, p2}, Le/k/a/b/j;->v2(Le/k/a/b/c;)V

    :cond_2
    return-object p1
.end method

.method public w(Le/k/a/c/i;)Le/k/a/c/c;
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

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p0, p1, p0, v1}, Le/k/a/c/g0/r;->d(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/g0/t$a;Z)Le/k/a/c/g0/b0;

    move-result-object p1

    .line 7
    new-instance v1, Le/k/a/c/g0/q;

    invoke-direct {v1, p1}, Le/k/a/c/g0/q;-><init>(Le/k/a/c/g0/b0;)V

    :cond_0
    return-object v1
.end method

.method public x(Le/k/a/c/i;)Le/k/a/c/c;
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

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p0, p1, p0, v1}, Le/k/a/c/g0/r;->d(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/g0/t$a;Z)Le/k/a/c/g0/b0;

    move-result-object p1

    .line 7
    new-instance v1, Le/k/a/c/g0/q;

    invoke-direct {v1, p1}, Le/k/a/c/g0/q;-><init>(Le/k/a/c/g0/b0;)V

    :cond_0
    return-object v1
.end method

.method public final y(Le/k/a/c/h;)Z
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/c/f;->p:I

    .line 2
    iget p1, p1, Le/k/a/c/h;->b:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
