.class public abstract Lcom/appsflyer/internal/referrer/Referrer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/referrer/Referrer$State;
    }
.end annotation


# instance fields
.field public final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field ɩ:Lcom/appsflyer/internal/referrer/Referrer$State;

.field ι:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsflyer/internal/referrer/Referrer;->map:Ljava/util/Map;

    .line 3
    sget-object v0, Lcom/appsflyer/internal/referrer/Referrer$State;->NOT_STARTED:Lcom/appsflyer/internal/referrer/Referrer$State;

    iput-object v0, p0, Lcom/appsflyer/internal/referrer/Referrer;->ɩ:Lcom/appsflyer/internal/referrer/Referrer$State;

    return-void
.end method

.method static synthetic ι(Lcom/appsflyer/internal/referrer/Referrer;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/appsflyer/internal/referrer/Referrer;->ι:J

    return-wide v0
.end method


# virtual methods
.method public getState()Lcom/appsflyer/internal/referrer/Referrer$State;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/referrer/Referrer;->ɩ:Lcom/appsflyer/internal/referrer/Referrer$State;

    return-object v0
.end method

.method final Ι(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/appsflyer/internal/referrer/Referrer;->ι:J

    .line 2
    sget-object v0, Lcom/appsflyer/internal/referrer/Referrer$State;->STARTED:Lcom/appsflyer/internal/referrer/Referrer$State;

    iput-object v0, p0, Lcom/appsflyer/internal/referrer/Referrer;->ɩ:Lcom/appsflyer/internal/referrer/Referrer$State;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 4
    new-instance v0, Lcom/appsflyer/internal/referrer/Referrer$4;

    invoke-direct {v0, p0, p1}, Lcom/appsflyer/internal/referrer/Referrer$4;-><init>(Lcom/appsflyer/internal/referrer/Referrer;Landroid/app/Application;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method
