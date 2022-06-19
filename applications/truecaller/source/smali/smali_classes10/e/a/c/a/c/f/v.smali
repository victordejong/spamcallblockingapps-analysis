.class public final Le/a/c/a/c/f/v;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/a/c/f/w;


# direct methods
.method public constructor <init>(Le/a/c/a/c/f/w;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/f/v;->b:Le/a/c/a/c/f/w;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Le/a/c/a/c/f/v;->b:Le/a/c/a/c/f/w;

    iget-object v0, v0, Le/a/c/a/c/f/w;->b:Le/a/c/a/c/f/x;

    .line 3
    iget-object v1, v0, Le/a/c/a/c/f/x;->b:Le/a/c/c0/o;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Le/a/c/c0/o;->v(Z)V

    .line 4
    iget-object v0, v0, Le/a/c/a/c/f/x;->b:Le/a/c/c0/o;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Le/a/c/c0/o;->b(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/c/a/c/f/v;->b:Le/a/c/a/c/f/w;

    iget-object v0, v0, Le/a/c/a/c/f/w;->b:Le/a/c/a/c/f/x;

    .line 6
    invoke-virtual {v0}, Le/a/c/a/c/f/x;->d()Le/a/c/r/d/c;

    move-result-object v1

    const-string v2, "switch_now"

    .line 7
    invoke-virtual {v1, v2}, Le/a/c/r/d/c;->b(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string p1, "permission_given"

    goto :goto_0

    :cond_1
    const-string p1, "permission_not_given"

    .line 8
    :goto_0
    invoke-virtual {v1, p1}, Le/a/c/r/d/c;->f(Ljava/lang/String;)V

    .line 9
    iget-object p1, v0, Le/a/c/a/c/f/x;->d:Le/a/c/e/c;

    invoke-virtual {v1}, Le/a/c/r/d/c;->a()Le/a/c/r/d/b;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 10
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
