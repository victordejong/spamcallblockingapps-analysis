.class public final Lp3/a/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp3/a/b0$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lp3/a/b0$a;

.field public final c:J

.field public final d:Lp3/a/d0;

.field public final e:Lp3/a/d0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lp3/a/b0$a;JLp3/a/d0;Lp3/a/d0;Lp3/a/a0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/a/b0;->a:Ljava/lang/String;

    const-string p1, "severity"

    .line 3
    invoke-static {p2, p1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lp3/a/b0;->b:Lp3/a/b0$a;

    .line 4
    iput-wide p3, p0, Lp3/a/b0;->c:J

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lp3/a/b0;->d:Lp3/a/d0;

    .line 6
    iput-object p6, p0, Lp3/a/b0;->e:Lp3/a/d0;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Lp3/a/b0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lp3/a/b0;

    .line 3
    iget-object v0, p0, Lp3/a/b0;->a:Ljava/lang/String;

    iget-object v2, p1, Lp3/a/b0;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp3/a/b0;->b:Lp3/a/b0$a;

    iget-object v2, p1, Lp3/a/b0;->b:Lp3/a/b0$a;

    .line 4
    invoke-static {v0, v2}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lp3/a/b0;->c:J

    iget-wide v4, p1, Lp3/a/b0;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lp3/a/b0;->d:Lp3/a/d0;

    iget-object v2, p1, Lp3/a/b0;->d:Lp3/a/d0;

    .line 5
    invoke-static {v0, v2}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lp3/a/b0;->e:Lp3/a/d0;

    iget-object p1, p1, Lp3/a/b0;->e:Lp3/a/d0;

    .line 6
    invoke-static {v0, p1}, Ln3/g0/y;->equal1(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    iget-object v1, p0, Lp3/a/b0;->a:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/b0;->b:Lp3/a/b0$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lp3/a/b0;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/b0;->d:Lp3/a/d0;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lp3/a/b0;->e:Lp3/a/d0;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 2
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Ln3/g0/y;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lp3/a/b0;->a:Ljava/lang/String;

    const-string v2, "description"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 3
    iget-object v1, p0, Lp3/a/b0;->b:Lp3/a/b0$a;

    const-string v2, "severity"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 5
    iget-wide v1, p0, Lp3/a/b0;->c:J

    const-string v3, "timestampNanos"

    .line 6
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lp3/a/b0;->d:Lp3/a/d0;

    const-string v2, "channelRef"

    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 8
    iget-object v1, p0, Lp3/a/b0;->e:Lp3/a/d0;

    const-string v2, "subchannelRef"

    .line 9
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 10
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
