.class public final Lcom/truecaller/log/UnmutedException$InsightsExceptions;
.super Lcom/truecaller/log/UnmutedException;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/log/UnmutedException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InsightsExceptions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;)V
    .locals 1

    const-string v0, "cause"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/log/UnmutedException$InsightsExceptions$Cause;->getDescription()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/truecaller/log/UnmutedException;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

    return-void
.end method
