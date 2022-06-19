.class public final Le/a/c/a/c/f/u;
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
.field public final synthetic b:Le/a/c/a/c/f/x;


# direct methods
.method public constructor <init>(Le/a/c/a/c/f/x;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/f/u;->b:Le/a/c/a/c/f/x;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/a/c/f/u;->b:Le/a/c/a/c/f/x;

    .line 2
    invoke-virtual {v0}, Le/a/c/a/c/f/x;->d()Le/a/c/r/d/c;

    move-result-object v0

    const-string v1, "dismiss"

    .line 3
    invoke-virtual {v0, v1}, Le/a/c/r/d/c;->b(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Le/a/c/a/c/f/u;->b:Le/a/c/a/c/f/x;

    .line 5
    iget-object v1, v1, Le/a/c/a/c/f/x;->d:Le/a/c/e/c;

    .line 6
    invoke-virtual {v0}, Le/a/c/r/d/c;->a()Le/a/c/r/d/b;

    move-result-object v0

    invoke-interface {v1, v0}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 7
    iget-object v0, p0, Le/a/c/a/c/f/u;->b:Le/a/c/a/c/f/x;

    .line 8
    iget-object v1, v0, Le/a/c/a/c/f/x;->b:Le/a/c/c0/o;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Le/a/c/c0/o;->v(Z)V

    .line 9
    iget-object v0, v0, Le/a/c/a/c/f/x;->b:Le/a/c/c0/o;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Le/a/c/c0/o;->b(I)V

    .line 10
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
