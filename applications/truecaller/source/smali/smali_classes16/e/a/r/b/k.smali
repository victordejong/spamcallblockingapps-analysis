.class public final Le/a/r/b/k;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/r/b/a$c;

.field public final synthetic c:Landroid/text/style/CharacterStyle;


# direct methods
.method public constructor <init>(Le/a/r/b/a$c;Landroid/text/style/CharacterStyle;)V
    .locals 0

    iput-object p1, p0, Le/a/r/b/k;->b:Le/a/r/b/a$c;

    iput-object p2, p0, Le/a/r/b/k;->c:Landroid/text/style/CharacterStyle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/r/b/k;->c:Landroid/text/style/CharacterStyle;

    check-cast v0, Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "style.url"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/r/b/k;->b:Le/a/r/b/a$c;

    iget-object v1, v1, Le/a/r/b/a$c;->c:Le/a/r/b/h;

    .line 2
    check-cast v1, Le/a/r/b/n;

    .line 3
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "url"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/r/b/i;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/r/b/i;->b(Ljava/lang/String;)V

    .line 5
    :cond_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
