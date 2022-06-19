.class public final Le/a/h/b/c$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/c;-><init>(Le/a/h/b/j0$a;Landroidx/constraintlayout/widget/ConstraintLayout;)V
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

    iput p1, p0, Le/a/h/b/c$a;->a:I

    iput-object p2, p0, Le/a/h/b/c$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Le/a/h/b/c$a;->a:I

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Le/a/h/b/c$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/h/b/c;

    .line 2
    iget-object p1, p1, Le/a/h/b/c;->s:Le/a/h/b/j0$a;

    .line 3
    invoke-interface {p1}, Le/a/h/b/j0$a;->J7()V

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    iget-object p1, p0, Le/a/h/b/c$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/h/b/c;

    .line 6
    iget-object p1, p1, Le/a/h/b/c;->s:Le/a/h/b/j0$a;

    .line 7
    invoke-interface {p1}, Le/a/h/b/j0$a;->ig()V

    return-void

    .line 8
    :cond_2
    iget-object p1, p0, Le/a/h/b/c$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/h/b/c;

    .line 9
    iget-object p1, p1, Le/a/h/b/c;->s:Le/a/h/b/j0$a;

    .line 10
    invoke-interface {p1}, Le/a/h/b/j0$a;->v2()V

    return-void

    .line 11
    :cond_3
    iget-object p1, p0, Le/a/h/b/c$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/h/b/c;

    .line 12
    iget-object p1, p1, Le/a/h/b/c;->s:Le/a/h/b/j0$a;

    .line 13
    invoke-interface {p1}, Le/a/h/b/j0$a;->c3()V

    return-void

    .line 14
    :cond_4
    iget-object p1, p0, Le/a/h/b/c$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/h/b/c;

    .line 15
    iget-object p1, p1, Le/a/h/b/c;->s:Le/a/h/b/j0$a;

    .line 16
    invoke-interface {p1}, Le/a/h/b/j0$a;->E7()V

    return-void

    .line 17
    :cond_5
    iget-object p1, p0, Le/a/h/b/c$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/h/b/c;

    .line 18
    iget-object p1, p1, Le/a/h/b/c;->s:Le/a/h/b/j0$a;

    .line 19
    invoke-interface {p1}, Le/a/h/b/j0$a;->Nc()V

    return-void
.end method
