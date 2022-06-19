.class public Landroidx/fragment/app/FragmentManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/fragment/app/FragmentManager;->p0(Ljava/lang/String;Ln3/v/b0;Ln3/r/a/b0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ln3/r/a/b0;

.field public final synthetic c:Ln3/v/u;

.field public final synthetic d:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ln3/r/a/b0;Ln3/v/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->d:Landroidx/fragment/app/FragmentManager;

    iput-object p2, p0, Landroidx/fragment/app/FragmentManager$6;->a:Ljava/lang/String;

    iput-object p3, p0, Landroidx/fragment/app/FragmentManager$6;->b:Ln3/r/a/b0;

    iput-object p4, p0, Landroidx/fragment/app/FragmentManager$6;->c:Ln3/v/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c7(Ln3/v/b0;Ln3/v/u$a;)V
    .locals 2

    .line 1
    sget-object p1, Ln3/v/u$a;->ON_START:Ln3/v/u$a;

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->d:Landroidx/fragment/app/FragmentManager;

    .line 3
    iget-object p1, p1, Landroidx/fragment/app/FragmentManager;->j:Ljava/util/Map;

    .line 4
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$6;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$6;->b:Ln3/r/a/b0;

    iget-object v1, p0, Landroidx/fragment/app/FragmentManager$6;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ln3/r/a/b0;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 6
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->d:Landroidx/fragment/app/FragmentManager;

    iget-object v0, p0, Landroidx/fragment/app/FragmentManager$6;->a:Ljava/lang/String;

    .line 7
    iget-object p1, p1, Landroidx/fragment/app/FragmentManager;->j:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :cond_0
    sget-object p1, Ln3/v/u$a;->ON_DESTROY:Ln3/v/u$a;

    if-ne p2, p1, :cond_1

    .line 9
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->c:Ln3/v/u;

    check-cast p1, Ln3/v/c0;

    const-string p2, "removeObserver"

    .line 10
    invoke-virtual {p1, p2}, Ln3/v/c0;->d(Ljava/lang/String;)V

    .line 11
    iget-object p1, p1, Ln3/v/c0;->b:Ln3/c/a/b/a;

    invoke-virtual {p1, p0}, Ln3/c/a/b/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Landroidx/fragment/app/FragmentManager$6;->d:Landroidx/fragment/app/FragmentManager;

    .line 13
    iget-object p1, p1, Landroidx/fragment/app/FragmentManager;->k:Ljava/util/Map;

    .line 14
    iget-object p2, p0, Landroidx/fragment/app/FragmentManager$6;->a:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
