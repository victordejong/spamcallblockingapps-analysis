.class public final Le/a/d/x/r/g;
.super Le/a/d/x/r/m;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/voip/manager/rtm/FailedRtmLoginReason;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/manager/rtm/FailedRtmLoginReason;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/d/x/r/m;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Le/a/d/x/r/g;->a:Lcom/truecaller/voip/manager/rtm/FailedRtmLoginReason;

    return-void
.end method
