.class public final Le/a/r/b0/c;
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
.field public final synthetic b:Le/a/r/b0/d$a;

.field public final synthetic c:Landroid/text/style/CharacterStyle;


# direct methods
.method public constructor <init>(Le/a/r/b0/d$a;Landroid/text/style/CharacterStyle;)V
    .locals 0

    iput-object p1, p0, Le/a/r/b0/c;->b:Le/a/r/b0/d$a;

    iput-object p2, p0, Le/a/r/b0/c;->c:Landroid/text/style/CharacterStyle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/r/b0/c;->c:Landroid/text/style/CharacterStyle;

    check-cast v0, Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "style.url"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/r/b0/c;->b:Le/a/r/b0/d$a;

    iget-object v1, v1, Le/a/r/b0/d$a;->c:Le/a/r/b0/i;

    .line 2
    invoke-virtual {v1, v0}, Le/a/r/b0/i;->D(Ljava/lang/String;)V

    .line 3
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
