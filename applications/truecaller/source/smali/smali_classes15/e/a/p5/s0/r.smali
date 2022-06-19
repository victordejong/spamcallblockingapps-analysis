.class public final Le/a/p5/s0/r;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/p5/s0/s;

.field public final synthetic b:Landroid/text/style/CharacterStyle;


# direct methods
.method public constructor <init>(Le/a/p5/s0/s;Landroid/text/style/CharacterStyle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/style/CharacterStyle;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/p5/s0/r;->a:Le/a/p5/s0/s;

    iput-object p2, p0, Le/a/p5/s0/r;->b:Landroid/text/style/CharacterStyle;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/p5/s0/r;->a:Le/a/p5/s0/s;

    iget-object p1, p1, Le/a/p5/s0/s;->b:Ls1/z/b/l;

    iget-object v0, p0, Le/a/p5/s0/r;->b:Landroid/text/style/CharacterStyle;

    check-cast v0, Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "style.url"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
