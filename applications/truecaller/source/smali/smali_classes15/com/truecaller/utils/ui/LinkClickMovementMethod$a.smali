.class public final Lcom/truecaller/utils/ui/LinkClickMovementMethod$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/utils/ui/LinkClickMovementMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/utils/ui/LinkClickMovementMethod;


# direct methods
.method public constructor <init>(Lcom/truecaller/utils/ui/LinkClickMovementMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod$a;->a:Lcom/truecaller/utils/ui/LinkClickMovementMethod;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 6

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 3
    iget-object v1, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod$a;->a:Lcom/truecaller/utils/ui/LinkClickMovementMethod;

    invoke-static {v1}, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->b(Lcom/truecaller/utils/ui/LinkClickMovementMethod;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod$a;->a:Lcom/truecaller/utils/ui/LinkClickMovementMethod;

    invoke-static {v1}, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->b(Lcom/truecaller/utils/ui/LinkClickMovementMethod;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    sub-int/2addr p1, v1

    .line 5
    iget-object v1, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod$a;->a:Lcom/truecaller/utils/ui/LinkClickMovementMethod;

    invoke-static {v1}, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->b(Lcom/truecaller/utils/ui/LinkClickMovementMethod;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    add-int/2addr v1, v0

    .line 6
    iget-object v0, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod$a;->a:Lcom/truecaller/utils/ui/LinkClickMovementMethod;

    invoke-static {v0}, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->b(Lcom/truecaller/utils/ui/LinkClickMovementMethod;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getScrollY()I

    move-result v0

    add-int/2addr v0, p1

    .line 7
    iget-object p1, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod$a;->a:Lcom/truecaller/utils/ui/LinkClickMovementMethod;

    invoke-static {p1}, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->b(Lcom/truecaller/utils/ui/LinkClickMovementMethod;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 8
    invoke-virtual {p1, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    int-to-float v1, v1

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    .line 10
    iget-object v0, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod$a;->a:Lcom/truecaller/utils/ui/LinkClickMovementMethod;

    invoke-static {v0}, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->a(Lcom/truecaller/utils/ui/LinkClickMovementMethod;)Landroid/text/Spannable;

    move-result-object v0

    const-class v1, Landroid/text/style/ClickableSpan;

    invoke-interface {v0, p1, p1, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/ClickableSpan;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 11
    array-length v2, p1

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :cond_2
    :goto_1
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 12
    iget-object p1, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod$a;->a:Lcom/truecaller/utils/ui/LinkClickMovementMethod;

    .line 13
    iget-object p1, p1, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->f:Ls1/z/b/r;

    const/4 v0, -0x1

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v3, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;->NONE:Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    const-string v4, ""

    invoke-interface {p1, v4, v0, v3, v2}, Ls1/z/b/r;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 15
    :cond_3
    array-length v0, p1

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_5

    aget-object v4, p1, v3

    instance-of v5, v4, Le/a/p5/w0/b;

    if-eqz v5, :cond_4

    move-object v2, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    aget-object v2, p1, v1

    .line 16
    :goto_4
    iget-object p1, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod$a;->a:Lcom/truecaller/utils/ui/LinkClickMovementMethod;

    invoke-static {p1}, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->a(Lcom/truecaller/utils/ui/LinkClickMovementMethod;)Landroid/text/Spannable;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    .line 17
    iget-object v0, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod$a;->a:Lcom/truecaller/utils/ui/LinkClickMovementMethod;

    invoke-static {v0}, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->a(Lcom/truecaller/utils/ui/LinkClickMovementMethod;)Landroid/text/Spannable;

    move-result-object v0

    iget-object v3, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod$a;->a:Lcom/truecaller/utils/ui/LinkClickMovementMethod;

    invoke-static {v3}, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->a(Lcom/truecaller/utils/ui/LinkClickMovementMethod;)Landroid/text/Spannable;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v0, p1, v3}, Landroid/text/Spannable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18
    sget-object v3, Landroid/util/Patterns;->PHONE:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;->PHONE:Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    goto :goto_5

    .line 19
    :cond_7
    sget-object v3, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_8

    sget-object v3, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;->WEB_URL:Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    goto :goto_5

    .line 20
    :cond_8
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;->EMAIL_ADDRESS:Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    goto :goto_5

    .line 21
    :cond_9
    iget-object v3, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod$a;->a:Lcom/truecaller/utils/ui/LinkClickMovementMethod;

    .line 22
    iget-object v3, v3, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->a:Ljava/util/regex/Pattern;

    .line 23
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_a

    sget-object v3, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;->MENTION:Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    goto :goto_5

    .line 24
    :cond_a
    iget-object v3, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod$a;->a:Lcom/truecaller/utils/ui/LinkClickMovementMethod;

    .line 25
    iget-object v3, v3, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->b:Ljava/util/regex/Pattern;

    .line 26
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_b

    sget-object v3, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;->DEEPLINK:Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    goto :goto_5

    .line 27
    :cond_b
    sget-object v3, Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;->NONE:Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;

    .line 28
    :goto_5
    iget-object v4, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod$a;->a:Lcom/truecaller/utils/ui/LinkClickMovementMethod;

    .line 29
    iget-object v4, v4, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->f:Ls1/z/b/r;

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v4, v0, p1, v3, v2}, Ls1/z/b/r;->q(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method
