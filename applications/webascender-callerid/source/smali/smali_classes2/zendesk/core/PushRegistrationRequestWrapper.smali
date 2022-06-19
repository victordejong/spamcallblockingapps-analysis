.class Lzendesk/core/PushRegistrationRequestWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private pushRegistrationRequest:Lzendesk/core/PushRegistrationRequest;
    .annotation runtime Lcom/google/gson/v/c;
        value = "push_notification_device"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzendesk/core/PushRegistrationRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/core/PushRegistrationRequestWrapper;->pushRegistrationRequest:Lzendesk/core/PushRegistrationRequest;

    return-void
.end method


# virtual methods
.method public getPushRegistrationRequest()Lzendesk/core/PushRegistrationRequest;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/core/PushRegistrationRequestWrapper;->pushRegistrationRequest:Lzendesk/core/PushRegistrationRequest;

    return-object v0
.end method
