.class public Lcom/crashlytics/android/answers/shim/AnswersOptionalLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AnswersOptionalLogger"

.field private static final logger:Lcom/crashlytics/android/answers/shim/KitEventLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/crashlytics/android/answers/shim/AnswersKitEventLogger;->create()Lcom/crashlytics/android/answers/shim/AnswersKitEventLogger;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AnswersOptionalLogger"

    const-string v2, "Unexpected error creating AnswersKitEventLogger"

    .line 2
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/crashlytics/android/answers/shim/NoopKitEventLogger;->create()Lcom/crashlytics/android/answers/shim/KitEventLogger;

    move-result-object v0

    :goto_1
    sput-object v0, Lcom/crashlytics/android/answers/shim/AnswersOptionalLogger;->logger:Lcom/crashlytics/android/answers/shim/KitEventLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/crashlytics/android/answers/shim/KitEventLogger;
    .locals 1

    .line 1
    sget-object v0, Lcom/crashlytics/android/answers/shim/AnswersOptionalLogger;->logger:Lcom/crashlytics/android/answers/shim/KitEventLogger;

    return-object v0
.end method
