.class public final Lcom/hiya/client/callerid/ui/a0/h$b;
.super Lf/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/a0/h;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/k/a/c<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/ui/a0/h;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/a0/h;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/h$b;->a:Lcom/hiya/client/callerid/ui/a0/h;

    invoke-direct {p0, p2}, Lf/k/a/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)F
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/a0/h$b;->c(Landroid/view/View;)F

    move-result p1

    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;F)V
    .locals 0

    .line 1
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/hiya/client/callerid/ui/a0/h$b;->d(Landroid/view/View;F)V

    return-void
.end method

.method public c(Landroid/view/View;)F
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/a0/h$b;->a:Lcom/hiya/client/callerid/ui/a0/h;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/a0/h;->l(Lcom/hiya/client/callerid/ui/a0/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float p1, p1

    return p1

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method

.method public d(Landroid/view/View;F)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/a0/h$b;->a:Lcom/hiya/client/callerid/ui/a0/h;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/a0/h;->l(Lcom/hiya/client/callerid/ui/a0/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    float-to-int p2, p2

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/a0/h$b;->a:Lcom/hiya/client/callerid/ui/a0/h;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/a0/h;->l(Lcom/hiya/client/callerid/ui/a0/h;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/hiya/client/callerid/ui/a0/p;->k(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0

    .line 3
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v0
.end method
