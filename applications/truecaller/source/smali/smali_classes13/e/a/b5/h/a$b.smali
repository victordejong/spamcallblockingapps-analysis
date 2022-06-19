.class public Le/a/b5/h/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/b5/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b5/h/a;


# direct methods
.method public constructor <init>(Le/a/b5/h/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/b5/h/a$b;->a:Le/a/b5/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnectionFailed("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->o2()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget v0, p1, Lcom/google/android/gms/common/ConnectionResult;->b:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 4
    iget-object v0, p0, Le/a/b5/h/a$b;->a:Le/a/b5/h/a;

    const/4 v1, 0x5

    .line 5
    iget-object v0, v0, Le/a/b5/a;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/b5/h/a$b;->a:Le/a/b5/h/a;

    const/16 v3, 0xf

    .line 7
    invoke-virtual {v0, v3, v1, v2, p1}, Le/a/b5/a;->o(IIILjava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/b5/h/a$b;->a:Le/a/b5/h/a;

    new-instance v3, Le/a/b5/d;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Le/a/b5/d;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x10

    .line 9
    invoke-virtual {v0, p1, v1, v2, v3}, Le/a/b5/a;->o(IIILjava/lang/Object;)V

    :goto_0
    return-void
.end method
