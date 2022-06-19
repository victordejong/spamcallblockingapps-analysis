.class public final synthetic Le/a/e/a/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Le/a/e/a/k3;


# direct methods
.method public synthetic constructor <init>(Le/a/e/a/k3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/a/w1;->a:Le/a/e/a/k3;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 4

    iget-object v0, p0, Le/a/e/a/w1;->a:Le/a/e/a/k3;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    check-cast p1, Landroid/app/Dialog;

    const v1, 0x7f0a0532

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v1, "sequence number"

    .line 3
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    .line 4
    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 5
    iget-object v1, v0, Le/a/e/a/k3;->j:Le/a/r/e/b;

    const/4 v2, 0x0

    const-string v3, "verificationLastSequenceNumber"

    invoke-interface {v1, v3, v2}, Le/a/r/e/b;->getInt(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {v0}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "number will be incremented by 1 during verification"

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
