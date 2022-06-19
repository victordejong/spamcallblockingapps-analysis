.class public final Le/a/e/d2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/d2/o;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/e/d2/o;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/e/d2/m;->a:Le/a/e/d2/o;

    iput-object p3, p0, Le/a/e/d2/m;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Le/a/e/d2/m;->a:Le/a/e/d2/o;

    .line 2
    iget-object v0, p1, Le/a/e/d2/o;->f:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p1, Le/a/e/d2/o;->a:Landroid/widget/LinearLayout;

    const-string v2, "emojiContainer"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_3

    .line 4
    iget-object v5, p1, Le/a/e/d2/o;->a:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_1

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "view"

    .line 5
    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p1, Le/a/e/d2/o;->f:Ljava/lang/String;

    invoke-static {v6, v7}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 6
    invoke-virtual {v5, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 8
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_3
    :goto_1
    iget-object p1, p0, Le/a/e/d2/m;->a:Le/a/e/d2/o;

    .line 10
    iget-object v0, p1, Le/a/e/d2/o;->b:Le/a/e/d2/h;

    if-eqz v0, :cond_5

    .line 11
    iget-object v2, p0, Le/a/e/d2/m;->b:Ljava/lang/String;

    .line 12
    iget-object p1, p1, Le/a/e/d2/o;->f:Ljava/lang/String;

    .line 13
    invoke-static {v2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_4

    move-object v1, v2

    :cond_4
    invoke-interface {v0, v1}, Le/a/e/d2/h;->a(Ljava/lang/String;)V

    :cond_5
    return-void
.end method
