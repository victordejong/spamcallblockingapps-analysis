.class public Ln3/r/a/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/d/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/r/a/l;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/r/a/l;


# direct methods
.method public constructor <init>(Ln3/r/a/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/r/a/l$b;->a:Ln3/r/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p1, p0, Ln3/r/a/l$b;->a:Ln3/r/a/l;

    iget-object p1, p1, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 2
    iget-object p1, p1, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object v0, p1, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p1, v1}, Landroidx/fragment/app/FragmentManager;->b(Ln3/r/a/u;Ln3/r/a/r;Landroidx/fragment/app/Fragment;)V

    .line 3
    iget-object p1, p0, Ln3/r/a/l$b;->a:Ln3/r/a/l;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getSavedStateRegistry()Ln3/d0/a;

    move-result-object p1

    const-string v0, "android:support:fragments"

    .line 4
    invoke-virtual {p1, v0}, Ln3/d0/a;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 6
    iget-object v0, p0, Ln3/r/a/l$b;->a:Ln3/r/a/l;

    iget-object v0, v0, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 7
    iget-object v0, v0, Ln3/r/a/s;->a:Ln3/r/a/u;

    instance-of v1, v0, Ln3/v/c1;

    if-eqz v1, :cond_0

    .line 8
    iget-object v0, v0, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->j0(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
