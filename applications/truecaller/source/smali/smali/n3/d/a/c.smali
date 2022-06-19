.class public Ln3/d/a/c;
.super Ln3/d/a/g;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/d/a/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ln3/d/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCustomTabsServiceConnected(Landroid/content/ComponentName;Ln3/d/a/e;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p2, v0, v1}, Ln3/d/a/e;->c(J)Z

    .line 2
    iget-object p1, p0, Ln3/d/a/c;->a:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
