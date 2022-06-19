.class public final Le/a/b/a/a/a/c/d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/b0/p/c;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/b/a/a/a/c/c;


# direct methods
.method public constructor <init>(Le/a/b/a/a/a/c/c;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/a/a/c/d;->b:Le/a/b/a/a/a/c/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Le/a/b0/p/c;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/b/a/a/a/c/d;->b:Le/a/b/a/a/a/c/c;

    .line 4
    sget-object v1, Le/a/b/a/a/a/c/c;->i:[Ls1/a/l;

    .line 5
    invoke-virtual {v0}, Le/a/b/a/a/a/c/c;->OA()Le/a/b/m/s0;

    move-result-object v0

    .line 6
    iget-object v0, v0, Le/a/b/m/s0;->f:Landroidx/appcompat/widget/SearchView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/widget/SearchView;->B(Ljava/lang/CharSequence;Z)V

    .line 7
    iget-object v0, p0, Le/a/b/a/a/a/c/d;->b:Le/a/b/a/a/a/c/c;

    .line 8
    iget-object v0, v0, Le/a/b/a/a/a/c/c;->f:Le/a/b/a/a/a/c/c$e;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p1}, Le/a/b/a/a/a/c/c$e;->U(Le/a/b0/p/c;)V

    .line 10
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
