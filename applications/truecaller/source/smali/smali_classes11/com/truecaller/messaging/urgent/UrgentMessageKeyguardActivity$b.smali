.class public final Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$b;->a:Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$b;->a:Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;

    invoke-virtual {p1}, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->finish()V

    return-void
.end method
