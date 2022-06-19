.class public abstract Ln3/k/a/a0;
.super Ln3/k/a/i;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/k/a/i;-><init>()V

    return-void
.end method


# virtual methods
.method public dequeueWork()Ln3/k/a/i$e;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Ln3/k/a/i;->dequeueWork()Ln3/k/a/i$e;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    new-instance v2, Ln3/k/a/h;

    invoke-direct {v2, v1}, Ln3/k/a/h;-><init>(Ln3/k/a/i$e;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-static {v1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0
.end method
