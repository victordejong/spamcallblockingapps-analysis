.class public final Le/m/a/c/k1/b$d;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/k1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field public a:Z

.field public b:Z

.field public final synthetic c:Le/m/a/c/k1/b;


# direct methods
.method public constructor <init>(Le/m/a/c/k1/b;Le/m/a/c/k1/b$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/c/k1/b$d;->c:Le/m/a/c/k1/b;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/k1/b$d;->c:Le/m/a/c/k1/b;

    .line 2
    iget-object v0, v0, Le/m/a/c/k1/b;->d:Landroid/os/Handler;

    .line 3
    new-instance v1, Le/m/a/c/k1/a;

    invoke-direct {v1, p0}, Le/m/a/c/k1/a;-><init>(Le/m/a/c/k1/b$d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/m/a/c/k1/b$d;->a()V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    const/16 p1, 0x10

    .line 1
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    .line 2
    iget-boolean p2, p0, Le/m/a/c/k1/b$d;->a:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Le/m/a/c/k1/b$d;->b:Z

    if-eq p2, p1, :cond_1

    :cond_0
    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Le/m/a/c/k1/b$d;->a:Z

    .line 4
    iput-boolean p1, p0, Le/m/a/c/k1/b$d;->b:Z

    .line 5
    invoke-virtual {p0}, Le/m/a/c/k1/b$d;->a()V

    :cond_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/m/a/c/k1/b$d;->a()V

    return-void
.end method
