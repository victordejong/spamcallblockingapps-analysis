.class public final Le/a/b/b/c/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/b/b/c/m;->a:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/b/b/c/m;->a:Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;

    .line 2
    iget-object p1, p1, Lcom/truecaller/bizmon/ui/profile/CreateBusinessProfileActivity;->q:Le/a/b/m/v;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Le/a/b/m/v;->B:Landroid/widget/TextView;

    const-string p3, "binding.sizeEditText"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string p1, "binding"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
