.class public final Le/a/r/b/a$b;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/b/a;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZZ)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public constructor <init>(ILjava/lang/Object;ZZ)V
    .locals 0

    iput p1, p0, Le/a/r/b/a$b;->a:I

    iput-object p2, p0, Le/a/r/b/a$b;->b:Ljava/lang/Object;

    iput-boolean p3, p0, Le/a/r/b/a$b;->c:Z

    iput-boolean p4, p0, Le/a/r/b/a$b;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Le/a/r/b/a$b;->a:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Le/a/r/b/a$b;->b:Ljava/lang/Object;

    check-cast p1, Le/a/r/b/a;

    .line 2
    iget-object p1, p1, Le/a/r/b/a;->f:Le/a/r/b/h;

    .line 3
    check-cast p1, Le/a/r/b/n;

    .line 4
    invoke-virtual {p1}, Le/a/r/b/n;->Kj()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/b/i;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/r/b/i;->K0()V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1

    .line 7
    :cond_2
    iget-object p1, p0, Le/a/r/b/a$b;->b:Ljava/lang/Object;

    check-cast p1, Le/a/r/b/a;

    .line 8
    iget-object p1, p1, Le/a/r/b/a;->f:Le/a/r/b/h;

    .line 9
    check-cast p1, Le/a/r/b/n;

    .line 10
    invoke-virtual {p1}, Le/a/r/b/n;->Ij()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Le/a/r/b/n;->Kj()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/b/i;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/r/b/i;->K0()V

    :cond_3
    return-void
.end method
