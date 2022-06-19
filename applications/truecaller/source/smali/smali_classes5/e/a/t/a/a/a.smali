.class public final Le/a/t/a/a/a;
.super Le/m/a/g/e/d;
.source "SourceFile"


# instance fields
.field public final o:Ls1/g;

.field public final p:Ls1/g;

.field public final q:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/t/a/a/b;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/m/a/g/e/d;-><init>(Landroid/content/Context;)V

    .line 2
    sget p1, Lcom/truecaller/android/truemoji/R$id;->body:I

    invoke-static {p0, p1}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/t/a/a/a;->o:Ls1/g;

    .line 3
    sget v0, Lcom/truecaller/android/truemoji/R$id;->btnCancel:I

    invoke-static {p0, v0}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/t/a/a/a;->p:Ls1/g;

    .line 4
    sget v1, Lcom/truecaller/android/truemoji/R$id;->btnContinue:I

    invoke-static {p0, v1}, Le/a/p5/s0/f;->r(Landroid/app/Dialog;I)Ls1/g;

    move-result-object v1

    iput-object v1, p0, Le/a/t/a/a/a;->q:Ls1/g;

    .line 5
    sget v2, Lcom/truecaller/android/truemoji/R$layout;->dialog_tenor_consent:I

    invoke-virtual {p0, v2}, Le/m/a/g/e/d;->setContentView(I)V

    .line 6
    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v2, "body"

    .line 7
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 8
    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 9
    new-instance v0, Le/a/t/a/a/a$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0}, Le/a/t/a/a/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 11
    new-instance v0, Le/a/t/a/a/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Le/a/t/a/a/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    new-instance p1, Le/a/t/a/a/a$b;

    invoke-direct {p1, p0, p2}, Le/a/t/a/a/a$b;-><init>(Le/a/t/a/a/a;Le/a/t/a/a/b;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
