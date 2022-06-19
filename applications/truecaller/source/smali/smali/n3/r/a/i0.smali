.class public Ln3/r/a/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/r/a/m0$a;

.field public final synthetic b:Landroidx/fragment/app/Fragment;

.field public final synthetic c:Ln3/k/e/a;


# direct methods
.method public constructor <init>(Ln3/r/a/m0$a;Landroidx/fragment/app/Fragment;Ln3/k/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/r/a/i0;->a:Ln3/r/a/m0$a;

    iput-object p2, p0, Ln3/r/a/i0;->b:Landroidx/fragment/app/Fragment;

    iput-object p3, p0, Ln3/r/a/i0;->c:Ln3/k/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/r/a/i0;->a:Ln3/r/a/m0$a;

    iget-object v1, p0, Ln3/r/a/i0;->b:Landroidx/fragment/app/Fragment;

    iget-object v2, p0, Ln3/r/a/i0;->c:Ln3/k/e/a;

    check-cast v0, Landroidx/fragment/app/FragmentManager$d;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentManager$d;->a(Landroidx/fragment/app/Fragment;Ln3/k/e/a;)V

    return-void
.end method
