.class public final Lcom/truecaller/messaging/views/MediaEditText;
.super Le/a/t/a/z/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/views/MediaEditText$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001/B\u0019\u0008\u0016\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u00a2\u0006\u0004\u0008-\u0010.J\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0007H\u0014\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00118\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R$\u0010\u001c\u001a\u0004\u0018\u00010\u00158\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001fR\u0016\u0010$\u001a\u00020!8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'\u00a8\u00060"
    }
    d2 = {
        "Lcom/truecaller/messaging/views/MediaEditText;",
        "Le/a/t/a/z/a;",
        "Landroid/view/inputmethod/EditorInfo;",
        "outAttrs",
        "Landroid/view/inputmethod/InputConnection;",
        "onCreateInputConnection",
        "(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;",
        "",
        "id",
        "",
        "onTextContextMenuItem",
        "(I)Z",
        "selStart",
        "selEnd",
        "Ls1/s;",
        "onSelectionChanged",
        "(II)V",
        "Le/a/a/j1/d;",
        "d",
        "Le/a/a/j1/d;",
        "listener",
        "Lcom/truecaller/messaging/views/MediaEditText$a;",
        "e",
        "Lcom/truecaller/messaging/views/MediaEditText$a;",
        "getMediaCallback",
        "()Lcom/truecaller/messaging/views/MediaEditText$a;",
        "setMediaCallback",
        "(Lcom/truecaller/messaging/views/MediaEditText$a;)V",
        "mediaCallback",
        "Ln3/k/i/g0/e;",
        "f",
        "Ln3/k/i/g0/e;",
        "currentInfo",
        "Ljava/lang/Runnable;",
        "g",
        "Ljava/lang/Runnable;",
        "releaseCallback",
        "Ln3/k/i/g0/d;",
        "h",
        "Ln3/k/i/g0/d;",
        "androidMediaCallback",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
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
.field public d:Le/a/a/j1/d;

.field public e:Lcom/truecaller/messaging/views/MediaEditText$a;

.field public f:Ln3/k/i/g0/e;

.field public final g:Ljava/lang/Runnable;

.field public final h:Ln3/k/i/g0/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Le/a/t/a/z/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 2
    new-instance p1, Le/a/a/j1/c;

    invoke-direct {p1, p0}, Le/a/a/j1/c;-><init>(Lcom/truecaller/messaging/views/MediaEditText;)V

    iput-object p1, p0, Lcom/truecaller/messaging/views/MediaEditText;->g:Ljava/lang/Runnable;

    .line 3
    new-instance p1, Le/a/a/j1/b;

    invoke-direct {p1, p0}, Le/a/a/j1/b;-><init>(Lcom/truecaller/messaging/views/MediaEditText;)V

    iput-object p1, p0, Lcom/truecaller/messaging/views/MediaEditText;->h:Ln3/k/i/g0/d;

    return-void
.end method


# virtual methods
.method public final getMediaCallback()Lcom/truecaller/messaging/views/MediaEditText$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/views/MediaEditText;->e:Lcom/truecaller/messaging/views/MediaEditText$a;

    return-object v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 2

    const-string v0, "outAttrs"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Ln3/b/f/g;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/truecaller/messaging/views/MediaEditText;->e:Lcom/truecaller/messaging/views/MediaEditText$a;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v1}, Lcom/truecaller/messaging/views/MediaEditText$a;->Ue()[Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ln3/k/i/g0/a;->b(Landroid/view/inputmethod/EditorInfo;[Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/truecaller/messaging/views/MediaEditText;->h:Ln3/k/i/g0/d;

    invoke-static {v0, p1, v1}, Landroid/support/v4/media/session/MediaSessionCompat;->Q(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Ln3/k/i/g0/d;)Landroid/view/inputmethod/InputConnection;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onSelectionChanged(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/MultiAutoCompleteTextView;->onSelectionChanged(II)V

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/views/MediaEditText;->d:Le/a/a/j1/d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Le/a/a/j1/d;->V(II)V

    :cond_0
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 8

    const v0, 0x1020022

    if-ne p1, v0, :cond_4

    .line 1
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/content/ClipboardManager;

    .line 3
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "LABEL_NUMBER"

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    new-instance v1, Ljava/text/Bidi;

    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v2}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, " "

    const-string v5, "$this$substringAfterLast"

    .line 6
    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "delimiter"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "missingDelimiterValue"

    invoke-static {v2, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 7
    invoke-static {v2, v4, v6, v6, v5}, Ls1/f0/v;->K(Ljava/lang/CharSequence;Ljava/lang/String;IZI)I

    move-result v4

    const/4 v5, -0x1

    const/4 v7, 0x1

    if-ne v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/2addr v4, v7

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v4, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    const/4 v4, -0x2

    .line 9
    invoke-direct {v1, v2, v4}, Ljava/text/Bidi;-><init>(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {v1}, Ljava/text/Bidi;->isRightToLeft()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v0, v6}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    const-string v0, "clip.getItemAt(0)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\s"

    const-string v1, ""

    invoke-static {v0, p1, v1}, Le/d/c/a/a;->A2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    const-string v2, "-"

    invoke-static {p1, v2, v1, v6, v0}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p1}, Ls1/f0/w;->k0(Ljava/lang/CharSequence;)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_2

    const-string v0, "+"

    .line 14
    invoke-static {p1, v0}, Ls1/f0/v;->P(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1, v1}, Le/d/c/a/a;->g2(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p1

    .line 16
    :cond_2
    invoke-virtual {p0}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    :cond_3
    return v7

    .line 17
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/MultiAutoCompleteTextView;->onTextContextMenuItem(I)Z

    move-result p1

    return p1
.end method

.method public final setMediaCallback(Lcom/truecaller/messaging/views/MediaEditText$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/messaging/views/MediaEditText;->e:Lcom/truecaller/messaging/views/MediaEditText$a;

    return-void
.end method
