.class public final Le/a/o/b/a/a/b;
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

    iput-object p1, p0, Le/a/o/b/a/a/b;->a:Le/a/o/o/k;

    iput-object p2, p0, Le/a/o/b/a/a/b;->b:Le/a/o/b/a/a/r;

    iput-object p3, p0, Le/a/o/b/a/a/b;->c:Le/a/o/b/a/a/p;

    return-void
.end method


# virtual methods
.method public N4(Le/a/o/b/a/a/e;)V
    .locals 6

    const-string v0, "item"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    check-cast p1, Le/a/o/b/a/a/e$a;

    .line 2
    iget-object p1, p1, Le/a/o/b/a/a/e$a;->a:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Le/a/o/b/a/a/b;->a:Le/a/o/o/k;

    .line 4
    iget-object v1, v0, Le/a/o/o/k;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5
    new-instance v2, Le/a/o/b/a/a/b$a;

    invoke-direct {v2, p0, p1}, Le/a/o/b/a/a/b$a;-><init>(Le/a/o/b/a/a/b;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v1, p0, Le/a/o/b/a/a/b;->b:Le/a/o/b/a/a/r;

    invoke-static {v0, v1}, Le/a/m0/a1$k;->a(Le/a/o/o/k;Le/a/o/b/a/a/r;)V

    .line 7
    iget-object v1, v0, Le/a/o/o/k;->c:Landroid/widget/TextView;

    const-string v2, "messageTextView"

    .line 8
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "messageTextView.context"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/truecaller/contextcall/R$dimen;->context_call_max_custom_message_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x0

    .line 9
    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0x12

    invoke-direct {v4, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 10
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object p1, v0, Le/a/o/o/k;->b:Landroid/widget/ImageView;

    const-string v0, "editMessageIcon"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    return-void
.end method
