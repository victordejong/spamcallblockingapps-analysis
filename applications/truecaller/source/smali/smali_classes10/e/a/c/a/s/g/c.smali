.class public final Le/a/c/a/s/g/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/s/g/c;->a:Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/c/a/s/g/c;->a:Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isSelected()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 2
    iget-object p1, p0, Le/a/c/a/s/g/c;->a:Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;

    invoke-static {p1}, Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;->f1(Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/c/a/s/g/c;->a:Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 3
    iget-object p1, p0, Le/a/c/a/s/g/c;->a:Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;

    .line 4
    iget-object p1, p1, Lcom/truecaller/insights/ui/widget/chip/FilterChipXView;->t:Le/a/c/a/s/g/a;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Le/a/c/a/s/g/a;->Ij()Ls1/z/b/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_0
    return-void
.end method
