.class public final Le/a/o/b/a/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/o/o/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;


# direct methods
.method public constructor <init>(Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;)V
    .locals 0

    iput-object p1, p0, Le/a/o/b/a/e;->b:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/o/b/a/e;->b:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;

    .line 2
    sget v1, Lcom/truecaller/contextcall/R$id;->et_custom_msg:I

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz v2, :cond_0

    .line 4
    sget v1, Lcom/truecaller/contextcall/R$id;->txt_counter:I

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 6
    new-instance v1, Le/a/o/o/o;

    invoke-direct {v1, v0, v2, v3}, Le/a/o/o/o;-><init>(Landroid/view/View;Lcom/google/android/material/textfield/TextInputLayout;Landroid/widget/TextView;)V

    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
