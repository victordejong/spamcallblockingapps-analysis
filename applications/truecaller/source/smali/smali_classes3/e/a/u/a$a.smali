.class public final Le/a/u/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/u/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/u/a$a;->a:I

    iput-object p2, p0, Le/a/u/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget p1, p0, Le/a/u/a$a;->a:I

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    throw p1

    .line 1
    :pswitch_0
    iget-object p1, p0, Le/a/u/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/u/a;

    invoke-virtual {p1}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void

    .line 2
    :pswitch_1
    iget-object p1, p0, Le/a/u/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/u/a;

    invoke-virtual {p1}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/u/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/u/a;

    .line 4
    iget-object p1, p1, Le/a/u/a;->h:Le/a/u/a$b;

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Le/a/u/a$b;->A5()V

    :cond_2
    return-void

    .line 6
    :pswitch_2
    iget-object p1, p0, Le/a/u/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/u/a;

    invoke-virtual {p1}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 7
    :cond_3
    iget-object p1, p0, Le/a/u/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/u/a;

    .line 8
    iget-object p1, p1, Le/a/u/a;->h:Le/a/u/a$b;

    if-eqz p1, :cond_4

    .line 9
    invoke-interface {p1}, Le/a/u/a$b;->o5()V

    :cond_4
    return-void

    .line 10
    :pswitch_3
    iget-object p1, p0, Le/a/u/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/u/a;

    invoke-virtual {p1}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 11
    :cond_5
    iget-object p1, p0, Le/a/u/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/u/a;

    .line 12
    iget-object p1, p1, Le/a/u/a;->h:Le/a/u/a$b;

    if-eqz p1, :cond_6

    .line 13
    invoke-interface {p1}, Le/a/u/a$b;->Y5()V

    :cond_6
    return-void

    .line 14
    :pswitch_4
    iget-object p1, p0, Le/a/u/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/u/a;

    invoke-virtual {p1}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 15
    :cond_7
    iget-object p1, p0, Le/a/u/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/u/a;

    .line 16
    iget-object p1, p1, Le/a/u/a;->h:Le/a/u/a$b;

    if-eqz p1, :cond_8

    .line 17
    invoke-interface {p1}, Le/a/u/a$b;->d5()V

    :cond_8
    return-void

    .line 18
    :pswitch_5
    iget-object p1, p0, Le/a/u/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/u/a;

    invoke-virtual {p1}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 19
    :cond_9
    iget-object p1, p0, Le/a/u/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/u/a;

    .line 20
    iget-object p1, p1, Le/a/u/a;->h:Le/a/u/a$b;

    if-eqz p1, :cond_a

    .line 21
    invoke-interface {p1}, Le/a/u/a$b;->U3()V

    :cond_a
    return-void

    .line 22
    :pswitch_6
    iget-object p1, p0, Le/a/u/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/u/a;

    invoke-virtual {p1}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 23
    :cond_b
    iget-object p1, p0, Le/a/u/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/u/a;

    .line 24
    iget-object p1, p1, Le/a/u/a;->h:Le/a/u/a$b;

    if-eqz p1, :cond_c

    .line 25
    invoke-interface {p1}, Le/a/u/a$b;->r4()V

    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
