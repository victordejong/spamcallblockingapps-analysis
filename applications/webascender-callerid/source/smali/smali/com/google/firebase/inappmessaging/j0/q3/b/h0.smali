.class public Lcom/google/firebase/inappmessaging/j0/q3/b/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/inappmessaging/model/m;
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/firebase/inappmessaging/model/m;->a()Lcom/google/firebase/inappmessaging/model/m$a;

    move-result-object v0

    const-wide/16 v1, 0x1

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/model/m$a;->b(J)Lcom/google/firebase/inappmessaging/model/m$a;

    const-string v3, "APP_FOREGROUND_ONE_PER_DAY_LIMITER_KEY"

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/firebase/inappmessaging/model/m$a;->c(Ljava/lang/String;)Lcom/google/firebase/inappmessaging/model/m$a;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/inappmessaging/model/m$a;->d(J)Lcom/google/firebase/inappmessaging/model/m$a;

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/inappmessaging/model/m$a;->a()Lcom/google/firebase/inappmessaging/model/m;

    move-result-object v0

    return-object v0
.end method
