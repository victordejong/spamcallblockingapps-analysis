.class public final Le/a/a/c/p8/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/p8/a;


# instance fields
.field public final a:[C

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/o<",
            "Landroid/text/style/CharacterStyle;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Landroid/content/Context;

.field public final d:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/p8/e;->c:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/c/p8/e;->d:Ljava/lang/CharSequence;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const-string p2, "(this as java.lang.String).toCharArray()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/a/c/p8/e;->a:[C

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/a/c/p8/e;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/a/c/p8/e;->b:Ljava/util/List;

    new-instance v1, Ls1/o;

    new-instance v2, Landroid/text/style/UnderlineSpan;

    invoke-direct {v2}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    add-int/lit8 p2, p2, -0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Le/a/a/c/p8/e;->b:Ljava/util/List;

    new-instance v1, Ls1/o;

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Le/a/a/c/p8/e;->c:Landroid/content/Context;

    sget v4, Lcom/truecaller/messaging/R$attr;->tcx_brandBackgroundBlue:I

    invoke-static {v3, v4}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Le/a/a/c/p8/e;->a:[C

    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x0

    aput-char v1, v0, p1

    add-int/lit8 p3, p3, 0x1

    .line 4
    invoke-static {p2, p3}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Ls1/u/z;

    invoke-virtual {p2}, Ls1/u/z;->a()I

    move-result p2

    .line 6
    iget-object p3, p0, Le/a/a/c/p8/e;->a:[C

    aput-char v1, p3, p2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b(Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;II)V
    .locals 5

    const-string v0, "style"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/p8/e;->b:Ljava/util/List;

    new-instance v1, Ls1/o;

    invoke-static {p1}, Le/a/c/p/a;->r(Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;)Landroid/text/style/CharacterStyle;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->getDelimiter()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int v0, p2, v0

    invoke-static {v0, p2}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object p2

    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Ls1/u/z;

    invoke-virtual {v0}, Ls1/u/z;->a()I

    move-result v0

    .line 4
    iget-object v2, p0, Le/a/a/c/p8/e;->a:[C

    aput-char v1, v2, v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->getDelimiter()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, p3

    invoke-static {p3, p1}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object p1

    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Ls1/u/z;

    invoke-virtual {p2}, Ls1/u/z;->a()I

    move-result p2

    .line 7
    iget-object p3, p0, Le/a/a/c/p8/e;->a:[C

    aput-char v1, p3, p2

    goto :goto_1

    :cond_1
    return-void
.end method
