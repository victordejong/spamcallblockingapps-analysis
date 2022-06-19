.class public final Le/a/m/m;
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
.field public final synthetic b:Le/a/m/a$d;

.field public final synthetic c:Landroid/text/style/CharacterStyle;


# direct methods
.method public constructor <init>(Le/a/m/a$d;Landroid/text/style/CharacterStyle;)V
    .locals 0

    iput-object p1, p0, Le/a/m/m;->b:Le/a/m/a$d;

    iput-object p2, p0, Le/a/m/m;->c:Landroid/text/style/CharacterStyle;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/m/m;->c:Landroid/text/style/CharacterStyle;

    check-cast v0, Landroid/text/style/URLSpan;

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "style.url"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/m/m;->b:Le/a/m/a$d;

    iget-object v1, v1, Le/a/m/a$d;->c:Le/a/m/q;

    .line 2
    check-cast v1, Le/a/m/v;

    invoke-virtual {v1, v0}, Le/a/m/v;->x4(Ljava/lang/String;)V

    .line 3
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
