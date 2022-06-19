.class public final Le/a/c/a/b/a/c;
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
.field public final synthetic b:Le/a/c/a/b/a/a;


# direct methods
.method public constructor <init>(Le/a/c/a/b/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/b/a/c;->b:Le/a/c/a/b/a/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Le/a/c/a/b/a/b;->f:Le/a/c/a/b/a/b$b;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Le/a/c/a/b/a/b;

    invoke-direct {v0}, Le/a/c/a/b/a/b;-><init>()V

    .line 4
    iget-object v1, p0, Le/a/c/a/b/a/c;->b:Le/a/c/a/b/a/a;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 5
    sget-object v2, Le/a/c/a/b/a/b;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1, v2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Le/a/c/a/b/a/c;->b:Le/a/c/a/b/a/a;

    invoke-virtual {v0}, Le/a/c/a/b/a/a;->OA()Le/a/c/e/c;

    move-result-object v0

    sget-object v1, Le/a/c/a/b/c/d;->g:Le/a/c/a/b/c/d;

    .line 8
    sget-object v1, Le/a/c/a/b/c/d;->f:Le/a/c/r/d/b;

    .line 9
    invoke-interface {v0, v1}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 10
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
