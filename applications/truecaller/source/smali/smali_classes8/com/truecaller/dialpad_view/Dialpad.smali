.class public final Lcom/truecaller/dialpad_view/Dialpad;
.super Le/a/q3/i;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u008e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u001b\u0008\u0016\u0012\u0006\u0010H\u001a\u00020G\u0012\u0008\u0010J\u001a\u0004\u0018\u00010I\u00a2\u0006\u0004\u0008K\u0010LJ\u000f\u0010\u0005\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u000e\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0014\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00042\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00042\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0017\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00042\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001b\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u001f\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001f\u0010\u0006J!\u0010$\u001a\u0004\u0018\u00010\u00042\u0006\u0010!\u001a\u00020 2\u0006\u0010#\u001a\u00020\"H\u0002\u00a2\u0006\u0004\u0008$\u0010%J\u001f\u0010(\u001a\u00020\t2\u0006\u0010&\u001a\u00020\u00102\u0006\u0010\'\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008(\u0010)J\u0011\u0010*\u001a\u0004\u0018\u00010\u0004H\u0002\u00a2\u0006\u0004\u0008*\u0010+R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010-R\u001e\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010/0.8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u00100R\u0018\u0010\u0014\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00082\u00103R\"\u0010:\u001a\u0002048\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008(\u00105\u001a\u0004\u00086\u00107\"\u0004\u00088\u00109R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008;\u0010<R\"\u0010C\u001a\u00020=8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008$\u0010>\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR\u0018\u0010F\u001a\u0004\u0018\u00010D8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010E\u00a8\u0006M"
    }
    d2 = {
        "Lcom/truecaller/dialpad_view/Dialpad;",
        "Le/a/q3/i;",
        "Landroid/view/View$OnLongClickListener;",
        "Landroid/view/View$OnTouchListener;",
        "Ls1/s;",
        "onFinishInflate",
        "()V",
        "Landroid/view/View;",
        "view",
        "",
        "onLongClick",
        "(Landroid/view/View;)Z",
        "Landroid/view/MotionEvent;",
        "event",
        "onTouch",
        "(Landroid/view/View;Landroid/view/MotionEvent;)Z",
        "",
        "getColumnCount",
        "()I",
        "Le/a/q3/e;",
        "dialpadListener",
        "setDialpadListener",
        "(Le/a/q3/e;)V",
        "Le/a/q3/b;",
        "dialpadFeedback",
        "setFeedback",
        "(Le/a/q3/b;)V",
        "Le/a/q3/a;",
        "dialpadExtraActionsListener",
        "setActionsListener",
        "(Le/a/q3/a;)V",
        "a",
        "",
        "mainText",
        "Lcom/truecaller/dialpad_view/DialpadKeyActionState;",
        "stateDialpad",
        "c",
        "(Ljava/lang/CharSequence;Lcom/truecaller/dialpad_view/DialpadKeyActionState;)Ls1/s;",
        "actionCode",
        "secondaryCode",
        "b",
        "(II)Z",
        "d",
        "()Ls1/s;",
        "f",
        "Le/a/q3/b;",
        "",
        "Landroid/graphics/Rect;",
        "[Landroid/graphics/Rect;",
        "lastTouchedViewBoundsArray",
        "e",
        "Le/a/q3/e;",
        "Le/a/q3/h;",
        "Le/a/q3/h;",
        "getDialpadViewHelper",
        "()Le/a/q3/h;",
        "setDialpadViewHelper",
        "(Le/a/q3/h;)V",
        "dialpadViewHelper",
        "g",
        "Le/a/q3/a;",
        "Le/a/b4/a/d;",
        "Le/a/b4/a/d;",
        "getT9keyProvider",
        "()Le/a/b4/a/d;",
        "setT9keyProvider",
        "(Le/a/b4/a/d;)V",
        "t9keyProvider",
        "",
        "Ljava/lang/String;",
        "t9KeyLanguage",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "dialpad-view_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:[Landroid/graphics/Rect;

.field public b:Le/a/q3/h;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/b4/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Ljava/lang/String;

.field public e:Le/a/q3/e;

.field public f:Le/a/q3/b;

.field public g:Le/a/q3/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Le/a/q3/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x5

    new-array p1, p1, [Landroid/graphics/Rect;

    .line 2
    iput-object p1, p0, Lcom/truecaller/dialpad_view/Dialpad;->a:[Landroid/graphics/Rect;

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 4
    instance-of p2, p1, Le/a/q3/g;

    if-eqz p2, :cond_0

    .line 5
    check-cast p1, Le/a/q3/g;

    invoke-interface {p1}, Le/a/q3/g;->B()Le/a/q3/f;

    move-result-object p1

    invoke-interface {p1, p0}, Le/a/q3/f;->b(Lcom/truecaller/dialpad_view/Dialpad;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 15

    .line 1
    sget-object v0, Le/a/q3/d;->a:[C

    iget-object v1, p0, Lcom/truecaller/dialpad_view/Dialpad;->d:Ljava/lang/String;

    const-string v2, "t9keyProvider"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/truecaller/dialpad_view/Dialpad;->c:Le/a/b4/a/d;

    if-eqz v4, :cond_0

    invoke-interface {v4, v1}, Le/a/b4/a/d;->a(Ljava/lang/String;)Le/a/b4/a/c;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-object v1, p0, Lcom/truecaller/dialpad_view/Dialpad;->c:Le/a/b4/a/d;

    if-eqz v1, :cond_9

    invoke-interface {v1}, Le/a/b4/a/d;->b()Le/a/b4/a/c;

    move-result-object v1

    .line 2
    :goto_0
    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_8

    .line 3
    aget-char v7, v0, v6

    .line 4
    invoke-virtual {v1, v7}, Le/a/b4/a/c;->c(C)Ljava/lang/String;

    move-result-object v8

    .line 5
    iget-object v9, p0, Lcom/truecaller/dialpad_view/Dialpad;->c:Le/a/b4/a/d;

    if-eqz v9, :cond_7

    invoke-interface {v9}, Le/a/b4/a/d;->b()Le/a/b4/a/c;

    move-result-object v9

    invoke-virtual {v9, v7}, Le/a/b4/a/c;->c(C)Ljava/lang/String;

    move-result-object v9

    .line 6
    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v9, v3

    .line 7
    :cond_2
    sget-object v10, Le/a/q3/c;->n:Le/a/q3/c;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "context"

    invoke-static {v10, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    .line 8
    invoke-static {v10, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "mainText"

    invoke-static {v12, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v11, Le/a/q3/c;

    invoke-direct {v11, v10}, Le/a/q3/c;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-virtual {v12, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v13, 0x2a

    if-ne v10, v13, :cond_3

    .line 11
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v13, Lcom/truecaller/dialpad_view/R$drawable;->ic_dialpad_asterisk:I

    sget v14, Lcom/truecaller/dialpad_view/R$attr;->tcx_textPrimary:I

    invoke-static {v10, v13, v14}, Le/a/b0/q/o;->f(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v11, Le/a/q3/c;->k:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {v12, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v13, 0x23

    if-ne v10, v13, :cond_4

    .line 13
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v13, Lcom/truecaller/dialpad_view/R$drawable;->ic_dialpad_pound:I

    sget v14, Lcom/truecaller/dialpad_view/R$attr;->tcx_textPrimary:I

    invoke-static {v10, v13, v14}, Le/a/b0/q/o;->f(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    iput-object v10, v11, Le/a/q3/c;->k:Landroid/graphics/drawable/Drawable;

    .line 14
    :cond_4
    :goto_2
    iput-object v12, v11, Le/a/q3/c;->h:Ljava/lang/CharSequence;

    .line 15
    iput-object v8, v11, Le/a/q3/c;->i:Ljava/lang/CharSequence;

    .line 16
    iput-object v9, v11, Le/a/q3/c;->j:Ljava/lang/CharSequence;

    const-string v9, "+"

    .line 17
    invoke-static {v9, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0xe

    int-to-float v8, v8

    .line 18
    iget-object v9, v11, Le/a/q3/c;->b:Landroid/graphics/Paint;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v8}, Le/a/b0/q/o;->h(Landroid/content/Context;F)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v9, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 19
    :cond_5
    invoke-virtual {v11, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 20
    invoke-virtual {v11, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 21
    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    const/4 v9, -0x1

    invoke-direct {v8, v9, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v11, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v8, 0x31

    if-ne v7, v8, :cond_6

    .line 22
    sget v7, Lcom/truecaller/dialpad_view/R$drawable;->ic_dialpad_voicemail:I

    invoke-virtual {v11, v7}, Le/a/q3/c;->setSecondaryImage(I)V

    .line 23
    :cond_6
    invoke-virtual {p0, v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 24
    :cond_7
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    :cond_8
    return-void

    .line 25
    :cond_9
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method

.method public final b(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/dialpad_view/Dialpad;->g:Le/a/q3/a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Le/a/q3/a;->de(II)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(Ljava/lang/CharSequence;Lcom/truecaller/dialpad_view/DialpadKeyActionState;)Ls1/s;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/dialpad_view/Dialpad;->e:Le/a/q3/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-interface {v0, p1, p2}, Le/a/q3/e;->U4(CLcom/truecaller/dialpad_view/DialpadKeyActionState;)V

    sget-object p1, Ls1/s;->a:Ls1/s;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final d()Ls1/s;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/dialpad_view/Dialpad;->f:Le/a/q3/b;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Le/a/q3/b;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4
    :goto_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public final getDialpadViewHelper()Le/a/q3/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/dialpad_view/Dialpad;->b:Le/a/q3/h;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "dialpadViewHelper"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getT9keyProvider()Le/a/b4/a/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/dialpad_view/Dialpad;->c:Le/a/b4/a/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "t9keyProvider"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "dialpadViewHelper"

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/truecaller/dialpad_view/Dialpad;->b:Le/a/q3/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/q3/h;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/truecaller/dialpad_view/Dialpad;->b:Le/a/q3/h;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Le/a/q3/h;->d()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/truecaller/dialpad_view/Dialpad;->d:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/dialpad_view/Dialpad;->a()V

    return-void

    .line 4
    :cond_2
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Le/a/q3/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    move-object v0, p1

    check-cast v0, Le/a/q3/c;

    invoke-virtual {v0}, Le/a/q3/c;->getMainText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_0

    const/16 v0, -0x126d

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/dialpad_view/Dialpad;->b(II)Z

    move-result v0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_1

    const/16 v0, -0x126c

    invoke-virtual {p0, v0, v1}, Lcom/truecaller/dialpad_view/Dialpad;->b(II)Z

    move-result v0

    goto :goto_1

    .line 6
    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v2, -0x1268

    .line 7
    invoke-virtual {p0, v2, v0}, Lcom/truecaller/dialpad_view/Dialpad;->b(II)Z

    move-result v0

    goto :goto_1

    :pswitch_1
    const/16 v2, -0x126a

    .line 8
    invoke-virtual {p0, v2, v0}, Lcom/truecaller/dialpad_view/Dialpad;->b(II)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_2
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Le/a/q3/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    move-object v0, p1

    check-cast v0, Le/a/q3/c;

    invoke-virtual {v0}, Le/a/q3/c;->getMainText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    return v1

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    .line 5
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    .line 6
    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    const/4 v6, 0x5

    if-lt v3, v6, :cond_2

    return v1

    .line 7
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_6

    if-eq v6, v4, :cond_5

    if-eq v6, v7, :cond_4

    const/4 p1, 0x3

    if-eq v6, p1, :cond_3

    goto/16 :goto_4

    .line 8
    :cond_3
    invoke-virtual {p0}, Lcom/truecaller/dialpad_view/Dialpad;->d()Ls1/s;

    goto/16 :goto_4

    .line 9
    :cond_4
    iget-object v2, p0, Lcom/truecaller/dialpad_view/Dialpad;->a:[Landroid/graphics/Rect;

    aget-object v2, v2, v3

    if-eqz v2, :cond_12

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    float-to-int p2, p2

    add-int/2addr p1, p2

    .line 12
    invoke-virtual {v2, v3, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_12

    .line 13
    invoke-virtual {p0}, Lcom/truecaller/dialpad_view/Dialpad;->d()Ls1/s;

    .line 14
    invoke-virtual {v0}, Le/a/q3/c;->getMainText()Ljava/lang/CharSequence;

    move-result-object p1

    sget-object p2, Lcom/truecaller/dialpad_view/DialpadKeyActionState;->CANCEL:Lcom/truecaller/dialpad_view/DialpadKeyActionState;

    invoke-virtual {p0, p1, p2}, Lcom/truecaller/dialpad_view/Dialpad;->c(Ljava/lang/CharSequence;Lcom/truecaller/dialpad_view/DialpadKeyActionState;)Ls1/s;

    goto/16 :goto_4

    .line 15
    :cond_5
    invoke-virtual {v0}, Le/a/q3/c;->getMainText()Ljava/lang/CharSequence;

    move-result-object p1

    sget-object p2, Lcom/truecaller/dialpad_view/DialpadKeyActionState;->UP:Lcom/truecaller/dialpad_view/DialpadKeyActionState;

    invoke-virtual {p0, p1, p2}, Lcom/truecaller/dialpad_view/Dialpad;->c(Ljava/lang/CharSequence;Lcom/truecaller/dialpad_view/DialpadKeyActionState;)Ls1/s;

    .line 16
    invoke-virtual {p0}, Lcom/truecaller/dialpad_view/Dialpad;->d()Ls1/s;

    goto/16 :goto_4

    .line 17
    :cond_6
    iget-object p2, p0, Lcom/truecaller/dialpad_view/Dialpad;->f:Le/a/q3/b;

    if-eqz p2, :cond_11

    .line 18
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 19
    iget-boolean v5, p2, Le/a/q3/b;->b:Z

    if-nez v5, :cond_7

    goto :goto_2

    .line 20
    :cond_7
    iget-object v5, p2, Le/a/q3/b;->a:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 21
    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    if-eqz v6, :cond_e

    if-eq v6, v4, :cond_e

    .line 22
    invoke-virtual {v5}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v5

    if-eqz v5, :cond_8

    goto :goto_2

    .line 23
    :cond_8
    sget-object v5, Le/a/q3/b;->h:Le/g/a/f;

    check-cast v5, Le/g/a/e;

    const/4 v6, -0x1

    if-nez v2, :cond_9

    .line 24
    iget-boolean v2, v5, Le/g/a/e;->g:Z

    if-eqz v2, :cond_b

    iget-object v2, v5, Le/g/a/e;->b:[I

    iget v5, v5, Le/g/a/e;->e:I

    add-int/2addr v5, v4

    aget v2, v2, v5

    goto :goto_1

    .line 25
    :cond_9
    iget-object v8, v5, Le/g/a/e;->a:[C

    .line 26
    iget v9, v5, Le/g/a/e;->e:I

    .line 27
    iget v10, v5, Le/g/a/e;->c:I

    invoke-static {v2, v10}, Ln3/g0/y;->i1(CI)I

    move-result v10

    :goto_0
    and-int/2addr v10, v9

    .line 28
    aget-char v11, v8, v10

    if-eqz v11, :cond_b

    if-ne v11, v2, :cond_a

    .line 29
    iget-object v2, v5, Le/g/a/e;->b:[I

    aget v2, v2, v10

    goto :goto_1

    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_b
    move v2, v6

    :goto_1
    if-ne v2, v6, :cond_c

    goto :goto_2

    .line 30
    :cond_c
    iget-object v5, p2, Le/a/q3/b;->d:Landroid/os/Handler;

    if-nez v5, :cond_d

    goto :goto_2

    .line 31
    :cond_d
    invoke-virtual {v5, v4}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v4, 0x7d0

    .line 32
    invoke-static {v5, v1, v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 33
    :cond_e
    :goto_2
    iget-object v2, p0, Lcom/truecaller/dialpad_view/Dialpad;->b:Le/a/q3/h;

    if-eqz v2, :cond_10

    invoke-interface {v2}, Le/a/q3/h;->b()Z

    move-result v2

    if-eqz v2, :cond_11

    const/16 v2, 0x1e

    .line 34
    iget-object p2, p2, Le/a/q3/b;->d:Landroid/os/Handler;

    if-nez p2, :cond_f

    goto :goto_3

    .line 35
    :cond_f
    invoke-static {p2, v7, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_10
    const-string p1, "dialpadViewHelper"

    .line 36
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 37
    :cond_11
    :goto_3
    iget-object p2, p0, Lcom/truecaller/dialpad_view/Dialpad;->a:[Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    invoke-direct {v2, v4, v5, v6, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    aput-object v2, p2, v3

    .line 38
    invoke-virtual {v0}, Le/a/q3/c;->getMainText()Ljava/lang/CharSequence;

    move-result-object p1

    sget-object p2, Lcom/truecaller/dialpad_view/DialpadKeyActionState;->DOWN:Lcom/truecaller/dialpad_view/DialpadKeyActionState;

    invoke-virtual {p0, p1, p2}, Lcom/truecaller/dialpad_view/Dialpad;->c(Ljava/lang/CharSequence;Lcom/truecaller/dialpad_view/DialpadKeyActionState;)Ls1/s;

    :cond_12
    :goto_4
    return v1
.end method

.method public final setActionsListener(Le/a/q3/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/dialpad_view/Dialpad;->g:Le/a/q3/a;

    return-void
.end method

.method public final setDialpadListener(Le/a/q3/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/dialpad_view/Dialpad;->e:Le/a/q3/e;

    return-void
.end method

.method public final setDialpadViewHelper(Le/a/q3/h;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/dialpad_view/Dialpad;->b:Le/a/q3/h;

    return-void
.end method

.method public final setFeedback(Le/a/q3/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/dialpad_view/Dialpad;->f:Le/a/q3/b;

    return-void
.end method

.method public final setT9keyProvider(Le/a/b4/a/d;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/dialpad_view/Dialpad;->c:Le/a/b4/a/d;

    return-void
.end method
