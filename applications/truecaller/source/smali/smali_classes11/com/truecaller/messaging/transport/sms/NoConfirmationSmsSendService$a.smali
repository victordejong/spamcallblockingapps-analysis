.class public final Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Lcom/truecaller/messaging/data/types/Message;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;

.field public final synthetic b:I


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;I)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$a;->a:Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;

    iput p2, p0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/messaging/data/types/Message;

    .line 2
    iget-object p1, p0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$a;->a:Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService;

    iget v0, p0, Lcom/truecaller/messaging/transport/sms/NoConfirmationSmsSendService$a;->b:I

    invoke-virtual {p1, v0}, Landroid/app/Service;->stopSelf(I)V

    return-void
.end method
