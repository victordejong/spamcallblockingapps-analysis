.class public final Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/c/a/q/c/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity$b;->b:Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity$b;->b:Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;

    .line 2
    iget-object v1, v0, Lcom/truecaller/insights/ui/updatespage/view/UpdatesActivity;->a:Ln3/v/a1$b;

    if-eqz v1, :cond_4

    .line 3
    invoke-interface {v0}, Ln3/v/c1;->getViewModelStore()Ln3/v/b1;

    move-result-object v0

    .line 4
    const-class v2, Le/a/c/a/q/c/b;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "androidx.lifecycle.ViewModelProvider.DefaultKey:"

    .line 6
    invoke-static {v4, v3}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    iget-object v4, v0, Ln3/v/b1;->a:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln3/v/y0;

    .line 8
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9
    instance-of v0, v1, Ln3/v/a1$e;

    if-eqz v0, :cond_2

    .line 10
    check-cast v1, Ln3/v/a1$e;

    invoke-virtual {v1, v4}, Ln3/v/a1$e;->a(Ln3/v/y0;)V

    goto :goto_1

    .line 11
    :cond_0
    instance-of v4, v1, Ln3/v/a1$c;

    if-eqz v4, :cond_1

    .line 12
    check-cast v1, Ln3/v/a1$c;

    invoke-virtual {v1, v3, v2}, Ln3/v/a1$c;->b(Ljava/lang/String;Ljava/lang/Class;)Ln3/v/y0;

    move-result-object v1

    goto :goto_0

    .line 13
    :cond_1
    invoke-interface {v1, v2}, Ln3/v/a1$b;->create(Ljava/lang/Class;)Ln3/v/y0;

    move-result-object v1

    :goto_0
    move-object v4, v1

    .line 14
    iget-object v0, v0, Ln3/v/b1;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/v/y0;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0}, Ln3/v/y0;->onCleared()V

    :cond_2
    :goto_1
    const-string v0, "ViewModelProvider(this, \u2026ageViewModel::class.java)"

    .line 16
    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Le/a/c/a/q/c/b;

    return-object v4

    .line 17
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Local and anonymous classes can not be ViewModels"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "viewModelFactory"

    .line 18
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
