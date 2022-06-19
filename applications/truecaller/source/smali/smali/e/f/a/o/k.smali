.class public Le/f/a/o/k;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/o/k$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final a:Le/f/a/o/a;

.field public final b:Le/f/a/o/m;

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/f/a/o/k;",
            ">;"
        }
    .end annotation
.end field

.field public d:Le/f/a/i;

.field public e:Le/f/a/o/k;

.field public f:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Le/f/a/o/a;

    invoke-direct {v0}, Le/f/a/o/a;-><init>()V

    .line 2
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 3
    new-instance v1, Le/f/a/o/k$a;

    invoke-direct {v1, p0}, Le/f/a/o/k$a;-><init>(Le/f/a/o/k;)V

    iput-object v1, p0, Le/f/a/o/k;->b:Le/f/a/o/m;

    .line 4
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Le/f/a/o/k;->c:Ljava/util/Set;

    .line 5
    iput-object v0, p0, Le/f/a/o/k;->a:Le/f/a/o/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/f/a/o/k;->b()V

    .line 2
    invoke-static {p1}, Le/f/a/c;->b(Landroid/content/Context;)Le/f/a/c;

    move-result-object v0

    .line 3
    iget-object v0, v0, Le/f/a/c;->g:Le/f/a/o/l;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Le/f/a/o/l;->k(Landroid/content/Context;)Z

    move-result p1

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2, p1}, Le/f/a/o/l;->i(Landroid/app/FragmentManager;Landroid/app/Fragment;Z)Le/f/a/o/k;

    move-result-object p1

    .line 7
    iput-object p1, p0, Le/f/a/o/k;->e:Le/f/a/o/k;

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 9
    iget-object p1, p0, Le/f/a/o/k;->e:Le/f/a/o/k;

    .line 10
    iget-object p1, p1, Le/f/a/o/k;->c:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/o/k;->e:Le/f/a/o/k;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/f/a/o/k;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Le/f/a/o/k;->e:Le/f/a/o/k;

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Le/f/a/o/k;->a(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x5

    const-string v0, "RMFragment"

    .line 3
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 2
    iget-object v0, p0, Le/f/a/o/k;->a:Le/f/a/o/a;

    invoke-virtual {v0}, Le/f/a/o/a;->c()V

    .line 3
    invoke-virtual {p0}, Le/f/a/o/k;->b()V

    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 2
    invoke-virtual {p0}, Le/f/a/o/k;->b()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Le/f/a/o/k;->a:Le/f/a/o/a;

    invoke-virtual {v0}, Le/f/a/o/a;->d()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 2
    iget-object v0, p0, Le/f/a/o/k;->a:Le/f/a/o/a;

    invoke-virtual {v0}, Le/f/a/o/a;->e()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Landroid/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p0}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Le/f/a/o/k;->f:Landroid/app/Fragment;

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
