.class public final Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$d;->a:Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$d;->a:Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;

    .line 2
    sget v1, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->g:I

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->pa()Z

    return-void
.end method
