.class final Lcom/hiya/stingray/ui/setting/DebugActivity$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/setting/DebugActivity;->y0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Landroid/widget/EditText;

.field final synthetic g:Lcom/hiya/stingray/manager/s2$c;

.field final synthetic h:Lcom/hiya/stingray/ui/setting/DebugActivity;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Lcom/hiya/stingray/manager/s2$c;Lcom/hiya/stingray/ui/setting/DebugActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$o;->f:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$o;->g:Lcom/hiya/stingray/manager/s2$c;

    iput-object p3, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$o;->h:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$o;->f:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->clearFocus()V

    .line 2
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$o;->h:Lcom/hiya/stingray/ui/setting/DebugActivity;

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/setting/DebugActivity;->f0()Lcom/hiya/stingray/manager/s2;

    move-result-object p1

    iget-object p2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$o;->g:Lcom/hiya/stingray/manager/s2$c;

    iget-object p3, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$o;->f:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/hiya/stingray/manager/s2;->t(Lcom/hiya/stingray/manager/s2$c;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$o;->h:Lcom/hiya/stingray/ui/setting/DebugActivity;

    iget-object p2, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$o;->f:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lcom/hiya/stingray/util/e0;->i(Landroid/app/Activity;Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcom/hiya/stingray/ui/setting/DebugActivity$o;->h:Lcom/hiya/stingray/ui/setting/DebugActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/hiya/stingray/ui/setting/DebugActivity;->W(Lcom/hiya/stingray/ui/setting/DebugActivity;Z)V

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
