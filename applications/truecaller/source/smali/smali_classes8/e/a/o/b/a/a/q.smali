.class public final Le/a/o/b/a/a/q;
.super Le/a/o/b/a/a/c;
.source "SourceFile"


# instance fields
.field public final a:Le/a/o/o/k;

.field public final b:Le/a/o/b/a/a/r;

.field public final c:Le/a/o/b/a/a/p;


# direct methods
.method public constructor <init>(Le/a/o/o/k;Le/a/o/b/a/a/r;Le/a/o/b/a/a/p;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "theme"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/o/o/k;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "binding.root"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Le/a/o/b/a/a/c;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/o/b/a/a/q;->a:Le/a/o/o/k;

    iput-object p2, p0, Le/a/o/b/a/a/q;->b:Le/a/o/b/a/a/r;

    iput-object p3, p0, Le/a/o/b/a/a/q;->c:Le/a/o/b/a/a/p;

    return-void
.end method


# virtual methods
.method public N4(Le/a/o/b/a/a/e;)V
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Le/a/o/b/a/a/e$b;

    .line 2
    iget-object p1, p1, Le/a/o/b/a/a/e$b;->a:Le/a/o/n/a;

    .line 3
    iget-object v0, p0, Le/a/o/b/a/a/q;->a:Le/a/o/o/k;

    .line 4
    iget-object v1, v0, Le/a/o/o/k;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    new-instance v2, Le/a/o/b/a/a/q$a;

    invoke-direct {v2, p0, p1}, Le/a/o/b/a/a/q$a;-><init>(Le/a/o/b/a/a/q;Le/a/o/n/a;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v1, p0, Le/a/o/b/a/a/q;->b:Le/a/o/b/a/a/r;

    invoke-static {v0, v1}, Le/a/m0/a1$k;->a(Le/a/o/o/k;Le/a/o/b/a/a/r;)V

    .line 7
    iget-object v1, v0, Le/a/o/o/k;->c:Landroid/widget/TextView;

    const-string v2, "messageTextView"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p1, p1, Le/a/o/n/a;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, v0, Le/a/o/o/k;->b:Landroid/widget/ImageView;

    const-string v0, "editMessageIcon"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    return-void
.end method
