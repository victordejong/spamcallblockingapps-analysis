.class public Lcom/crashlytics/android/answers/shim/KitEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final eventName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/answers/shim/KitEvent;->attributes:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/crashlytics/android/answers/shim/KitEvent;->eventName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public putAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/answers/shim/KitEvent;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/crashlytics/android/answers/shim/KitEvent;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/shim/KitEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/crashlytics/android/answers/shim/KitEvent;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method toCustomEvent()Lcom/crashlytics/android/answers/CustomEvent;
    .locals 5

    .line 1
    new-instance v0, Lcom/crashlytics/android/answers/CustomEvent;

    iget-object v1, p0, Lcom/crashlytics/android/answers/shim/KitEvent;->eventName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/crashlytics/android/answers/CustomEvent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/crashlytics/android/answers/shim/KitEvent;->attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    iget-object v3, p0, Lcom/crashlytics/android/answers/shim/KitEvent;->attributes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 5
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/crashlytics/android/answers/AnswersEvent;

    goto :goto_0

    .line 6
    :cond_1
    instance-of v4, v3, Ljava/lang/Number;

    if-eqz v4, :cond_0

    .line 7
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v0, v2, v3}, Lcom/crashlytics/android/answers/CustomEvent;->putCustomAttribute(Ljava/lang/String;Ljava/lang/Number;)Lcom/crashlytics/android/answers/AnswersEvent;

    goto :goto_0

    :cond_2
    return-object v0
.end method
