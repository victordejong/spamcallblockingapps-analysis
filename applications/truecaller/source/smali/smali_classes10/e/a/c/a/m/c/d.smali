.class public final Le/a/c/a/m/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# instance fields
.field public final synthetic a:Le/a/c/a/m/c/b;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/c/a/m/c/d;->a:Le/a/c/a/m/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/c/a/m/c/d;->a:Le/a/c/a/m/c/b;

    .line 2
    iget-object v0, v0, Le/a/c/a/m/c/b;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/a/m/b/c;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "searchTerm"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, v0, Le/a/c/a/m/b/c;->a:Ln3/v/k0;

    invoke-virtual {v0, p1}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/c/a/m/c/d;->a:Le/a/c/a/m/c/b;

    .line 2
    iget-object v0, v0, Le/a/c/a/m/c/b;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/a/m/b/c;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "searchTerm"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, v0, Le/a/c/a/m/b/c;->a:Ln3/v/k0;

    invoke-virtual {v0, p1}, Ln3/v/k0;->j(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
