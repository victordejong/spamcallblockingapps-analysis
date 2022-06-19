.class final Lcom/hiya/stingray/ui/local/dialer/f$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/local/dialer/f;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/ui/local/dialer/f;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/local/dialer/f;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/f$g;->f:Lcom/hiya/stingray/ui/local/dialer/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/ui/local/dialer/f$g;->f:Lcom/hiya/stingray/ui/local/dialer/f;

    invoke-static {p1}, Lcom/hiya/stingray/ui/local/dialer/f;->e(Lcom/hiya/stingray/ui/local/dialer/f;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    const/4 p1, 0x1

    return p1
.end method
