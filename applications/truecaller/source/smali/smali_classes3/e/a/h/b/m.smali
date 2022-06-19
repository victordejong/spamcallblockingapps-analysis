.class public final Le/a/h/b/m;
.super Le/a/h/b/g;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/n;


# instance fields
.field public final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Le/a/h/b/l;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "contentResolver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentUri"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le/a/h/b/g;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/Long;)V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Le/a/h/b/m;->e:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public a(Le/a/h/b/l;)V
    .locals 2

    const-string v0, "condition"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/h/b/m$a;

    invoke-direct {v0, p0}, Le/a/h/b/m$a;-><init>(Le/a/h/b/m;)V

    move-object v1, p1

    check-cast v1, Lcom/truecaller/calling/dialer/LifecycleAwareCondition;

    .line 2
    iput-object v0, v1, Lcom/truecaller/calling/dialer/LifecycleAwareCondition;->a:Ls1/z/b/a;

    .line 3
    iget-object v0, p0, Le/a/h/b/m;->e:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/h/b/m;->e:Ljava/util/HashSet;

    .line 2
    instance-of v1, v0, Ljava/util/Collection;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    .line 3
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/h/b/l;

    .line 4
    invoke-interface {v1}, Le/a/h/b/l;->a()Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Le/a/h/b/g;->b:Le/a/h/b/r$a;

    if-eqz v0, :cond_4

    .line 6
    invoke-interface {v0}, Le/a/h/b/r$a;->onDataChanged()V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 7
    :cond_4
    :goto_1
    iput-boolean v2, p0, Le/a/h/b/m;->f:Z

    return-void
.end method
