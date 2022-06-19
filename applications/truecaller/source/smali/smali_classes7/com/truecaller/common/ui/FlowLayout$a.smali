.class public final Lcom/truecaller/common/ui/FlowLayout$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/common/ui/FlowLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Z

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public final synthetic h:Lcom/truecaller/common/ui/FlowLayout;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/FlowLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/common/ui/FlowLayout$a;->h:Lcom/truecaller/common/ui/FlowLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 8

    const-string v0, "child"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2
    iget-boolean v1, p0, Lcom/truecaller/common/ui/FlowLayout$a;->b:Z

    if-eqz v1, :cond_0

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    :cond_0
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_1

    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 4
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v4, v3, v2

    add-int/2addr v4, v1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 6
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p1, v0

    .line 7
    iget v1, p0, Lcom/truecaller/common/ui/FlowLayout$a;->e:I

    if-ge v1, p1, :cond_2

    move v1, p1

    :cond_2
    iput v1, p0, Lcom/truecaller/common/ui/FlowLayout$a;->e:I

    .line 8
    iget v5, p0, Lcom/truecaller/common/ui/FlowLayout$a;->a:I

    const/4 v6, 0x0

    if-le v3, v5, :cond_3

    .line 9
    iget v7, p0, Lcom/truecaller/common/ui/FlowLayout$a;->c:I

    if-eqz v7, :cond_4

    .line 10
    iget v7, p0, Lcom/truecaller/common/ui/FlowLayout$a;->d:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/truecaller/common/ui/FlowLayout$a;->d:I

    .line 11
    iput p1, p0, Lcom/truecaller/common/ui/FlowLayout$a;->e:I

    .line 12
    iput v6, p0, Lcom/truecaller/common/ui/FlowLayout$a;->c:I

    goto :goto_2

    .line 13
    :cond_3
    iget v7, p0, Lcom/truecaller/common/ui/FlowLayout$a;->c:I

    add-int/2addr v7, v4

    if-le v7, v5, :cond_4

    .line 14
    iget v7, p0, Lcom/truecaller/common/ui/FlowLayout$a;->d:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/truecaller/common/ui/FlowLayout$a;->d:I

    .line 15
    iput p1, p0, Lcom/truecaller/common/ui/FlowLayout$a;->e:I

    .line 16
    iput v6, p0, Lcom/truecaller/common/ui/FlowLayout$a;->c:I

    .line 17
    :cond_4
    :goto_2
    iget-boolean p1, p0, Lcom/truecaller/common/ui/FlowLayout$a;->b:Z

    if-eqz p1, :cond_5

    .line 18
    iget p1, p0, Lcom/truecaller/common/ui/FlowLayout$a;->c:I

    add-int/2addr p1, v3

    add-int/2addr p1, v2

    sub-int/2addr v5, p1

    goto :goto_3

    .line 19
    :cond_5
    iget p1, p0, Lcom/truecaller/common/ui/FlowLayout$a;->c:I

    add-int v5, p1, v2

    .line 20
    :goto_3
    iput v5, p0, Lcom/truecaller/common/ui/FlowLayout$a;->f:I

    .line 21
    iget p1, p0, Lcom/truecaller/common/ui/FlowLayout$a;->d:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/common/ui/FlowLayout$a;->g:I

    .line 22
    iget p1, p0, Lcom/truecaller/common/ui/FlowLayout$a;->c:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/truecaller/common/ui/FlowLayout$a;->c:I

    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/truecaller/common/ui/FlowLayout$a;->a:I

    .line 2
    iget-object p1, p0, Lcom/truecaller/common/ui/FlowLayout$a;->h:Lcom/truecaller/common/ui/FlowLayout;

    .line 3
    sget-object v0, Ln3/k/i/s;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 5
    :goto_0
    iput-boolean v0, p0, Lcom/truecaller/common/ui/FlowLayout$a;->b:Z

    .line 6
    iput v1, p0, Lcom/truecaller/common/ui/FlowLayout$a;->c:I

    .line 7
    iput v1, p0, Lcom/truecaller/common/ui/FlowLayout$a;->d:I

    .line 8
    iput v1, p0, Lcom/truecaller/common/ui/FlowLayout$a;->e:I

    return-void
.end method
