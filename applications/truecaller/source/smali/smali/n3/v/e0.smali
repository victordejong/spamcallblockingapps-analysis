.class public Ln3/v/e0;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Ln3/v/b0;


# instance fields
.field public final a:Ln3/v/u0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Ln3/v/u0;

    invoke-direct {v0, p0}, Ln3/v/u0;-><init>(Ln3/v/b0;)V

    iput-object v0, p0, Ln3/v/e0;->a:Ln3/v/u0;

    return-void
.end method


# virtual methods
.method public getLifecycle()Ln3/v/u;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/v/e0;->a:Ln3/v/u0;

    .line 2
    iget-object v0, v0, Ln3/v/u0;->a:Ln3/v/c0;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object p1, p0, Ln3/v/e0;->a:Ln3/v/u0;

    .line 2
    sget-object v0, Ln3/v/u$a;->ON_START:Ln3/v/u$a;

    invoke-virtual {p1, v0}, Ln3/v/u0;->a(Ln3/v/u$a;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/v/e0;->a:Ln3/v/u0;

    .line 2
    sget-object v1, Ln3/v/u$a;->ON_CREATE:Ln3/v/u$a;

    invoke-virtual {v0, v1}, Ln3/v/u0;->a(Ln3/v/u$a;)V

    .line 3
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/v/e0;->a:Ln3/v/u0;

    .line 2
    sget-object v1, Ln3/v/u$a;->ON_STOP:Ln3/v/u$a;

    invoke-virtual {v0, v1}, Ln3/v/u0;->a(Ln3/v/u$a;)V

    .line 3
    sget-object v1, Ln3/v/u$a;->ON_DESTROY:Ln3/v/u$a;

    invoke-virtual {v0, v1}, Ln3/v/u0;->a(Ln3/v/u$a;)V

    .line 4
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/v/e0;->a:Ln3/v/u0;

    .line 2
    sget-object v1, Ln3/v/u$a;->ON_START:Ln3/v/u$a;

    invoke-virtual {v0, v1}, Ln3/v/u0;->a(Ln3/v/u$a;)V

    .line 3
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
