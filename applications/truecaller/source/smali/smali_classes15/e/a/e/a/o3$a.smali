.class public final Le/a/e/a/o3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/o3;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/a/o3;


# direct methods
.method public constructor <init>(Le/a/e/a/o3;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/o3$a;->a:Le/a/e/a/o3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Le/a/e/a/o3$a;->a:Le/a/e/a/o3;

    .line 2
    iget-object v0, p1, Le/a/e/a/o3;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "edtPromoDate"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p1, Le/a/e/a/o3;->e:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "edtPromoPeriod"

    .line 5
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v3, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v2, p1, Le/a/e/a/o3;->a:Le/a/a/i0;

    const-string v3, "messageSettings"

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    iget-object v5, p1, Le/a/e/a/o3;->b:Le/a/o5/b0;

    if-eqz v5, :cond_3

    const-string v6, "MMM dd, yyyy"

    invoke-interface {v5, v0, v6}, Le/a/o5/b0;->p(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    invoke-interface {v2, v5, v6}, Le/a/a/i0;->C0(J)V

    .line 8
    iget-object v0, p1, Le/a/e/a/o3;->a:Le/a/a/i0;

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Le/a/a/i0;->E(I)V

    .line 9
    invoke-virtual {p1}, Ln3/r/a/k;->dismiss()V

    goto :goto_2

    .line 10
    :cond_2
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_3
    const-string p1, "dateHelper"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_4
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 12
    :cond_5
    :goto_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Values should not be empty nor duration less than 1 day"

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method
