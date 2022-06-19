.class public final Le/a/c/a/e/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ljava/util/List<",
        "+",
        "Le/a/c/a/e/c/f;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/e/a/a;


# direct methods
.method public constructor <init>(Le/a/c/a/e/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/e/a/b;->a:Le/a/c/a/e/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/List;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/c/a/e/c/f;

    .line 4
    instance-of v1, v0, Le/a/c/a/e/c/f$d;

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Le/a/c/a/e/a/b;->a:Le/a/c/a/e/a/a;

    .line 6
    iget-object v0, v0, Le/a/c/a/e/a/a;->a:Ls1/z/b/l;

    if-eqz v0, :cond_0

    .line 7
    sget-object v1, Le/a/c/q/a$a$a;->a:Le/a/c/q/a$a$a;

    invoke-interface {v0, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    goto :goto_0

    .line 8
    :cond_1
    instance-of v1, v0, Le/a/c/a/e/c/f$c;

    if-eqz v1, :cond_2

    .line 9
    sget-object v0, Le/a/c/a/e/a/i;->f:Le/a/c/a/e/a/i$b;

    const/4 v1, 0x0

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v0, Le/a/c/a/e/a/i;

    invoke-direct {v0}, Le/a/c/a/e/a/i;-><init>()V

    .line 12
    iput-boolean v1, v0, Le/a/c/a/e/a/i;->a:Z

    .line 13
    iget-object v1, p0, Le/a/c/a/e/a/b;->a:Le/a/c/a/e/a/a;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 14
    sget-object v2, Le/a/c/a/e/a/i;->e:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v1, v2}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_2
    instance-of v0, v0, Le/a/c/a/e/c/f$b;

    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Le/a/c/a/e/a/b;->a:Le/a/c/a/e/a/a;

    invoke-virtual {v0}, Le/m/a/g/e/e;->dismiss()V

    goto :goto_0

    :cond_3
    return-void
.end method
