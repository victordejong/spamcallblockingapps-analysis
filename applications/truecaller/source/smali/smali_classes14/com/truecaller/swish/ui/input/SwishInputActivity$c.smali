.class public final Lcom/truecaller/swish/ui/input/SwishInputActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/swish/ui/input/SwishInputActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/swish/ui/input/SwishInputActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/swish/ui/input/SwishInputActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/swish/ui/input/SwishInputActivity$c;->a:Lcom/truecaller/swish/ui/input/SwishInputActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/truecaller/swish/ui/input/SwishInputActivity$c;->a:Lcom/truecaller/swish/ui/input/SwishInputActivity;

    invoke-static {p1}, Lcom/truecaller/swish/ui/input/SwishInputActivity;->pa(Lcom/truecaller/swish/ui/input/SwishInputActivity;)Le/a/f5/f/a;

    move-result-object p1

    iget-object p1, p1, Le/a/f5/f/a;->b:Landroid/widget/EditText;

    const-string v0, "binding.amountEditText"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    const-string v0, ""

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/truecaller/swish/ui/input/SwishInputActivity$c;->a:Lcom/truecaller/swish/ui/input/SwishInputActivity;

    invoke-static {v1}, Lcom/truecaller/swish/ui/input/SwishInputActivity;->pa(Lcom/truecaller/swish/ui/input/SwishInputActivity;)Le/a/f5/f/a;

    move-result-object v1

    iget-object v1, v1, Le/a/f5/f/a;->e:Landroid/widget/EditText;

    const-string v2, "binding.messageEditText"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/truecaller/swish/ui/input/SwishInputActivity$c;->a:Lcom/truecaller/swish/ui/input/SwishInputActivity;

    .line 4
    iget-object v1, v1, Lcom/truecaller/swish/ui/input/SwishInputActivity;->d:Le/a/f5/h/a/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    const-string v3, "amount"

    .line 5
    invoke-static {p1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "message"

    invoke-static {v0, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1, p1}, Le/a/f5/h/a/e;->Hj(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 7
    iget-object p1, v1, Le/a/f5/h/a/e;->d:Le/a/f5/a;

    invoke-interface {p1}, Le/a/f5/a;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, v1, Le/a/f5/h/a/e;->d:Le/a/f5/a;

    iget-object v5, v1, Le/a/f5/h/a/e;->b:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-interface {p1, v5, v3, v4, v0}, Le/a/f5/a;->h(Ljava/lang/String;DLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    iget-object v2, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/f5/h/a/d;

    if-eqz v2, :cond_4

    invoke-interface {v2, p1}, Le/a/f5/h/a/d;->b8(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "payeeNumber"

    .line 10
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 11
    :cond_3
    iget-object p1, v1, Le/a/f5/h/a/e;->e:Le/a/f5/i/b;

    invoke-virtual {p1}, Le/a/f5/i/b;->a()Z

    move-result p1

    if-nez p1, :cond_4

    .line 12
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f5/h/a/d;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Le/a/f5/h/a/d;->v8()V

    .line 13
    :cond_4
    :goto_1
    iget-object p1, v1, Le/a/f5/h/a/e;->f:Le/a/q2/a;

    new-instance v2, Le/a/f5/e/a;

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v0, v3, v4}, Le/a/f5/e/a;-><init>(ZD)V

    invoke-interface {p1, v2}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 14
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f5/h/a/d;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Le/a/f5/h/a/d;->finish()V

    :cond_5
    return-void

    :cond_6
    const-string p1, "presenter"

    .line 15
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
