.class public final Le/a/a/c/e$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/a/c/e$a;->a:I

    iput-object p2, p0, Le/a/a/c/e$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Le/a/a/c/e$a;->a:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    .line 1
    iget-object p1, p0, Le/a/a/c/e$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/e;

    invoke-static {p1, v0}, Le/a/a/c/e;->OA(Le/a/a/c/e;Z)V

    .line 2
    iget-object p1, p0, Le/a/a/c/e$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/e;

    invoke-virtual {p1}, Le/m/a/g/e/e;->dismiss()V

    return-void

    .line 3
    :cond_0
    throw v2

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/a/c/e$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/e;

    .line 5
    iget-object p1, p1, Le/a/a/c/e;->a:Le/a/a/i0;

    if-eqz p1, :cond_3

    .line 6
    invoke-interface {p1, v0}, Le/a/a/i0;->k3(Z)V

    .line 7
    iget-object p1, p0, Le/a/a/c/e$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/e;

    .line 8
    iget-object p1, p1, Le/a/a/c/e;->b:Le/a/q2/i0;

    if-eqz p1, :cond_2

    const-string v0, "conversationPill"

    .line 9
    invoke-interface {p1, v1, v0}, Le/a/q2/i0;->d(ZLjava/lang/String;)V

    .line 10
    iget-object p1, p0, Le/a/a/c/e$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/e;

    invoke-static {p1, v1}, Le/a/a/c/e;->OA(Le/a/a/c/e;Z)V

    .line 11
    iget-object p1, p0, Le/a/a/c/e$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/c/e;

    invoke-virtual {p1}, Le/m/a/g/e/e;->dismiss()V

    return-void

    :cond_2
    const-string p1, "analytics"

    .line 12
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_3
    const-string p1, "settings"

    .line 13
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
