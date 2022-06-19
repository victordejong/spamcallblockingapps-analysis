.class public final Le/a/a/c/p8/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/p8/a;


# instance fields
.field public final a:Landroid/text/Spannable;


# direct methods
.method public constructor <init>(Landroid/text/Spannable;)V
    .locals 1

    const-string v0, "spannable"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/p8/c;->a:Landroid/text/Spannable;

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a/c/p8/c;->a:Landroid/text/Spannable;

    new-instance v1, Le/a/a/c/p8/d;

    invoke-direct {v1}, Le/a/a/c/p8/d;-><init>()V

    add-int/lit8 v2, p1, -0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2
    iget-object p1, p0, Le/a/a/c/p8/c;->a:Landroid/text/Spannable;

    new-instance v0, Le/a/a/c/p8/d;

    invoke-direct {v0}, Le/a/a/c/p8/d;-><init>()V

    add-int/lit8 v1, p2, -0x2

    add-int/lit8 v4, p3, 0x1

    invoke-interface {p1, v0, v1, v4, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3
    iget-object p1, p0, Le/a/a/c/p8/c;->a:Landroid/text/Spannable;

    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object p2, p0, Le/a/a/c/p8/c;->a:Landroid/text/Spannable;

    new-instance p3, Le/a/a/c/p8/b;

    invoke-direct {p3, p1}, Le/a/a/c/p8/b;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p3, v2, v4, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public b(Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;II)V
    .locals 4

    const-string v0, "style"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/p8/c;->a:Landroid/text/Spannable;

    new-instance v1, Le/a/a/c/p8/d;

    invoke-direct {v1}, Le/a/a/c/p8/d;-><init>()V

    invoke-virtual {p1}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->getDelimiter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2
    iget-object v0, p0, Le/a/a/c/p8/c;->a:Landroid/text/Spannable;

    new-instance v1, Le/a/a/c/p8/d;

    invoke-direct {v1}, Le/a/a/c/p8/d;-><init>()V

    invoke-virtual {p1}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->getDelimiter()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p3

    invoke-interface {v0, v1, p3, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3
    iget-object v0, p0, Le/a/a/c/p8/c;->a:Landroid/text/Spannable;

    invoke-static {p1}, Le/a/c/p/a;->r(Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;)Landroid/text/style/CharacterStyle;

    move-result-object p1

    invoke-interface {v0, p1, p2, p3, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method
