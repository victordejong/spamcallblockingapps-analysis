.class public final Le/a/a/h/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/h/q;->y1(ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/h/q;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public constructor <init>(Le/a/a/h/q;ZZZZ)V
    .locals 0

    iput-object p1, p0, Le/a/a/h/q$b;->a:Le/a/a/h/q;

    iput-boolean p2, p0, Le/a/a/h/q$b;->b:Z

    iput-boolean p3, p0, Le/a/a/h/q$b;->c:Z

    iput-boolean p4, p0, Le/a/a/h/q$b;->d:Z

    iput-boolean p5, p0, Le/a/a/h/q$b;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance p1, Ln3/b/f/g0;

    iget-object v0, p0, Le/a/a/h/q$b;->a:Le/a/a/h/q;

    .line 2
    iget-object v0, v0, Le/a/a/h/q;->e:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Le/a/a/h/q$b;->a:Le/a/a/h/q;

    .line 4
    iget-object v1, v1, Le/a/a/h/q;->e:Landroid/view/View;

    const v2, 0x800005

    .line 5
    invoke-direct {p1, v0, v1, v2}, Ln3/b/f/g0;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    const v0, 0x7f0e001e

    .line 6
    invoke-virtual {p1, v0}, Ln3/b/f/g0;->a(I)V

    .line 7
    new-instance v0, Le/a/a/h/q$b$a;

    invoke-direct {v0, p0}, Le/a/a/h/q$b$a;-><init>(Le/a/a/h/q$b;)V

    .line 8
    iput-object v0, p1, Ln3/b/f/g0;->e:Ln3/b/f/g0$b;

    .line 9
    iget-object v0, p1, Ln3/b/f/g0;->b:Ln3/b/e/i/g;

    const v1, 0x7f0a00da

    .line 10
    invoke-virtual {v0, v1}, Ln3/b/e/i/g;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const-string v2, "findItem(R.id.action_remove)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Le/a/a/h/q$b;->b:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0a00bf

    .line 11
    invoke-virtual {v0, v1}, Ln3/b/e/i/g;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const-string v2, "findItem(R.id.action_make_admin)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Le/a/a/h/q$b;->c:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0a00ae

    .line 12
    invoke-virtual {v0, v1}, Ln3/b/e/i/g;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const-string v2, "findItem(R.id.action_dismiss_admin)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Le/a/a/h/q$b;->d:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0a00f4

    .line 13
    invoke-virtual {v0, v1}, Ln3/b/e/i/g;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "findItem(R.id.action_view_profile)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p0, Le/a/a/h/q$b;->e:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 14
    iget-object p1, p1, Ln3/b/f/g0;->d:Ln3/b/e/i/l;

    invoke-virtual {p1}, Ln3/b/e/i/l;->f()V

    return-void
.end method
