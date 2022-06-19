.class public final Le/a/c/a/a/a/a/g;
.super Le/a/c/a/a/a/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/a/a/a/e<",
        "Lcom/truecaller/insights/ui/models/AdapterItem$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Le/a/c/a/g/v;

.field public final f:Le/a/c/a/n/c/d/a;


# direct methods
.method public constructor <init>(Le/a/c/a/g/v;Le/a/c/a/n/c/d/a;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collapseState"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p1, Le/a/c/a/g/v;->a:Landroid/widget/FrameLayout;

    const-string v1, "binding.root"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Le/a/c/a/a/a/a/e;-><init>(Landroid/view/View;Le/a/c/a/i/h;)V

    .line 5
    iput-object p1, p0, Le/a/c/a/a/a/a/g;->e:Le/a/c/a/g/v;

    iput-object p2, p0, Le/a/c/a/a/a/a/g;->f:Le/a/c/a/n/c/d/a;

    return-void
.end method

.method public synthetic constructor <init>(Le/a/c/a/g/v;Le/a/c/a/n/c/d/a;I)V
    .locals 1

    const/4 p2, 0x2

    and-int/2addr p3, p2

    if-eqz p3, :cond_0

    .line 1
    new-instance p3, Le/a/c/a/n/c/d/a;

    const/4 v0, 0x0

    invoke-direct {p3, v0, v0, p2}, Le/a/c/a/n/c/d/a;-><init>(ZZI)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-direct {p0, p1, p3}, Le/a/c/a/a/a/a/g;-><init>(Le/a/c/a/g/v;Le/a/c/a/n/c/d/a;)V

    return-void
.end method

.method public static final U4(Landroid/view/ViewGroup;)Le/a/c/a/g/v;
    .locals 3

    const-string v0, "parent"

    invoke-static {p0, v0}, Le/d/c/a/a;->e1(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1
    sget v1, Lcom/truecaller/insights/ui/R$layout;->date_header_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 2
    sget v0, Lcom/truecaller/insights/ui/R$id;->title:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 4
    new-instance v0, Le/a/c/a/g/v;

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1}, Le/a/c/a/g/v;-><init>(Landroid/widget/FrameLayout;Landroid/widget/TextView;)V

    const-string p0, "DateHeaderItemBinding.in\u2026.context), parent, false)"

    .line 5
    invoke-static {v0, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public S4(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/insights/ui/models/AdapterItem$d;

    const-string v0, "item"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public V4(Lcom/truecaller/insights/ui/models/AdapterItem$d;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/c/a/a/a/a/g;->f:Le/a/c/a/n/c/d/a;

    .line 2
    iget-boolean v0, v0, Le/a/c/a/n/c/d/a;->a:Z

    .line 3
    invoke-virtual {p0, v0}, Le/a/c/a/a/a/a/e;->T4(Z)V

    .line 4
    iget-object v0, p0, Le/a/c/a/a/a/a/g;->e:Le/a/c/a/g/v;

    iget-object v0, v0, Le/a/c/a/g/v;->b:Landroid/widget/TextView;

    const-string v1, "binding.title"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p1, p1, Lcom/truecaller/insights/ui/models/AdapterItem$d;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
