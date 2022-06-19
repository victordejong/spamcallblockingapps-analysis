.class Lcom/google/firebase/messaging/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/iid/b0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/messaging/g;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/messaging/g;


# direct methods
.method constructor <init>(Lcom/google/firebase/messaging/g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/firebase/messaging/g$a;->a:Lcom/google/firebase/messaging/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/g$a;->a:Lcom/google/firebase/messaging/g;

    .line 1
    invoke-static {v0, p1}, Lcom/google/firebase/messaging/g;->access$000(Lcom/google/firebase/messaging/g;Landroid/content/Intent;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method
