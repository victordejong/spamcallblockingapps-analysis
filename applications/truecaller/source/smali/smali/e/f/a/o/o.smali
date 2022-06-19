.class public Le/f/a/o/o;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/o/o$a;
    }
.end annotation


# instance fields
.field public final a:Le/f/a/o/a;

.field public final b:Le/f/a/o/m;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/f/a/o/o;",
            ">;"
        }
    .end annotation
.end field

.field public d:Le/f/a/o/o;

.field public e:Le/f/a/i;

.field public f:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Le/f/a/o/a;

    invoke-direct {v0}, Le/f/a/o/a;-><init>()V

    .line 2
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 3
    new-instance v1, Le/f/a/o/o$a;

    invoke-direct {v1, p0}, Le/f/a/o/o$a;-><init>(Le/f/a/o/o;)V

    iput-object v1, p0, Le/f/a/o/o;->b:Le/f/a/o/m;

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Le/f/a/o/o;->c:Ljava/util/Set;

    .line 5
    iput-object v0, p0, Le/f/a/o/o;->a:Le/f/a/o/a;

    return-void
.end method


# virtual methods
.method public final OA()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/f/a/o/o;->f:Landroidx/fragment/app/Fragment;

    :goto_0
    return-object v0
.end method

.method public final PA(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/f/a/o/o;->QA()V

    .line 2
    invoke-static {p1}, Le/f/a/c;->b(Landroid/content/Context;)Le/f/a/c;

    move-result-object v0

    .line 3
    iget-object v0, v0, Le/f/a/c;->g:Le/f/a/o/l;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Le/f/a/o/l;->k(Landroid/content/Context;)Z

    move-result p1

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, p2, v1, p1}, Le/f/a/o/l;->j(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/Fragment;Z)Le/f/a/o/o;

    move-result-object p1

    .line 7
    iput-object p1, p0, Le/f/a/o/o;->d:Le/f/a/o/o;

    .line 8
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    iget-object p1, p0, Le/f/a/o/o;->d:Le/f/a/o/o;

    .line 10
    iget-object p1, p1, Le/f/a/o/o;->c:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final QA()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/o/o;->d:Le/f/a/o/o;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/f/a/o/o;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/f/a/o/o;->d:Le/f/a/o/o;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    move-object p1, p0

    .line 2
    :goto_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const/4 v0, 0x5

    const-string v1, "SupportRMFragment"

    if-nez p1, :cond_1

    .line 5
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void

    .line 6
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Le/f/a/o/o;->PA(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 7
    :catch_0
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    :goto_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Le/f/a/o/o;->a:Le/f/a/o/a;

    invoke-virtual {v0}, Le/f/a/o/a;->c()V

    .line 3
    invoke-virtual {p0}, Le/f/a/o/o;->QA()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/f/a/o/o;->f:Landroidx/fragment/app/Fragment;

    .line 3
    invoke-virtual {p0}, Le/f/a/o/o;->QA()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Le/f/a/o/o;->a:Le/f/a/o/a;

    invoke-virtual {v0}, Le/f/a/o/a;->d()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Le/f/a/o/o;->a:Le/f/a/o/a;

    invoke-virtual {v0}, Le/f/a/o/a;->e()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le/f/a/o/o;->OA()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
