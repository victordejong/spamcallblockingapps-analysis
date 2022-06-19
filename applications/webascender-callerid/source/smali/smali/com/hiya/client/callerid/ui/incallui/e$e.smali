.class final Lcom/hiya/client/callerid/ui/incallui/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/incallui/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/u<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/ui/incallui/e;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/e;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/e$e;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/e$e;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final b(Ljava/lang/Boolean;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e$e;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v1, Lcom/hiya/client/callerid/ui/p;->H:I

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const-string v1, "isMuted"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/hiya/client/callerid/ui/o;->j:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/hiya/client/callerid/ui/o;->i:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e$e;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    sget v1, Lcom/hiya/client/callerid/ui/p;->X:I

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 3
    iget-object v2, p0, Lcom/hiya/client/callerid/ui/incallui/e$e;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    sget v3, Lcom/hiya/client/callerid/ui/o;->j:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/hiya/client/callerid/ui/o;->i:I

    .line 5
    :goto_1
    invoke-static {v2, v3}, Landroidx/core/content/a;->f(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v3, v2, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/e$e;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/incallui/e;->a1(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 8
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/incallui/e$e;->a:Lcom/hiya/client/callerid/ui/incallui/e;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/hiya/client/callerid/ui/m;->c:I

    goto :goto_2

    :cond_2
    sget p1, Lcom/hiya/client/callerid/ui/m;->b:I

    .line 10
    :goto_2
    invoke-static {v1, p1}, Landroidx/core/content/a;->d(Landroid/content/Context;I)I

    move-result p1

    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method
