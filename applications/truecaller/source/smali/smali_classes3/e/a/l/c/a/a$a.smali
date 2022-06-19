.class public final Le/a/l/c/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/l/c/a/a$a;->a:I

    iput-object p2, p0, Le/a/l/c/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Le/a/l/c/a/a$a;->a:I

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Le/a/l/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/c/a/a;

    invoke-virtual {p1}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/l/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/c/a/a;

    .line 3
    iget-object p1, p1, Le/a/l/c/a/a;->f:Ls1/z/b/l;

    .line 4
    sget-object v0, Lcom/truecaller/ghost_call/ScheduleDuration;->THIRTY_MINUTES:Lcom/truecaller/ghost_call/ScheduleDuration;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 5
    throw p1

    .line 6
    :cond_2
    iget-object p1, p0, Le/a/l/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/c/a/a;

    invoke-virtual {p1}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 7
    :cond_3
    iget-object p1, p0, Le/a/l/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/c/a/a;

    .line 8
    iget-object p1, p1, Le/a/l/c/a/a;->f:Ls1/z/b/l;

    .line 9
    sget-object v0, Lcom/truecaller/ghost_call/ScheduleDuration;->FIVE_MINUTES:Lcom/truecaller/ghost_call/ScheduleDuration;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 10
    :cond_4
    iget-object p1, p0, Le/a/l/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/c/a/a;

    invoke-virtual {p1}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 11
    :cond_5
    iget-object p1, p0, Le/a/l/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/c/a/a;

    .line 12
    iget-object p1, p1, Le/a/l/c/a/a;->f:Ls1/z/b/l;

    .line 13
    sget-object v0, Lcom/truecaller/ghost_call/ScheduleDuration;->ONE_MINUTE:Lcom/truecaller/ghost_call/ScheduleDuration;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 14
    :cond_6
    iget-object p1, p0, Le/a/l/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/c/a/a;

    invoke-virtual {p1}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 15
    :cond_7
    iget-object p1, p0, Le/a/l/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/c/a/a;

    .line 16
    iget-object p1, p1, Le/a/l/c/a/a;->f:Ls1/z/b/l;

    .line 17
    sget-object v0, Lcom/truecaller/ghost_call/ScheduleDuration;->TEN_SECONDS:Lcom/truecaller/ghost_call/ScheduleDuration;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 18
    :cond_8
    iget-object p1, p0, Le/a/l/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/c/a/a;

    invoke-virtual {p1}, Ln3/r/a/k;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 19
    :cond_9
    iget-object p1, p0, Le/a/l/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/l/c/a/a;

    .line 20
    iget-object p1, p1, Le/a/l/c/a/a;->f:Ls1/z/b/l;

    .line 21
    sget-object v0, Lcom/truecaller/ghost_call/ScheduleDuration;->IMMEDIATE:Lcom/truecaller/ghost_call/ScheduleDuration;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
