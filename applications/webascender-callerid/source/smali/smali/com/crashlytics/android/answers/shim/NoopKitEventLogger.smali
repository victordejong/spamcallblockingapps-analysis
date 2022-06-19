.class Lcom/crashlytics/android/answers/shim/NoopKitEventLogger;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/crashlytics/android/answers/shim/KitEventLogger;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/crashlytics/android/answers/shim/KitEventLogger;
    .locals 1

    .line 1
    new-instance v0, Lcom/crashlytics/android/answers/shim/NoopKitEventLogger;

    invoke-direct {v0}, Lcom/crashlytics/android/answers/shim/NoopKitEventLogger;-><init>()V

    return-object v0
.end method


# virtual methods
.method public logKitEvent(Lcom/crashlytics/android/answers/shim/KitEvent;)V
    .locals 0

    return-void
.end method
