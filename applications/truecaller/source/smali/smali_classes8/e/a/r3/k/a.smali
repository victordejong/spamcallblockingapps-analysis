.class public final Le/a/r3/k/a;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r3/k/a$b;,
        Le/a/r3/k/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Le/a/r3/k/a$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Le/a/r3/k/a$a;

.field public final c:Z


# direct methods
.method public constructor <init>(Le/a/r3/k/a$a;Z)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Le/a/r3/k/a;->b:Le/a/r3/k/a$a;

    iput-boolean p2, p0, Le/a/r3/k/a;->c:Z

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/r3/k/a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r3/k/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 2

    .line 1
    check-cast p1, Le/a/r3/k/a$b;

    const-string v0, "holder"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/r3/k/a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;

    .line 4
    iget-object v0, p1, Le/a/r3/k/a$b;->a:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p2}, Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;->getModuleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p1, Le/a/r3/k/a$b;->b:Landroid/widget/Button;

    .line 7
    new-instance v1, Le/a/r3/k/b;

    invoke-direct {v1, p0, p2}, Le/a/r3/k/b;-><init>(Le/a/r3/k/a;Lcom/truecaller/dynamicfeaturesupport/DynamicFeature;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object p1, p1, Le/a/r3/k/a$b;->b:Landroid/widget/Button;

    .line 9
    iget-boolean p2, p0, Le/a/r3/k/a;->c:Z

    if-eqz p2, :cond_0

    sget p2, Lcom/truecaller/dynamicfeaturesupport/R$string;->uninstall:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/truecaller/dynamicfeaturesupport/R$string;->install:I

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 2

    const-string p2, "parent"

    .line 1
    invoke-static {p1, p2}, Le/d/c/a/a;->e1(Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 2
    sget v0, Lcom/truecaller/dynamicfeaturesupport/R$layout;->dynamic_feature_panel_item:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance p2, Le/a/r3/k/a$b;

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Le/a/r3/k/a$b;-><init>(Landroid/view/View;)V

    return-object p2
.end method
