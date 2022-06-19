.class public Ln3/r/a/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/d0/a$b;


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
    iput-object p1, p0, Ln3/r/a/l$a;->a:Ln3/r/a/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Ln3/r/a/l$a;->a:Ln3/r/a/l;

    invoke-virtual {v1}, Ln3/r/a/l;->markFragmentsCreated()V

    .line 3
    iget-object v1, p0, Ln3/r/a/l$a;->a:Ln3/r/a/l;

    iget-object v1, v1, Ln3/r/a/l;->mFragmentLifecycleRegistry:Ln3/v/c0;

    sget-object v2, Ln3/v/u$a;->ON_STOP:Ln3/v/u$a;

    invoke-virtual {v1, v2}, Ln3/v/c0;->e(Ln3/v/u$a;)V

    .line 4
    iget-object v1, p0, Ln3/r/a/l$a;->a:Ln3/r/a/l;

    iget-object v1, v1, Ln3/r/a/l;->mFragments:Ln3/r/a/s;

    .line 5
    iget-object v1, v1, Ln3/r/a/s;->a:Ln3/r/a/u;

    iget-object v1, v1, Ln3/r/a/u;->d:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->k0()Landroid/os/Parcelable;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "android:support:fragments"

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-object v0
.end method
