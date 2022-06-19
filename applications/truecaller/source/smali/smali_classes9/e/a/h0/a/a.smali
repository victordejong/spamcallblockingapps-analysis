.class public final Le/a/h0/a/a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public final f:Ls1/g;

.field public final g:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 2
    new-instance v0, Le/a/h0/a/a$c;

    invoke-direct {v0, p1}, Le/a/h0/a/a$c;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/h0/a/a;->a:Ls1/g;

    .line 3
    new-instance v0, Le/a/h0/a/a$a;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1}, Le/a/h0/a/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/h0/a/a;->b:Ls1/g;

    .line 4
    new-instance v0, Le/a/h0/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Le/a/h0/a/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/h0/a/a;->c:Ls1/g;

    .line 5
    new-instance v0, Le/a/h0/a/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Le/a/h0/a/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/h0/a/a;->d:Ls1/g;

    .line 6
    new-instance v0, Le/a/h0/a/a$a;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1}, Le/a/h0/a/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/h0/a/a;->e:Ls1/g;

    .line 7
    new-instance v0, Le/a/h0/a/a$d;

    invoke-direct {v0, p1}, Le/a/h0/a/a$d;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/h0/a/a;->f:Ls1/g;

    .line 8
    new-instance v0, Le/a/h0/a/a$b;

    invoke-direct {v0, p1}, Le/a/h0/a/a$b;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h0/a/a;->g:Ls1/g;

    return-void
.end method


# virtual methods
.method public final N4()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Le/a/h0/a/a;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final O4()Lcom/truecaller/ui/view/TintedImageView;
    .locals 1

    iget-object v0, p0, Le/a/h0/a/a;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/ui/view/TintedImageView;

    return-object v0
.end method

.method public final P4()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Le/a/h0/a/a;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final Q4()Landroidx/appcompat/widget/SwitchCompat;
    .locals 1

    iget-object v0, p0, Le/a/h0/a/a;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    return-object v0
.end method
