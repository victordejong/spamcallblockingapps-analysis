.class public final synthetic Le/a/e/a/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$k;


# instance fields
.field public final synthetic a:Le/a/e/a/k3$d;

.field public final synthetic b:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor <init>(Le/a/e/a/k3$d;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/a/e0;->a:Le/a/e/a/k3$d;

    iput-object p2, p0, Le/a/e/a/e0;->b:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final onClose()Z
    .locals 4

    iget-object v0, p0, Le/a/e/a/e0;->a:Le/a/e/a/k3$d;

    iget-object v1, p0, Le/a/e/a/e0;->b:Landroid/widget/TextView;

    .line 1
    sget v2, Le/a/e/a/k3;->s0:I

    .line 2
    iget-object v0, v0, Le/a/e/a/k3$d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 3
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return v3
.end method
