.class public Ln3/l0/a/e;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter$a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroidx/viewpager2/adapter/FragmentStateAdapter$b;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/adapter/FragmentStateAdapter$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/l0/a/e;->a:Landroidx/viewpager2/adapter/FragmentStateAdapter$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$a;-><init>(Ln3/l0/a/a;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/l0/a/e;->a:Landroidx/viewpager2/adapter/FragmentStateAdapter$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$b;->b(Z)V

    return-void
.end method
