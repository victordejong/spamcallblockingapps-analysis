.class public final Le/a/c/a/c/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/c/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/c/a/c/a/a$a;->a:I

    iput-object p2, p0, Le/a/c/a/c/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Le/a/c/a/c/a/a$a;->a:I

    const-string v0, "analyticsManager"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_1

    .line 1
    iget-object p1, p0, Le/a/c/a/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/c/a/a;

    .line 2
    iput-boolean v2, p1, Le/a/c/a/c/a/a;->d:Z

    .line 3
    invoke-virtual {p1}, Le/a/c/a/c/a/a;->OA()Le/a/c/c0/o;

    move-result-object p1

    invoke-interface {p1, v2}, Le/a/c/c0/o;->q(Z)V

    .line 4
    iget-object p1, p0, Le/a/c/a/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/c/a/a;

    invoke-virtual {p1}, Le/a/c/a/c/a/a;->OA()Le/a/c/c0/o;

    move-result-object p1

    sget-object v2, Lcom/truecaller/insights/utils/HideTrxTempState;->HIDDEN:Lcom/truecaller/insights/utils/HideTrxTempState;

    invoke-interface {p1, v2}, Le/a/c/c0/o;->M(Lcom/truecaller/insights/utils/HideTrxTempState;)V

    .line 5
    iget-object p1, p0, Le/a/c/a/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/c/a/a;

    .line 6
    iget-object p1, p1, Le/a/c/a/c/a/a;->b:Le/a/c/e/c;

    if-eqz p1, :cond_0

    .line 7
    sget-object v0, Le/a/c/a/c/i/a;->i:Le/a/c/a/c/i/a;

    .line 8
    sget-object v0, Le/a/c/a/c/i/a;->c:Le/a/c/r/d/b;

    .line 9
    invoke-interface {p1, v0}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 10
    iget-object p1, p0, Le/a/c/a/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/c/a/a;

    invoke-virtual {p1}, Le/m/a/g/e/e;->dismiss()V

    return-void

    .line 11
    :cond_0
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_1
    throw v1

    .line 13
    :cond_2
    iget-object p1, p0, Le/a/c/a/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/c/a/a;

    .line 14
    iput-boolean v2, p1, Le/a/c/a/c/a/a;->d:Z

    .line 15
    invoke-virtual {p1}, Le/a/c/a/c/a/a;->OA()Le/a/c/c0/o;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Le/a/c/c0/o;->q(Z)V

    .line 16
    iget-object p1, p0, Le/a/c/a/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/c/a/a;

    invoke-virtual {p1}, Le/a/c/a/c/a/a;->OA()Le/a/c/c0/o;

    move-result-object p1

    sget-object v2, Lcom/truecaller/insights/utils/HideTrxTempState;->HIDDEN:Lcom/truecaller/insights/utils/HideTrxTempState;

    invoke-interface {p1, v2}, Le/a/c/c0/o;->M(Lcom/truecaller/insights/utils/HideTrxTempState;)V

    .line 17
    iget-object p1, p0, Le/a/c/a/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/c/a/a;

    .line 18
    iget-object p1, p1, Le/a/c/a/c/a/a;->b:Le/a/c/e/c;

    if-eqz p1, :cond_3

    .line 19
    sget-object v0, Le/a/c/a/c/i/a;->i:Le/a/c/a/c/i/a;

    .line 20
    sget-object v0, Le/a/c/a/c/i/a;->d:Le/a/c/r/d/b;

    .line 21
    invoke-interface {p1, v0}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 22
    iget-object p1, p0, Le/a/c/a/c/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/c/a/a;

    invoke-virtual {p1}, Le/m/a/g/e/e;->dismiss()V

    return-void

    .line 23
    :cond_3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
