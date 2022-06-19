.class public Le/a/e/c2/j0;
.super Le/a/e/c2/x;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/e/c2/x<",
        "Le/a/e/c2/t$b;",
        "Le/a/l0/u/d/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Le/a/g5/p;

.field public final f:Le/a/l4/c;

.field public final g:Le/a/p5/c;

.field public final h:Le/a/z2/a;

.field public final i:I

.field public final j:Le/f/a/i;

.field public final k:Le/a/o2/l;

.field public final l:Le/a/a0/p;

.field public final m:Z

.field public final n:Le/a/a0/v;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/l0/u/d/b;Le/a/g5/p;Le/a/l4/c;Le/a/p5/c;Le/a/z2/a;Le/f/a/i;Le/a/o2/l;Le/a/a0/p;ZLe/a/a0/v;)V
    .locals 0

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p2}, Le/a/e/c2/x;-><init>(Landroid/database/Cursor;)V

    .line 2
    iput-object p1, p0, Le/a/e/c2/j0;->d:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Le/a/e/c2/j0;->e:Le/a/g5/p;

    .line 4
    iput-object p4, p0, Le/a/e/c2/j0;->f:Le/a/l4/c;

    .line 5
    iput-object p5, p0, Le/a/e/c2/j0;->g:Le/a/p5/c;

    .line 6
    iput-object p7, p0, Le/a/e/c2/j0;->j:Le/f/a/i;

    .line 7
    iput-object p6, p0, Le/a/e/c2/j0;->h:Le/a/z2/a;

    .line 8
    iput-object p8, p0, Le/a/e/c2/j0;->k:Le/a/o2/l;

    .line 9
    iput-object p9, p0, Le/a/e/c2/j0;->l:Le/a/a0/p;

    .line 10
    iput-boolean p10, p0, Le/a/e/c2/j0;->m:Z

    const/4 p2, 0x1

    new-array p3, p2, [I

    const/4 p4, 0x0

    const p5, 0x101004d

    aput p5, p3, p4

    .line 11
    invoke-virtual {p1, p3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p3, -0x2

    .line 12
    invoke-virtual {p1, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Le/a/e/c2/j0;->i:I

    .line 13
    iput-object p11, p0, Le/a/e/c2/j0;->n:Le/a/a0/v;

    .line 14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 15
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$g;->setHasStableIds(Z)V

    return-void
.end method


# virtual methods
.method public g(Landroid/view/ViewGroup;I)Le/a/e/c2/t$b;
    .locals 6

    .line 1
    new-instance v1, Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, -0x1

    const/4 v0, -0x2

    invoke-direct {p1, p2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object p1, p0, Le/a/e/c2/j0;->d:Landroid/content/Context;

    const p2, 0x7f040592

    invoke-static {p1, p2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 4
    new-instance p1, Le/a/w4/s/k0;

    iget-object v2, p0, Le/a/e/c2/j0;->f:Le/a/l4/c;

    iget-object v3, p0, Le/a/e/c2/j0;->g:Le/a/p5/c;

    iget-object v4, p0, Le/a/e/c2/j0;->j:Le/f/a/i;

    iget-object v5, p0, Le/a/e/c2/j0;->k:Le/a/o2/l;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Le/a/w4/s/k0;-><init>(Lcom/truecaller/common/ui/listitem/ListItemX;Le/a/l4/c;Le/a/p5/c;Le/f/a/i;Le/a/o2/l;)V

    return-object p1
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e/c2/x;->b:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    .line 2
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_1
    return v1
.end method

.method public getItemViewType(I)I
    .locals 0

    const p1, 0x7f0a13c5

    return p1
.end method
