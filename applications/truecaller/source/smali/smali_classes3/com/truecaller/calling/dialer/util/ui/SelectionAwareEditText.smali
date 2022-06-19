.class public final Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\r\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001:\u0001\"J\u001f\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J1\u0010\r\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u000c\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0019\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R.\u0010\u001f\u001a\u0004\u0018\u00010\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0006@FX\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0016\u0010!\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010\u0015\u00a8\u0006#"
    }
    d2 = {
        "Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;",
        "Landroidx/appcompat/widget/AppCompatEditText;",
        "",
        "selStart",
        "selEnd",
        "Ls1/s;",
        "onSelectionChanged",
        "(II)V",
        "",
        "text",
        "start",
        "lengthBefore",
        "lengthAfter",
        "onTextChanged",
        "(Ljava/lang/CharSequence;III)V",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "e",
        "I",
        "reportedSelectionStart",
        "Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText$a;",
        "value",
        "g",
        "Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText$a;",
        "getSelectionChangeListener",
        "()Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText$a;",
        "setSelectionChangeListener",
        "(Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText$a;)V",
        "selectionChangeListener",
        "f",
        "reportedSelectionEnd",
        "a",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v0, 0x0

    const-string v1, "context"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x80000000

    .line 3
    iput p1, p0, Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;->e:I

    .line 4
    iput p1, p0, Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;->f:I

    return-void
.end method

.method public static b(Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;III)V
    .locals 1

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result p2

    .line 2
    :cond_1
    iget p3, p0, Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;->e:I

    if-ne p1, p3, :cond_2

    iget p3, p0, Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;->f:I

    if-eq p2, p3, :cond_4

    .line 3
    :cond_2
    iget-object p3, p0, Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;->g:Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText$a;

    if-eqz p3, :cond_3

    invoke-interface {p3, p1, p2}, Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText$a;->V(II)V

    .line 4
    :cond_3
    iput p1, p0, Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;->e:I

    .line 5
    iput p2, p0, Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;->f:I

    :cond_4
    return-void
.end method


# virtual methods
.method public final getSelectionChangeListener()Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;->g:Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText$a;

    return-object v0
.end method

.method public onSelectionChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onSelectionChanged(II)V

    .line 2
    iget p1, p0, Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;->e:I

    if-ne p2, p1, :cond_0

    iget p1, p0, Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;->f:I

    if-eq p2, p1, :cond_2

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;->g:Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText$a;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2, p2}, Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText$a;->V(II)V

    .line 4
    :cond_1
    iput p2, p0, Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;->e:I

    .line 5
    iput p2, p0, Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;->f:I

    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    const/4 p1, 0x0

    const/4 p2, 0x3

    .line 2
    invoke-static {p0, p1, p1, p2}, Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;->b(Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;III)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setSelectionChangeListener(Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText$a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;->g:Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText$a;

    const/4 p1, 0x0

    const/4 v0, 0x3

    .line 2
    invoke-static {p0, p1, p1, v0}, Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;->b(Lcom/truecaller/calling/dialer/util/ui/SelectionAwareEditText;III)V

    return-void
.end method
