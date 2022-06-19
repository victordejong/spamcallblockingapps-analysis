.class public final Le/a/o/b/a/a/i;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/o/o/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Le/a/o/b/a/a/i;->b:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;

    iput-object p2, p0, Le/a/o/b/a/a/i;->c:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/o/b/a/a/i;->c:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v2, p0, Le/a/o/b/a/a/i;->b:Lcom/truecaller/contextcall/utils/view/ondemandreasonpicker/OnDemandCallReasonPickerView;

    const-string v1, "parent"

    .line 2
    invoke-static {v2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    sget v1, Lcom/truecaller/contextcall/R$layout;->context_call_on_demand_picker_view:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 4
    sget v0, Lcom/truecaller/contextcall/R$id;->cancelBtn:I

    .line 5
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/widget/ImageButton;

    if-eqz v3, :cond_0

    .line 6
    sget v0, Lcom/truecaller/contextcall/R$id;->infoIcon:I

    .line 7
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/ImageButton;

    if-eqz v4, :cond_0

    .line 8
    sget v0, Lcom/truecaller/contextcall/R$id;->reasonsList:I

    .line 9
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_0

    .line 10
    sget v0, Lcom/truecaller/contextcall/R$id;->title:I

    .line 11
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 12
    sget v0, Lcom/truecaller/contextcall/R$id;->titleIcon:I

    .line 13
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v7, :cond_0

    .line 14
    new-instance v0, Le/a/o/o/j;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Le/a/o/o/j;-><init>(Landroid/view/View;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/TextView;Landroidx/appcompat/widget/AppCompatImageView;)V

    return-object v0

    .line 15
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
