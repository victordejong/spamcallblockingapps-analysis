.class public final Le/a/p5/x0/a;
.super Lcom/truecaller/utils/viewbinding/ViewBindingProperty;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Landroidx/fragment/app/Fragment;",
        "T::",
        "Ln3/j0/a;",
        ">",
        "Lcom/truecaller/utils/viewbinding/ViewBindingProperty<",
        "TF;TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-TF;+TT;>;)V"
        }
    .end annotation

    const-string v0, "viewBinder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;-><init>(Ls1/z/b/l;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ln3/v/b0;
    .locals 1

    .line 1
    check-cast p1, Landroidx/fragment/app/Fragment;

    const-string v0, "thisRef"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Ln3/v/b0;

    move-result-object p1

    const-string v0, "thisRef.viewLifecycleOwner"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
