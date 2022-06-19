.class public final Le/a/o/b/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;


# direct methods
.method public constructor <init>(Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;)V
    .locals 0

    iput-object p1, p0, Le/a/o/b/a/f;->a:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_1

    .line 1
    iget-object p1, p0, Le/a/o/b/a/f;->a:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;

    invoke-virtual {p1}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->getCustomTextInputLayoutCallback()Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Le/a/o/b/a/f;->a:Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;

    invoke-virtual {p2}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/truecaller/contextcall/utils/view/CustomTextInputLayout$a;->w1(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
