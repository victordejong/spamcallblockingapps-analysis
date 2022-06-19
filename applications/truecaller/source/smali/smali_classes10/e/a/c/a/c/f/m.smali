.class public final Le/a/c/a/c/f/m;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/content/Context;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/a/c/f/o;

.field public final synthetic c:Le/a/c/r/d/c;


# direct methods
.method public constructor <init>(Le/a/c/a/c/f/o;Le/a/c/r/d/c;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/f/m;->b:Le/a/c/a/c/f/o;

    iput-object p2, p0, Le/a/c/a/c/f/m;->c:Le/a/c/r/d/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/content/Context;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Le/a/c/a/c/f/m;->c:Le/a/c/r/d/c;

    const-string v0, "download_model"

    invoke-virtual {p1, v0}, Le/a/c/r/d/c;->b(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Le/a/c/a/c/f/m;->b:Le/a/c/a/c/f/o;

    .line 5
    iget-object p1, p1, Le/a/c/a/c/f/o;->d:Le/a/c/e/c;

    .line 6
    iget-object v0, p0, Le/a/c/a/c/f/m;->c:Le/a/c/r/d/c;

    invoke-virtual {v0}, Le/a/c/r/d/c;->a()Le/a/c/r/d/b;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 7
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
