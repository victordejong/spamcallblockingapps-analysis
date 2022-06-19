.class public abstract Lcom/truecaller/utils/viewbinding/ViewBindingProperty;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/utils/viewbinding/ViewBindingProperty$ClearOnDestroyLifecycleObserver;,
        Lcom/truecaller/utils/viewbinding/ViewBindingProperty$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "T::",
        "Ln3/j0/a;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "TR;TT;>;"
    }
.end annotation


# static fields
.field public static final c:Landroid/os/Handler;

.field public static final d:Lcom/truecaller/utils/viewbinding/ViewBindingProperty$a;


# instance fields
.field public a:Ln3/j0/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "TR;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/utils/viewbinding/ViewBindingProperty$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->d:Lcom/truecaller/utils/viewbinding/ViewBindingProperty$a;

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-TR;+TT;>;)V"
        }
    .end annotation

    const-string v0, "viewBinder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b:Ls1/z/b/l;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ln3/v/b0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ln3/v/b0;"
        }
    .end annotation
.end method

.method public b(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Ls1/a/l<",
            "*>;)TT;"
        }
    .end annotation

    const-string v0, "thisRef"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "property"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->a:Ln3/j0/a;

    if-eqz p2, :cond_0

    return-object p2

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->a(Ljava/lang/Object;)Ln3/v/b0;

    move-result-object p2

    invoke-interface {p2}, Ln3/v/b0;->getLifecycle()Ln3/v/u;

    move-result-object p2

    const-string v0, "getLifecycleOwner(thisRef).lifecycle"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b:Ls1/z/b/l;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/j0/a;

    .line 4
    move-object v0, p2

    check-cast v0, Ln3/v/c0;

    .line 5
    iget-object v0, v0, Ln3/v/c0;->c:Ln3/v/u$b;

    .line 6
    sget-object v1, Ln3/v/u$b;->a:Ln3/v/u$b;

    if-eq v0, v1, :cond_1

    .line 7
    new-instance v0, Lcom/truecaller/utils/viewbinding/ViewBindingProperty$ClearOnDestroyLifecycleObserver;

    invoke-direct {v0, p0}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty$ClearOnDestroyLifecycleObserver;-><init>(Lcom/truecaller/utils/viewbinding/ViewBindingProperty;)V

    invoke-virtual {p2, v0}, Ln3/v/u;->a(Ln3/v/a0;)V

    .line 8
    iput-object p1, p0, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->a:Ln3/j0/a;

    :cond_1
    return-object p1
.end method
