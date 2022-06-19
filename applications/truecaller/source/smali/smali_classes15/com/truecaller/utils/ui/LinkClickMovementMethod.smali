.class public final Lcom/truecaller/utils/ui/LinkClickMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;,
        Lcom/truecaller/utils/ui/LinkClickMovementMethod$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/regex/Pattern;

.field public final b:Ljava/util/regex/Pattern;

.field public final c:Landroid/view/GestureDetector;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/text/Spannable;

.field public final f:Ls1/z/b/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/r<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;",
            "Landroid/text/style/ClickableSpan;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ls1/z/b/r;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ls1/z/b/r<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lcom/truecaller/utils/ui/LinkClickMovementMethod$LinkType;",
            "-",
            "Landroid/text/style/ClickableSpan;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    iput-object p2, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->f:Ls1/z/b/r;

    const-string p2, "(^@.+)"

    .line 2
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->a:Ljava/util/regex/Pattern;

    const-string p2, "(^truecaller://.+)"

    .line 3
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    iput-object p2, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->b:Ljava/util/regex/Pattern;

    .line 4
    new-instance p2, Landroid/view/GestureDetector;

    new-instance v0, Lcom/truecaller/utils/ui/LinkClickMovementMethod$a;

    invoke-direct {v0, p0}, Lcom/truecaller/utils/ui/LinkClickMovementMethod$a;-><init>(Lcom/truecaller/utils/ui/LinkClickMovementMethod;)V

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->c:Landroid/view/GestureDetector;

    return-void
.end method

.method public static final synthetic a(Lcom/truecaller/utils/ui/LinkClickMovementMethod;)Landroid/text/Spannable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->e:Landroid/text/Spannable;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "spannable"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic b(Lcom/truecaller/utils/ui/LinkClickMovementMethod;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->d:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "textView"

    invoke-static {p0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "widget"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buffer"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->d:Landroid/widget/TextView;

    .line 2
    iput-object p2, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->e:Landroid/text/Spannable;

    .line 3
    iget-object p1, p0, Lcom/truecaller/utils/ui/LinkClickMovementMethod;->c:Landroid/view/GestureDetector;

    invoke-virtual {p1, p3}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x0

    return p1
.end method
