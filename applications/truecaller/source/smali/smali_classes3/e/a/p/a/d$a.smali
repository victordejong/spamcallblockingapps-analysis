.class public final Le/a/p/a/d$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/p/a/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/p/a/d$a;->a:I

    iput-object p2, p0, Le/a/p/a/d$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Le/a/p/a/d$a;->a:I

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1
    iget-object p1, p0, Le/a/p/a/d$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/d;

    invoke-virtual {p1}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/p/a/d$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/d;

    .line 3
    iget-object p1, p1, Le/a/p/a/d;->d:Le/a/p/a/d$b;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Le/a/p/a/d$b;->ti()V

    :cond_1
    return-void

    :cond_2
    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_3
    iget-object p1, p0, Le/a/p/a/d$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/d;

    invoke-virtual {p1}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 7
    :cond_4
    iget-object p1, p0, Le/a/p/a/d$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/d;

    .line 8
    iget-object p1, p1, Le/a/p/a/d;->d:Le/a/p/a/d$b;

    if-eqz p1, :cond_5

    .line 9
    invoke-interface {p1}, Le/a/p/a/d$b;->Pg()V

    :cond_5
    return-void

    .line 10
    :cond_6
    iget-object p1, p0, Le/a/p/a/d$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/d;

    invoke-virtual {p1}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 11
    :cond_7
    iget-object p1, p0, Le/a/p/a/d$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/p/a/d;

    .line 12
    iget-object p1, p1, Le/a/p/a/d;->d:Le/a/p/a/d$b;

    if-eqz p1, :cond_8

    .line 13
    invoke-interface {p1}, Le/a/p/a/d$b;->Jr()V

    :cond_8
    return-void
.end method
