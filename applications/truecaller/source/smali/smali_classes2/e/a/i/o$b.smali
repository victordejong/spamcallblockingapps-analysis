.class public Le/a/i/o$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/i/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Le/a/i/o$b;->a:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Le/a/i/o$b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Le/a/i/o;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/i/o$b;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/truecaller/log/UnmutedException$AdsIllegalStateException;

    sget-object v1, Lcom/truecaller/log/UnmutedException$AdsIllegalStateException$Cause;->CAMPAIGN_CONFIG_NULL_KEY:Lcom/truecaller/log/UnmutedException$AdsIllegalStateException$Cause;

    invoke-direct {v0, v1}, Lcom/truecaller/log/UnmutedException$AdsIllegalStateException;-><init>(Lcom/truecaller/log/UnmutedException$AdsIllegalStateException$Cause;)V

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/i/o$b;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/truecaller/log/UnmutedException$AdsIllegalStateException;

    sget-object v1, Lcom/truecaller/log/UnmutedException$AdsIllegalStateException$Cause;->CAMPAIGN_CONFIG_NULL_PLACEMENT:Lcom/truecaller/log/UnmutedException$AdsIllegalStateException$Cause;

    invoke-direct {v0, v1}, Lcom/truecaller/log/UnmutedException$AdsIllegalStateException;-><init>(Lcom/truecaller/log/UnmutedException$AdsIllegalStateException$Cause;)V

    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    .line 5
    :cond_1
    new-instance v0, Le/a/i/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/i/o;-><init>(Le/a/i/o$b;Le/a/i/o$a;)V

    return-object v0
.end method
