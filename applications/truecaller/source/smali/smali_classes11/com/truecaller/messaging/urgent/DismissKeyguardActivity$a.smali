.class public final Lcom/truecaller/messaging/urgent/DismissKeyguardActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/urgent/DismissKeyguardActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/urgent/DismissKeyguardActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/urgent/DismissKeyguardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/messaging/urgent/DismissKeyguardActivity$a;->a:Lcom/truecaller/messaging/urgent/DismissKeyguardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/DismissKeyguardActivity$a;->a:Lcom/truecaller/messaging/urgent/DismissKeyguardActivity;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/KeyguardManager;

    .line 2
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/messaging/urgent/DismissKeyguardActivity$a;->a:Lcom/truecaller/messaging/urgent/DismissKeyguardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
