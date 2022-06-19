.class public final Lcom/truecaller/messaging/transport/im/ImSubscriptionService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/transport/im/ImSubscriptionService;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/transport/im/ImSubscriptionService;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/transport/im/ImSubscriptionService;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/messaging/transport/im/ImSubscriptionService$b;->a:Lcom/truecaller/messaging/transport/im/ImSubscriptionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/transport/im/ImSubscriptionService$b;->a:Lcom/truecaller/messaging/transport/im/ImSubscriptionService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
