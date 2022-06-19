.class public final Le/a/n/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/n/a$a;->a:I

    iput-object p2, p0, Le/a/n/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Le/a/n/a$a;->a:I

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 1
    iget-object p1, p0, Le/a/n/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/n/a;

    .line 2
    iget-object p1, p1, Le/a/n/a;->j:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    return-void

    :cond_0
    const-string p1, "backupVideosSwitch"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    throw v0

    .line 6
    :cond_2
    iget-object p1, p0, Le/a/n/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/n/a;

    invoke-virtual {p1}, Le/a/n/a;->OA()Le/a/n/y;

    move-result-object p1

    invoke-interface {p1}, Le/a/n/y;->te()Lq3/a/p1;

    return-void

    .line 7
    :cond_3
    iget-object p1, p0, Le/a/n/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/n/a;

    invoke-virtual {p1}, Le/a/n/a;->OA()Le/a/n/y;

    move-result-object p1

    invoke-interface {p1}, Le/a/n/y;->xh()V

    return-void

    .line 8
    :cond_4
    iget-object p1, p0, Le/a/n/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/n/a;

    .line 9
    iget-object p1, p1, Le/a/n/a;->b:Landroidx/appcompat/widget/SwitchCompat;

    if-eqz p1, :cond_5

    .line 10
    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    return-void

    :cond_5
    const-string p1, "backupSwitch"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method
