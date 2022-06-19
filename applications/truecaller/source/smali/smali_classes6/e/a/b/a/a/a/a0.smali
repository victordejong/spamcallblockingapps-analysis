.class public final Le/a/b/a/a/a/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Le/a/b/m/n;

.field public final synthetic b:Le/a/b/a/a/a/v;


# direct methods
.method public constructor <init>(Le/a/b/m/n;Le/a/b/a/a/a/v;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/a0;->a:Le/a/b/m/n;

    iput-object p2, p0, Le/a/b/a/a/a/a0;->b:Le/a/b/a/a/a/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/b/a/a/a/a0;->a:Le/a/b/m/n;

    iget-object p1, p1, Le/a/b/m/n;->m:Landroid/widget/Spinner;

    const-string v0, "mainOpeningSpinner"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 2
    iget-object p1, p0, Le/a/b/a/a/a/a0;->a:Le/a/b/m/n;

    iget-object p1, p1, Le/a/b/m/n;->l:Landroid/widget/Spinner;

    const-string v0, "mainClosingSpinner"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setEnabled(Z)V

    const/4 p1, 0x7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 3
    iget-object v1, p0, Le/a/b/a/a/a/a0;->b:Le/a/b/a/a/a/v;

    .line 4
    iget-object v1, v1, Le/a/b/a/a/a/v;->b:Ljava/util/List;

    .line 5
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1, p2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 6
    iget-object v1, p0, Le/a/b/a/a/a/a0;->b:Le/a/b/a/a/a/v;

    .line 7
    iget-object v1, v1, Le/a/b/a/a/a/v;->c:Ljava/util/List;

    .line 8
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1, p2}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
