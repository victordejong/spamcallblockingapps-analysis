.class final Lcom/hiya/stingray/ui/setting/DebugActivity$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/DebugActivity;->B0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/setting/DebugActivity;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/setting/DebugActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$v;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$v;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    sget p2, Lcom/hiya/stingray/o;->h1:I

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$v;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string p3, "firebaseRemoteConfigAddOverride"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "="

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lkotlin/c0/m;->G0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$v;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-virtual {v2, p2}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-static {v2, p3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lkotlin/c0/m;->z0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$v;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-virtual {v2}, Lcom/hiya/stingray/ui/setting/DebugActivity;->o0()Lcom/hiya/stingray/manager/x3;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/hiya/stingray/manager/x3;->G(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$v;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$v;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-static {p1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->X(Lcom/hiya/stingray/ui/setting/DebugActivity;)V

    .line 7
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$v;->f:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/setting/DebugActivity;->O(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    invoke-static {p2, p3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/hiya/stingray/util/e0;->i(Landroid/app/Activity;Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
