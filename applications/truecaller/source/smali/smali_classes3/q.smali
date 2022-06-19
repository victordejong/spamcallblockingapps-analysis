.class public final Lq;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lq;->a:I

    iput-object p2, p0, Lq;->b:Ljava/lang/Object;

    iput-object p3, p0, Lq;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lq;->a:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Lq;->b:Ljava/lang/Object;

    check-cast p1, Le/a/o/b/a/d;

    invoke-virtual {p1}, Le/a/o/b/a/d;->getOnDeleteListener()Ls1/z/b/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    .line 2
    :cond_0
    iget-object p1, p0, Lq;->c:Ljava/lang/Object;

    check-cast p1, Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 3
    throw p1

    .line 4
    :cond_2
    iget-object p1, p0, Lq;->b:Ljava/lang/Object;

    check-cast p1, Le/a/o/b/a/d;

    invoke-virtual {p1}, Le/a/o/b/a/d;->getOnEditListener()Ls1/z/b/a;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    .line 5
    :cond_3
    iget-object p1, p0, Lq;->c:Ljava/lang/Object;

    check-cast p1, Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
