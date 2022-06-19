.class public final Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Le/a/a/h1/n/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/messaging/urgent/service/UrgentMessageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Le/a/a/h1/o/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/a/h1/o/i;)V
    .locals 1

    const-string v0, "presenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public Zd(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/h1/o/i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Le/a/a/h1/n/k;->Zd(J)V

    :cond_0
    return-void
.end method
