.class public final Le/a/k/a/a/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/a/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/k/a/a/a/a$a;->a:I

    iput-object p2, p0, Le/a/k/a/a/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Le/a/k/a/a/a/a$a;->a:I

    const-string v0, "presenter"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 1
    iget-object p1, p0, Le/a/k/a/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/a/a/a;

    .line 2
    iget-object p1, p1, Le/a/k/a/a/a/a;->f:Le/a/k/a/a/a/d;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/a/a/c;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/a/k/a/a/a/c;->dismiss()V

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/k/a/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/a/a/a;

    invoke-virtual {p1}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    return-void

    .line 6
    :cond_1
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_2
    throw v1

    .line 8
    :cond_3
    iget-object p1, p0, Le/a/k/a/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/k/a/a/a/a;

    .line 9
    iget-object p1, p1, Le/a/k/a/a/a/a;->f:Le/a/k/a/a/a/d;

    if-eqz p1, :cond_5

    .line 10
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/k/a/a/a/c;

    if-eqz v0, :cond_4

    .line 11
    invoke-interface {v0}, Le/a/k/a/a/a/c;->Yb()V

    .line 12
    iget-object p1, p1, Le/a/k/a/a/a/d;->d:Le/a/k/a/a/h;

    .line 13
    iget-object p1, p1, Le/a/k/a/a/h;->a:Le/a/c0/h;

    .line 14
    iget-object p1, p1, Le/a/c0/h;->i:Le/a/c0/c;

    const/4 v2, 0x0

    const/4 v3, 0x3

    .line 15
    invoke-static {p1, v2, v1, v3, v1}, Le/a/c0/f;->d(Le/a/c0/f;ZLs1/z/b/a;ILjava/lang/Object;)V

    .line 16
    invoke-interface {v0}, Le/a/k/a/a/a/c;->dismiss()V

    :cond_4
    return-void

    .line 17
    :cond_5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
