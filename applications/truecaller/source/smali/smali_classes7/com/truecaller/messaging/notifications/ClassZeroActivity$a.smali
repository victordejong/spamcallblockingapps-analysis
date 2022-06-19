.class public Lcom/truecaller/messaging/notifications/ClassZeroActivity$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/messaging/notifications/ClassZeroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/truecaller/messaging/notifications/ClassZeroActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/notifications/ClassZeroActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/notifications/ClassZeroActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/notifications/ClassZeroActivity;

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 3
    sget v1, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->g:I

    .line 4
    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->ta(Z)V

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/messaging/notifications/ClassZeroActivity;->qa()V

    :cond_0
    return-void
.end method
