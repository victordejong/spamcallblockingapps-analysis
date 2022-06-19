.class public final Le/a/k/a/k/z/o;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/m/a/c/l1/p;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/k/a/k/z/h;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/k/a/k/z/h;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/z/o;->b:Le/a/k/a/k/z/h;

    iput-object p2, p0, Le/a/k/a/k/z/o;->c:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k/a/k/z/o;->b:Le/a/k/a/k/z/h;

    .line 2
    iget-object v0, v0, Le/a/k/a/k/z/h;->i:Le/a/k/c/q;

    .line 3
    invoke-interface {v0}, Le/a/k/c/q;->c()Le/m/a/c/l1/r;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/a/k/a/k/z/o;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Le/m/a/c/l1/r;->a(Landroid/net/Uri;)Le/m/a/c/l1/p;

    move-result-object v0

    return-object v0
.end method
