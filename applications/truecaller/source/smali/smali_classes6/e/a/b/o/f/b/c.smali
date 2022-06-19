.class public final Le/a/b/o/f/b/c;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# static fields
.field public static final synthetic c:[Ls1/a/l;


# instance fields
.field public final a:Le/a/p5/x0/b;

.field public b:Le/a/b0/a/b/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/b/o/f/b/c;

    const-string v2, "binding"

    const-string v3, "getBinding$bizmon_release()Lcom/truecaller/bizmon/databinding/ItemGovServicesContactBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/b/o/f/b/c;->c:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 2
    new-instance v0, Le/a/p5/x0/b;

    new-instance v1, Le/a/b/o/f/b/c$a;

    invoke-direct {v1}, Le/a/b/o/f/b/c$a;-><init>()V

    invoke-direct {v0, v1}, Le/a/p5/x0/b;-><init>(Ls1/z/b/l;)V

    iput-object v0, p0, Le/a/b/o/f/b/c;->a:Le/a/p5/x0/b;

    .line 3
    new-instance v0, Le/a/b0/a/b/a;

    new-instance v1, Le/a/p5/i0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "itemView.context"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object v0, p0, Le/a/b/o/f/b/c;->b:Le/a/b0/a/b/a;

    .line 4
    invoke-virtual {p0}, Le/a/b/o/f/b/c;->N4()Le/a/b/m/v0;

    move-result-object p1

    iget-object p1, p1, Le/a/b/m/v0;->a:Lcom/truecaller/common/ui/avatar/AvatarXView;

    iget-object v0, p0, Le/a/b/o/f/b/c;->b:Le/a/b0/a/b/a;

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    return-void
.end method


# virtual methods
.method public final N4()Le/a/b/m/v0;
    .locals 3

    iget-object v0, p0, Le/a/b/o/f/b/c;->a:Le/a/p5/x0/b;

    sget-object v1, Le/a/b/o/f/b/c;->c:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Le/a/p5/x0/b;->a(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v0

    check-cast v0, Le/a/b/m/v0;

    return-object v0
.end method

.method public O4(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/b/o/f/b/c;->N4()Le/a/b/m/v0;

    move-result-object v0

    iget-object v0, v0, Le/a/b/m/v0;->c:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.textDepartment"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/b/o/f/b/c;->N4()Le/a/b/m/v0;

    move-result-object v0

    iget-object v0, v0, Le/a/b/m/v0;->d:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "binding.textName"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
