.class public final Le/a/c/a/b/a/x;
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
.field public final synthetic b:Le/a/c/a/b/a/v;


# direct methods
.method public constructor <init>(Le/a/c/a/b/a/v;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/b/a/x;->b:Le/a/c/a/b/a/v;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Le/a/c/a/b/a/b;->f:Le/a/c/a/b/a/b$b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Le/a/c/a/b/a/b;

    invoke-direct {v0}, Le/a/c/a/b/a/b;-><init>()V

    .line 4
    iget-object v1, p0, Le/a/c/a/b/a/x;->b:Le/a/c/a/b/a/v;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 5
    sget-object v2, Le/a/c/a/b/a/b;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1, v2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Le/a/c/a/b/a/x;->b:Le/a/c/a/b/a/v;

    .line 8
    iget-object v0, v0, Le/a/c/a/b/a/v;->a:Le/a/c/e/c;

    if-eqz v0, :cond_1

    .line 9
    sget-object v1, Le/a/c/a/b/c/e;->e:Le/a/c/a/b/c/e;

    .line 10
    sget-object v1, Le/a/c/a/b/c/e;->d:Le/a/c/r/d/c;

    const-string v2, "infocard"

    .line 11
    invoke-virtual {v1, v2}, Le/a/c/r/d/c;->d(Ljava/lang/String;)V

    .line 12
    iget-object v2, p0, Le/a/c/a/b/a/x;->b:Le/a/c/a/b/a/v;

    .line 13
    iget-object v3, v2, Le/a/c/a/b/a/v;->e:Ljava/lang/String;

    .line 14
    iget-boolean v2, v2, Le/a/c/a/b/a/v;->f:Z

    .line 15
    invoke-static {v3, v2}, Le/a/c/c0/q;->b(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Le/a/c/r/d/c;->f(Ljava/lang/String;)V

    .line 16
    :cond_0
    invoke-virtual {v1}, Le/a/c/r/d/c;->a()Le/a/c/r/d/b;

    move-result-object v1

    .line 17
    invoke-interface {v0, v1}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 18
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0

    :cond_1
    const-string v0, "analyticsManager"

    .line 19
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
