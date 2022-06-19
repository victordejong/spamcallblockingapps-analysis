.class public Lp3/a/o1/d$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/o1/d$e;->u0(Ljava/net/SocketAddress;Lp3/a/n1/v$a;Lp3/a/e;)Lp3/a/n1/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/n1/i$b;


# direct methods
.method public constructor <init>(Lp3/a/o1/d$e;Lp3/a/n1/i$b;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lp3/a/o1/d$e$a;->a:Lp3/a/n1/i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lp3/a/o1/d$e$a;->a:Lp3/a/n1/i$b;

    .line 2
    iget-wide v1, v0, Lp3/a/n1/i$b;->a:J

    const-wide/16 v3, 0x2

    mul-long/2addr v3, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 3
    iget-object v3, v0, Lp3/a/n1/i$b;->b:Lp3/a/n1/i;

    .line 4
    iget-object v3, v3, Lp3/a/n1/i;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    iget-wide v4, v0, Lp3/a/n1/i$b;->a:J

    invoke-virtual {v3, v4, v5, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    sget-object v3, Lp3/a/n1/i;->c:Ljava/util/logging/Logger;

    .line 7
    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v0, v0, Lp3/a/n1/i$b;->b:Lp3/a/n1/i;

    .line 8
    iget-object v0, v0, Lp3/a/n1/i;->a:Ljava/lang/String;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v0

    const-string v0, "Increased {0} to {1}"

    invoke-virtual {v3, v4, v0, v5}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
