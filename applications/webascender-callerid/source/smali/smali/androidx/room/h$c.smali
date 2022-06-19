.class Landroidx/room/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/room/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Landroidx/room/h;


# direct methods
.method constructor <init>(Landroidx/room/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/room/h$c;->f:Landroidx/room/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Landroidx/room/h$c;->f:Landroidx/room/h;

    iget-object v1, v0, Landroidx/room/h;->f:Landroidx/room/e;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, v0, Landroidx/room/h;->h:Landroidx/room/d;

    iget-object v3, v0, Landroidx/room/h;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroidx/room/e;->v0(Landroidx/room/d;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Landroidx/room/h;->c:I

    .line 3
    iget-object v0, p0, Landroidx/room/h$c;->f:Landroidx/room/h;

    iget-object v1, v0, Landroidx/room/h;->d:Landroidx/room/g;

    iget-object v0, v0, Landroidx/room/h;->e:Landroidx/room/g$c;

    invoke-virtual {v1, v0}, Landroidx/room/g;->a(Landroidx/room/g$c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ROOM"

    const-string v2, "Cannot register multi-instance invalidation callback"

    .line 4
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
