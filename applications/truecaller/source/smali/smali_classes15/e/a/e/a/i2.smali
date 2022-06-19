.class public Le/a/e/a/i2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public final d:I

.field public e:Z

.field public f:Landroid/app/Dialog;

.field public g:Landroid/view/View;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/e/a/i2;->a:Landroid/content/Context;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Le/a/e/a/i2;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Le/a/e/a/i2;->d:I

    .line 5
    iput-boolean p4, p0, Le/a/e/a/i2;->e:Z

    .line 6
    iput p2, p0, Le/a/e/a/i2;->k:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/a/i2;->f:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/a/e/a/i2;->f:Landroid/app/Dialog;

    .line 4
    iput-object v0, p0, Le/a/e/a/i2;->g:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public final b(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/a/i2;->g:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {p2}, Lw3/c/a/a/a/h;->m(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/e/a/i2;->f:Landroid/app/Dialog;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    move-object p1, p0

    check-cast p1, Le/a/e/a/j2;

    .line 3
    iget-object p1, p1, Le/a/e/a/j2;->m:Le/a/e/a/k2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a060d

    if-ne p1, v0, :cond_0

    .line 2
    move-object p1, p0

    check-cast p1, Le/a/e/a/j2;

    .line 3
    iget-object p1, p1, Le/a/e/a/j2;->m:Le/a/e/a/k2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const v0, 0x7f0a0609

    if-ne p1, v0, :cond_1

    .line 4
    move-object p1, p0

    check-cast p1, Le/a/e/a/j2;

    .line 5
    iget-object p1, p1, Le/a/e/a/j2;->m:Le/a/e/a/k2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const v0, 0x7f0a0608

    if-ne p1, v0, :cond_2

    .line 6
    move-object p1, p0

    check-cast p1, Le/a/e/a/j2;

    .line 7
    iget-object p1, p1, Le/a/e/a/j2;->m:Le/a/e/a/k2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0}, Le/a/e/a/i2;->a()V

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method
