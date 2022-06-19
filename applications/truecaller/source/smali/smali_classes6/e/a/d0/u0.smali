.class public final Le/a/d0/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/d0/v0;

.field public final synthetic b:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Le/a/d0/v0;Ls1/z/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/a;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/d0/u0;->a:Le/a/d0/v0;

    iput-object p2, p0, Le/a/d0/u0;->b:Ls1/z/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/d0/u0;->a:Le/a/d0/v0;

    .line 2
    iget-object v0, v0, Le/a/d0/v0;->c:Landroid/telephony/TelephonyManager;

    .line 3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/d0/u0;->a:Le/a/d0/v0;

    .line 5
    iget-object v0, v0, Le/a/d0/v0;->a:Landroid/os/Handler;

    .line 6
    new-instance v1, Le/a/d0/u0$a;

    invoke-direct {v1, p0}, Le/a/d0/u0$a;-><init>(Le/a/d0/u0;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Le/a/d0/u0;->a:Le/a/d0/v0;

    .line 8
    iget-object v0, v0, Le/a/d0/v0;->a:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    .line 9
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method
