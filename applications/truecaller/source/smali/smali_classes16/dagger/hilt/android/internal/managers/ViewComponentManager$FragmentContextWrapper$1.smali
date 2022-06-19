.class public Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;


# direct methods
.method public constructor <init>(Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper$1;->a:Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c7(Ln3/v/b0;Ln3/v/u$a;)V
    .locals 0

    .line 1
    sget-object p1, Ln3/v/u$a;->ON_DESTROY:Ln3/v/u$a;

    if-ne p2, p1, :cond_0

    .line 2
    iget-object p1, p0, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper$1;->a:Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;

    const/4 p2, 0x0

    .line 3
    iput-object p2, p1, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;->a:Landroidx/fragment/app/Fragment;

    .line 4
    iput-object p2, p1, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;->b:Landroid/view/LayoutInflater;

    .line 5
    iput-object p2, p1, Ldagger/hilt/android/internal/managers/ViewComponentManager$FragmentContextWrapper;->c:Landroid/view/LayoutInflater;

    :cond_0
    return-void
.end method
