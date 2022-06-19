.class public final Le/a/a/i/a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/a/i/d;


# static fields
.field public static final synthetic d:[Ls1/a/l;


# instance fields
.field public final a:Le/a/p5/x0/b;

.field public b:Le/a/b0/a/b/a;

.field public final c:Landroid/view/View;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/a/i/a;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/insights/ui/databinding/ItemOtpCardBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/a/i/a;->d:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/a/i/a;->c:Landroid/view/View;

    .line 2
    new-instance v0, Le/a/p5/x0/b;

    new-instance v1, Le/a/a/i/a$b;

    invoke-direct {v1}, Le/a/a/i/a$b;-><init>()V

    invoke-direct {v0, v1}, Le/a/p5/x0/b;-><init>(Ls1/z/b/l;)V

    iput-object v0, p0, Le/a/a/i/a;->a:Le/a/p5/x0/b;

    .line 3
    new-instance v0, Le/a/b0/a/b/a;

    new-instance v1, Le/a/p5/i0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "view.context"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    .line 4
    invoke-virtual {p0}, Le/a/a/i/a;->N4()Le/a/c/a/g/p0;

    move-result-object v1

    iget-object v1, v1, Le/a/c/a/g/p0;->e:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {v1, v0}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 5
    iput-object v0, p0, Le/a/a/i/a;->b:Le/a/b0/a/b/a;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v0, p1

    move-object v1, p2

    move-object v2, p0

    .line 6
    invoke-static/range {v0 .. v5}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 7
    invoke-static/range {v0 .. v5}, Le/m/d/y/n;->f1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 8
    invoke-virtual {p0}, Le/a/a/i/a;->N4()Le/a/c/a/g/p0;

    move-result-object v0

    .line 9
    iget-object v1, v0, Le/a/c/a/g/p0;->a:Lcom/google/android/material/button/MaterialButton;

    new-instance v2, Le/a/a/i/a$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, p2}, Le/a/a/i/a$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, v0, Le/a/c/a/g/p0;->b:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Le/a/a/i/a$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p2}, Le/a/a/i/a$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public final N4()Le/a/c/a/g/p0;
    .locals 3

    iget-object v0, p0, Le/a/a/i/a;->a:Le/a/p5/x0/b;

    sget-object v1, Le/a/a/i/a;->d:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Le/a/p5/x0/b;->a(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object v0

    check-cast v0, Le/a/c/a/g/p0;

    return-object v0
.end method

.method public T2(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/i/a;->N4()Le/a/c/a/g/p0;

    move-result-object v0

    iget-object v0, v0, Le/a/c/a/g/p0;->a:Lcom/google/android/material/button/MaterialButton;

    const-string v1, "binding.copyButton"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 2
    invoke-virtual {p0}, Le/a/a/i/a;->N4()Le/a/c/a/g/p0;

    move-result-object v0

    iget-object v0, v0, Le/a/c/a/g/p0;->c:Landroid/widget/TextView;

    const-string v1, "binding.otpLabel"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "itemView"

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f120a26

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f120d51

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public W1(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/i/a;->N4()Le/a/c/a/g/p0;

    move-result-object v0

    iget-object v0, v0, Le/a/c/a/g/p0;->d:Landroid/widget/TextView;

    const-string v1, "binding.otpNumber"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public X1(Ljava/lang/String;)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/i/a;->N4()Le/a/c/a/g/p0;

    move-result-object v0

    iget-object v0, v0, Le/a/c/a/g/p0;->f:Landroid/widget/TextView;

    const-string v1, "binding.senderText"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 4

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/i/a;->b:Le/a/b0/a/b/a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    return-void
.end method

.method public m3(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/i/a;->b:Le/a/b0/a/b/a;

    .line 2
    invoke-virtual {v0, p1}, Le/a/b0/a/b/a;->pk(Z)V

    return-void
.end method
