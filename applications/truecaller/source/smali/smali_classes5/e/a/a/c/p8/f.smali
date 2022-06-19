.class public final Le/a/a/c/p8/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/p8/a;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/text/Spannable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/text/Spannable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spannable"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/p8/f;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/c/p8/f;->b:Landroid/text/Spannable;

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/a/c/p8/f;->b:Landroid/text/Spannable;

    iget-object v1, p0, Le/a/a/c/p8/f;->a:Landroid/content/Context;

    invoke-static {v1}, Le/a/c/p/a;->e(Landroid/content/Context;)Landroid/text/style/CharacterStyle;

    move-result-object v1

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2
    iget-object p1, p0, Le/a/a/c/p8/f;->b:Landroid/text/Spannable;

    iget-object v0, p0, Le/a/a/c/p8/f;->a:Landroid/content/Context;

    invoke-static {v0}, Le/a/c/p/a;->e(Landroid/content/Context;)Landroid/text/style/CharacterStyle;

    move-result-object v0

    add-int/lit8 v1, p2, -0x2

    invoke-interface {p1, v0, v1, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3
    iget-object p1, p0, Le/a/a/c/p8/f;->b:Landroid/text/Spannable;

    iget-object v0, p0, Le/a/a/c/p8/f;->a:Landroid/content/Context;

    invoke-static {v0}, Le/a/c/p/a;->e(Landroid/content/Context;)Landroid/text/style/CharacterStyle;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-interface {p1, v0, p3, v1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4
    iget-object p1, p0, Le/a/a/c/p8/f;->b:Landroid/text/Spannable;

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-interface {p1, v0, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 5
    iget-object p1, p0, Le/a/a/c/p8/f;->b:Landroid/text/Spannable;

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v1, p0, Le/a/a/c/p8/f;->a:Landroid/content/Context;

    sget v2, Lcom/truecaller/messaging/R$attr;->tcx_brandBackgroundBlue:I

    invoke-static {v1, v2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-interface {p1, v0, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public b(Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;II)V
    .locals 4

    const-string v0, "style"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/p8/f;->b:Landroid/text/Spannable;

    iget-object v1, p0, Le/a/a/c/p8/f;->a:Landroid/content/Context;

    invoke-static {v1}, Le/a/c/p/a;->e(Landroid/content/Context;)Landroid/text/style/CharacterStyle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->getDelimiter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2
    iget-object v0, p0, Le/a/a/c/p8/f;->b:Landroid/text/Spannable;

    iget-object v1, p0, Le/a/a/c/p8/f;->a:Landroid/content/Context;

    invoke-static {v1}, Le/a/c/p/a;->e(Landroid/content/Context;)Landroid/text/style/CharacterStyle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->getDelimiter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {v0, v1, p3, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3
    iget-object v0, p0, Le/a/a/c/p8/f;->b:Landroid/text/Spannable;

    invoke-static {p1}, Le/a/c/p/a;->r(Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;)Landroid/text/style/CharacterStyle;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method
