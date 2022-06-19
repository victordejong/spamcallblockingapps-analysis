.class public final Le/a/k/a/f/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/videocallerid/ui/preview/PreviewActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/preview/PreviewActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/f/e;->a:Lcom/truecaller/videocallerid/ui/preview/PreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/k/a/f/e;->a:Lcom/truecaller/videocallerid/ui/preview/PreviewActivity;

    .line 2
    iget-object v1, v0, Lcom/truecaller/videocallerid/ui/preview/PreviewActivity;->i:Le/a/k/a/f/j;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    iget-object v0, v0, Lcom/truecaller/videocallerid/ui/preview/PreviewActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v3, "view"

    .line 4
    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v3, p1, Lcom/truecaller/videocallerid/ui/preview/PreviewActions;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    check-cast v2, Lcom/truecaller/videocallerid/ui/preview/PreviewActions;

    invoke-virtual {v1, v0, v2}, Le/a/k/a/f/j;->Nj(Ljava/lang/String;Lcom/truecaller/videocallerid/ui/preview/PreviewActions;)V

    return-void

    :cond_1
    const-string p1, "screenMode"

    .line 5
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string p1, "presenter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
