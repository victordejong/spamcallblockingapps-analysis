.class public final Le/a/o/a/h/c;
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
.field public final synthetic b:Le/a/o/a/h/d;

.field public final synthetic c:Landroid/text/style/CharacterStyle;


# direct methods
.method public constructor <init>(Le/a/o/a/h/d;Landroid/text/style/CharacterStyle;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/h/c;->b:Le/a/o/a/h/d;

    iput-object p2, p0, Le/a/o/a/h/c;->c:Landroid/text/style/CharacterStyle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/o/a/h/c;->b:Le/a/o/a/h/d;

    iget-object v0, v0, Le/a/o/a/h/d;->b:Le/a/o/a/h/b;

    .line 2
    iget-object v0, v0, Le/a/o/a/h/b;->e:Le/a/o/a/h/e;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Le/a/o/a/h/c;->c:Landroid/text/style/CharacterStyle;

    check-cast v1, Landroid/text/style/URLSpan;

    invoke-virtual {v1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "style.url"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/o/a/h/e;->D(Ljava/lang/String;)V

    .line 4
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0

    :cond_0
    const-string v0, "presenter"

    .line 5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
