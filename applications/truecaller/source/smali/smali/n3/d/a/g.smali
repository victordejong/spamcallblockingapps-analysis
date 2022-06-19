.class public abstract Ln3/d/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mApplicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/d/a/g;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method public abstract onCustomTabsServiceConnected(Landroid/content/ComponentName;Ln3/d/a/e;)V
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/d/a/g;->mApplicationContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 2
    new-instance v0, Ln3/d/a/g$a;

    .line 3
    sget v1, Lm3/a/a/b$a;->a:I

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "android.support.customtabs.ICustomTabsService"

    .line 4
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    instance-of v2, v1, Lm3/a/a/b;

    if-eqz v2, :cond_1

    .line 6
    move-object p2, v1

    check-cast p2, Lm3/a/a/b;

    goto :goto_0

    .line 7
    :cond_1
    new-instance v1, Lm3/a/a/b$a$a;

    invoke-direct {v1, p2}, Lm3/a/a/b$a$a;-><init>(Landroid/os/IBinder;)V

    move-object p2, v1

    .line 8
    :goto_0
    iget-object v1, p0, Ln3/d/a/g;->mApplicationContext:Landroid/content/Context;

    invoke-direct {v0, p0, p2, p1, v1}, Ln3/d/a/g$a;-><init>(Ln3/d/a/g;Lm3/a/a/b;Landroid/content/ComponentName;Landroid/content/Context;)V

    .line 9
    invoke-virtual {p0, p1, v0}, Ln3/d/a/g;->onCustomTabsServiceConnected(Landroid/content/ComponentName;Ln3/d/a/e;)V

    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Custom Tabs Service connected before an applicationcontext has been provided."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setApplicationContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/d/a/g;->mApplicationContext:Landroid/content/Context;

    return-void
.end method
