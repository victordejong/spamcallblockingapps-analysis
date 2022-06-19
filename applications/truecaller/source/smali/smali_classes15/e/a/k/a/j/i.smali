.class public final Le/a/k/a/j/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/j/i;->a:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/k/a/j/i;->a:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    invoke-virtual {p1}, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;->getGotItClickListener()Ls1/z/b/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/k/a/j/i;->a:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;->h(JLs1/u/g;)V

    return-void
.end method
