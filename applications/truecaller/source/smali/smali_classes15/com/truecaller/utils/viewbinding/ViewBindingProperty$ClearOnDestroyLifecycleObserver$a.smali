.class public final Lcom/truecaller/utils/viewbinding/ViewBindingProperty$ClearOnDestroyLifecycleObserver$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/utils/viewbinding/ViewBindingProperty$ClearOnDestroyLifecycleObserver;->onDestroy(Ln3/v/b0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/utils/viewbinding/ViewBindingProperty$ClearOnDestroyLifecycleObserver;


# direct methods
.method public constructor <init>(Lcom/truecaller/utils/viewbinding/ViewBindingProperty$ClearOnDestroyLifecycleObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/utils/viewbinding/ViewBindingProperty$ClearOnDestroyLifecycleObserver$a;->a:Lcom/truecaller/utils/viewbinding/ViewBindingProperty$ClearOnDestroyLifecycleObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/utils/viewbinding/ViewBindingProperty$ClearOnDestroyLifecycleObserver$a;->a:Lcom/truecaller/utils/viewbinding/ViewBindingProperty$ClearOnDestroyLifecycleObserver;

    iget-object v0, v0, Lcom/truecaller/utils/viewbinding/ViewBindingProperty$ClearOnDestroyLifecycleObserver;->a:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    const/4 v1, 0x0

    .line 2
    iput-object v1, v0, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->a:Ln3/j0/a;

    return-void
.end method
