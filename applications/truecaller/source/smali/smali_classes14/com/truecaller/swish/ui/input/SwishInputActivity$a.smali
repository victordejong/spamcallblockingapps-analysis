.class public final Lcom/truecaller/swish/ui/input/SwishInputActivity$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/swish/ui/input/SwishInputActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/CharSequence;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/swish/ui/input/SwishInputActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/swish/ui/input/SwishInputActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/swish/ui/input/SwishInputActivity$a;->b:Lcom/truecaller/swish/ui/input/SwishInputActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/CharSequence;

    const-string v0, ""

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/truecaller/swish/ui/input/SwishInputActivity$a;->b:Lcom/truecaller/swish/ui/input/SwishInputActivity;

    invoke-static {p1}, Lcom/truecaller/swish/ui/input/SwishInputActivity;->pa(Lcom/truecaller/swish/ui/input/SwishInputActivity;)Le/a/f5/f/a;

    move-result-object p1

    iget-object p1, p1, Le/a/f5/f/a;->b:Landroid/widget/EditText;

    sget v0, Lcom/truecaller/swish/R$string;->swish_input_dialog_hint_amount:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_2

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/truecaller/swish/ui/input/SwishInputActivity$a;->b:Lcom/truecaller/swish/ui/input/SwishInputActivity;

    invoke-static {p1}, Lcom/truecaller/swish/ui/input/SwishInputActivity;->pa(Lcom/truecaller/swish/ui/input/SwishInputActivity;)Le/a/f5/f/a;

    move-result-object p1

    iget-object p1, p1, Le/a/f5/f/a;->b:Landroid/widget/EditText;

    const-string v1, "binding.amountEditText"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
