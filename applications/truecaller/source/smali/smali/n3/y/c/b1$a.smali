.class public Ln3/y/c/b1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/y/c/b1;->J(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ln3/y/c/b1;


# direct methods
.method public constructor <init>(Ln3/y/c/b1;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/c/b1$a;->c:Ln3/y/c/b1;

    iput p2, p0, Ln3/y/c/b1$a;->a:I

    iput p3, p0, Ln3/y/c/b1$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1
    iget-object v0, p0, Ln3/y/c/b1$a;->c:Ln3/y/c/b1;

    iget-object v0, v0, Ln3/y/c/b1;->j:Ln3/y/c/b1$c;

    iget v7, p0, Ln3/y/c/b1$a;->a:I

    iget v8, p0, Ln3/y/c/b1$a;->b:I

    check-cast v0, Ln3/y/c/j0$a;

    .line 2
    iget-object v0, v0, Ln3/y/c/j0$a;->a:Ln3/y/c/j0;

    .line 3
    iget-object v9, v0, Ln3/y/c/j0;->j:Ln3/y/c/d1;

    const/4 v10, 0x0

    move v11, v10

    .line 4
    :goto_0
    iget-object v1, v9, Ln3/y/c/d1;->h:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v12, 0x1

    if-ge v11, v1, :cond_2

    .line 5
    iget-object v1, v9, Ln3/y/c/d1;->h:Landroid/util/SparseArray;

    invoke-virtual {v1, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln3/y/c/d1$a;

    .line 6
    iget v2, v1, Ln3/y/c/d1$a;->c:I

    if-ne v2, v7, :cond_1

    iget v2, v1, Ln3/y/c/d1$a;->d:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 7
    iget-object v2, v1, Ln3/y/c/d1$b;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 8
    iget v13, v2, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    .line 9
    new-instance v14, Ln3/y/c/d1$a;

    iget v2, v1, Ln3/y/c/d1$b;->a:I

    iget-object v4, v1, Ln3/y/c/d1$a;->e:Landroidx/media2/exoplayer/external/Format;

    move-object v1, v14

    move v3, v7

    move v5, v8

    move v6, v13

    invoke-direct/range {v1 .. v6}, Ln3/y/c/d1$a;-><init>(IILandroidx/media2/exoplayer/external/Format;II)V

    .line 10
    iget-object v1, v9, Ln3/y/c/d1;->h:Landroid/util/SparseArray;

    invoke-virtual {v1, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    iget-object v1, v9, Ln3/y/c/d1;->m:Ln3/y/c/d1$a;

    if-eqz v1, :cond_0

    iget v1, v1, Ln3/y/c/d1$b;->a:I

    if-ne v1, v11, :cond_0

    .line 12
    iget-object v1, v9, Ln3/y/c/d1;->c:Ln3/y/c/b1;

    invoke-virtual {v1, v7, v8}, Ln3/y/c/b1;->K(II)V

    :cond_0
    move v1, v12

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    move v1, v10

    :goto_1
    if-nez v1, :cond_3

    .line 13
    new-instance v11, Ln3/y/c/d1$a;

    iget v2, v9, Ln3/y/c/d1;->n:I

    const/4 v4, 0x0

    iget v6, v9, Ln3/y/c/d1;->a:I

    add-int/lit8 v1, v6, 0x1

    iput v1, v9, Ln3/y/c/d1;->a:I

    move-object v1, v11

    move v3, v7

    move v5, v8

    invoke-direct/range {v1 .. v6}, Ln3/y/c/d1$a;-><init>(IILandroidx/media2/exoplayer/external/Format;II)V

    .line 14
    iget-object v1, v9, Ln3/y/c/d1;->h:Landroid/util/SparseArray;

    iget-object v2, v11, Ln3/y/c/d1$b;->b:Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 15
    iget v2, v2, Landroidx/media2/common/SessionPlayer$TrackInfo;->a:I

    .line 16
    invoke-virtual {v1, v2, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iput-boolean v12, v9, Ln3/y/c/d1;->i:Z

    .line 18
    :cond_3
    iget-object v1, v0, Ln3/y/c/j0;->j:Ln3/y/c/d1;

    .line 19
    iget-boolean v2, v1, Ln3/y/c/d1;->i:Z

    .line 20
    iput-boolean v10, v1, Ln3/y/c/d1;->i:Z

    if-eqz v2, :cond_4

    .line 21
    iget-object v1, v0, Ln3/y/c/j0;->b:Ln3/y/c/j0$c;

    invoke-virtual {v0}, Ln3/y/c/j0;->e()Ljava/util/List;

    move-result-object v0

    check-cast v1, Ln3/y/c/m;

    .line 22
    new-instance v2, Ln3/y/c/a;

    invoke-direct {v2, v1, v0}, Ln3/y/c/a;-><init>(Ln3/y/c/m;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Ln3/y/c/m;->h(Ln3/y/c/m$j;)V

    :cond_4
    return-void
.end method
