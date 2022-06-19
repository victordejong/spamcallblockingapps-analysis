.class public Lcom/google/android/gms/maps/StreetViewPanoramaFragment;
.super Landroid/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;,
        Lcom/google/android/gms/maps/StreetViewPanoramaFragment$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;-><init>(Landroid/app/Fragment;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->a:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    const-class v0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->a:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    .line 3
    iput-object p1, v0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->g:Landroid/app/Activity;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->n()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->a:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    .line 3
    new-instance v1, Le/m/a/f/f/c;

    .line 4
    invoke-direct {v1, v0, p1}, Le/m/a/f/f/c;-><init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Landroid/os/Bundle;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->m(Landroid/os/Bundle;Le/m/a/f/f/h;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->a:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->a:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    invoke-virtual {v0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->c()V

    .line 2
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->a:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    invoke-virtual {v0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->d()V

    .line 2
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 3
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 4
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 5
    iget-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->a:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    .line 6
    iput-object p1, p2, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->g:Landroid/app/Activity;

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;->n()V

    .line 8
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->a:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    .line 10
    new-instance v2, Le/m/a/f/f/b;

    .line 11
    invoke-direct {v2, v1, p1, p2, p3}, Le/m/a/f/f/b;-><init>(Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    invoke-virtual {v1, p3, v2}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->m(Landroid/os/Bundle;Le/m/a/f/f/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception p1

    .line 13
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1
.end method

.method public onLowMemory()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->a:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    invoke-virtual {v0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->e()V

    .line 2
    invoke-super {p0}, Landroid/app/Fragment;->onLowMemory()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->a:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    invoke-virtual {v0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->f()V

    .line 2
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->a:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    invoke-virtual {v0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->g()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    const-class v0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->a:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->h(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->a:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    invoke-virtual {v0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->i()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaFragment;->a:Lcom/google/android/gms/maps/StreetViewPanoramaFragment$b;

    invoke-virtual {v0}, Lcom/google/android/gms/dynamic/DeferredLifecycleHelper;->j()V

    .line 2
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
