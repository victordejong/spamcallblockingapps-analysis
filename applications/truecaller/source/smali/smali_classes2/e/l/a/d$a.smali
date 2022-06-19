.class public Le/l/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/l/a/d;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Le/l/a/c;Le/l/a/d$l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/l/a/d;


# direct methods
.method public constructor <init>(Le/l/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/l/a/d$a;->a:Le/l/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Le/l/a/d$a;->a:Le/l/a/d;

    iget-object v0, p1, Le/l/a/d;->r0:Le/l/a/d$l;

    if-eqz v0, :cond_5

    iget-object v0, p1, Le/l/a/d;->V:[I

    if-eqz v0, :cond_5

    .line 2
    iget-boolean v0, p1, Le/l/a/d;->c:Z

    if-nez v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p1, Le/l/a/d;->r:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Le/l/a/d$a;->a:Le/l/a/d;

    iget-object v1, v1, Le/l/a/d;->r:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    iget-object v2, p0, Le/l/a/d$a;->a:Le/l/a/d;

    iget v3, v2, Le/l/a/d;->m0:F

    float-to-int v3, v3

    iget v2, v2, Le/l/a/d;->n0:F

    float-to-int v2, v2

    invoke-virtual {p1, v0, v1, v3, v2}, Le/l/a/d;->c(IIII)D

    move-result-wide v0

    iget-object p1, p0, Le/l/a/d$a;->a:Le/l/a/d;

    iget v2, p1, Le/l/a/d;->i0:F

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 5
    :goto_0
    iget-object v3, p1, Le/l/a/d;->V:[I

    aget v4, v3, v2

    aget v3, v3, v1

    iget v5, p1, Le/l/a/d;->m0:F

    float-to-int v5, v5

    iget v6, p1, Le/l/a/d;->n0:F

    float-to-int v6, v6

    invoke-virtual {p1, v4, v3, v5, v6}, Le/l/a/d;->c(IIII)D

    move-result-wide v3

    .line 6
    iget-object p1, p0, Le/l/a/d$a;->a:Le/l/a/d;

    iget v5, p1, Le/l/a/d;->T:F

    float-to-double v5, v5

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 7
    iput-boolean v2, p1, Le/l/a/d;->c:Z

    .line 8
    iget-object v0, p1, Le/l/a/d;->r0:Le/l/a/d$l;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p1, v1}, Le/l/a/d;->b(Z)V

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    .line 11
    iget-object p1, p1, Le/l/a/d;->r0:Le/l/a/d$l;

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 13
    :cond_4
    iget-boolean v0, p1, Le/l/a/d;->K:Z

    if-eqz v0, :cond_5

    .line 14
    iput-boolean v2, p1, Le/l/a/d;->c:Z

    .line 15
    iget-object v0, p1, Le/l/a/d;->r0:Le/l/a/d$l;

    .line 16
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p1, v2}, Le/l/a/d;->b(Z)V

    :cond_5
    :goto_2
    return-void
.end method
