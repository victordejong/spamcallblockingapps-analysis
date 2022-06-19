.class public Ln3/y/e/k$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/e/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/y/e/k;


# direct methods
.method public constructor <init>(Ln3/y/e/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/y/e/k$q;->a:Ln3/y/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ln3/y/e/k$q;->a:Ln3/y/e/k;

    iget p2, p1, Ln3/y/e/k;->k:I

    if-eqz p2, :cond_8

    const/4 p4, 0x1

    if-eq p2, p4, :cond_6

    const/4 p5, 0x2

    if-eq p2, p5, :cond_3

    const/4 p5, 0x3

    if-eq p2, p5, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez p3, :cond_1

    .line 2
    iget-object p2, p1, Ln3/y/e/k;->r0:Ln3/y/e/k$v;

    iget-object p3, p1, Ln3/y/e/k;->z0:Ljava/util/List;

    .line 3
    iput-object p3, p2, Ln3/y/e/k$v;->a:Ljava/util/List;

    .line 4
    iget p3, p1, Ln3/y/e/k;->m:I

    .line 5
    iput p3, p2, Ln3/y/e/k$v;->b:I

    const/4 p2, 0x0

    .line 6
    iput p2, p1, Ln3/y/e/k;->k:I

    goto :goto_0

    :cond_1
    if-ne p3, p4, :cond_2

    .line 7
    iget-object p2, p1, Ln3/y/e/k;->r0:Ln3/y/e/k$v;

    iget-object p3, p1, Ln3/y/e/k;->A0:Ljava/util/List;

    .line 8
    iput-object p3, p2, Ln3/y/e/k$v;->a:Ljava/util/List;

    .line 9
    iget p3, p1, Ln3/y/e/k;->n:I

    .line 10
    iput p3, p2, Ln3/y/e/k$v;->b:I

    .line 11
    iput p4, p1, Ln3/y/e/k;->k:I

    .line 12
    :cond_2
    :goto_0
    iget-object p2, p1, Ln3/y/e/k;->r0:Ln3/y/e/k$v;

    invoke-virtual {p1, p2}, Ln3/y/e/k;->d(Landroid/widget/BaseAdapter;)V

    goto/16 :goto_2

    .line 13
    :cond_3
    iget p2, p1, Ln3/y/e/k;->l:I

    add-int/lit8 p5, p2, 0x1

    if-eq p3, p5, :cond_5

    if-lez p3, :cond_4

    .line 14
    iget-object p2, p1, Ln3/y/e/k;->d:Ln3/y/e/x;

    iget-object p1, p1, Ln3/y/e/k;->y0:Ljava/util/List;

    sub-int/2addr p3, p4

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 15
    iget-object p2, p2, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz p2, :cond_5

    .line 16
    invoke-virtual {p2, p1}, Landroidx/media2/common/SessionPlayer;->p0(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_1

    .line 17
    :cond_4
    iget-object p3, p1, Ln3/y/e/k;->d:Ln3/y/e/x;

    iget-object p1, p1, Ln3/y/e/k;->y0:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 18
    iget-object p2, p3, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz p2, :cond_5

    .line 19
    invoke-virtual {p2, p1}, Landroidx/media2/common/SessionPlayer;->b(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 20
    :cond_5
    :goto_1
    iget-object p1, p0, Ln3/y/e/k$q;->a:Ln3/y/e/k;

    invoke-virtual {p1}, Ln3/y/e/k;->c()V

    goto :goto_2

    .line 21
    :cond_6
    iget p2, p1, Ln3/y/e/k;->n:I

    if-eq p3, p2, :cond_7

    .line 22
    iget-object p1, p1, Ln3/y/e/k;->B0:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    .line 23
    iget-object p2, p0, Ln3/y/e/k$q;->a:Ln3/y/e/k;

    iget-object p2, p2, Ln3/y/e/k;->d:Ln3/y/e/x;

    .line 24
    iget-object p2, p2, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz p2, :cond_7

    .line 25
    invoke-virtual {p2, p1}, Landroidx/media2/common/SessionPlayer;->t0(F)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 26
    :cond_7
    iget-object p1, p0, Ln3/y/e/k$q;->a:Ln3/y/e/k;

    invoke-virtual {p1}, Ln3/y/e/k;->c()V

    goto :goto_2

    .line 27
    :cond_8
    iget p2, p1, Ln3/y/e/k;->m:I

    if-eq p3, p2, :cond_9

    .line 28
    iget-object p1, p1, Ln3/y/e/k;->x0:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 29
    iget-object p1, p0, Ln3/y/e/k$q;->a:Ln3/y/e/k;

    iget-object p2, p1, Ln3/y/e/k;->d:Ln3/y/e/x;

    iget-object p1, p1, Ln3/y/e/k;->x0:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media2/common/SessionPlayer$TrackInfo;

    .line 30
    iget-object p2, p2, Ln3/y/e/x;->a:Landroidx/media2/common/SessionPlayer;

    if-eqz p2, :cond_9

    .line 31
    invoke-virtual {p2, p1}, Landroidx/media2/common/SessionPlayer;->p0(Landroidx/media2/common/SessionPlayer$TrackInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    .line 32
    :cond_9
    iget-object p1, p0, Ln3/y/e/k$q;->a:Ln3/y/e/k;

    invoke-virtual {p1}, Ln3/y/e/k;->c()V

    :goto_2
    return-void
.end method
