.class public final Le/a/m/b$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/m/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/m/b$a;->a:I

    iput-object p2, p0, Le/a/m/b$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Le/a/m/b$a;->a:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/m/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/m/b;

    invoke-virtual {p1}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_1
    iget-object p1, p0, Le/a/m/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/m/b;

    .line 4
    iget-object p1, p1, Le/a/m/b;->a:Le/a/m/a0;

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Le/a/m/a0;->b()V

    .line 6
    :cond_2
    iget-object p1, p0, Le/a/m/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/m/b;

    invoke-virtual {p1}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    return-void

    .line 7
    :cond_3
    iget-object p1, p0, Le/a/m/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/m/b;

    .line 8
    iget-object p1, p1, Le/a/m/b;->a:Le/a/m/a0;

    if-eqz p1, :cond_4

    .line 9
    invoke-interface {p1}, Le/a/m/a0;->a()V

    .line 10
    :cond_4
    iget-object p1, p0, Le/a/m/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/m/b;

    invoke-virtual {p1}, Ln3/r/a/k;->dismissAllowingStateLoss()V

    return-void
.end method
