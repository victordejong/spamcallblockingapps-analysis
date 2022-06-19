.class public final Le/a/v2/v/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/v2/v/a;


# instance fields
.field public a:Ljava/lang/Long;

.field public b:Ljava/lang/Long;

.field public final c:Le/a/q2/a;

.field public final d:Le/a/p5/c;


# direct methods
.method public constructor <init>(Le/a/q2/a;Le/a/p5/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/v2/v/b;->c:Le/a/q2/a;

    iput-object p2, p0, Le/a/v2/v/b;->d:Le/a/p5/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/attestation/AttestationEngine;ZZLjava/lang/Integer;)V
    .locals 8

    const-string v0, "engine"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/v2/v/b;->c:Le/a/q2/a;

    .line 2
    new-instance v7, Le/a/v2/v/e;

    .line 3
    iget-object v1, p0, Le/a/v2/v/b;->b:Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Le/a/v2/v/b;->c(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v4, v1

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    .line 4
    invoke-direct/range {v1 .. v6}, Le/a/v2/v/e;-><init>(Lcom/truecaller/attestation/AttestationEngine;ZLjava/lang/Long;ZLjava/lang/Integer;)V

    .line 5
    invoke-interface {v0, v7}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 6
    iget-object p1, p0, Le/a/v2/v/b;->d:Le/a/p5/c;

    invoke-interface {p1}, Le/a/p5/c;->a()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Le/a/v2/v/b;->b:Ljava/lang/Long;

    return-void
.end method

.method public b(Lcom/truecaller/attestation/AttestationEngine;ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v2/v/b;->d:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Le/a/v2/v/b;->a:Ljava/lang/Long;

    .line 2
    iput-object v0, p0, Le/a/v2/v/b;->b:Ljava/lang/Long;

    .line 3
    iget-object v0, p0, Le/a/v2/v/b;->c:Le/a/q2/a;

    .line 4
    new-instance v1, Le/a/v2/v/f;

    invoke-direct {v1, p1, p2, p3}, Le/a/v2/v/f;-><init>(Lcom/truecaller/attestation/AttestationEngine;ZZ)V

    .line 5
    invoke-interface {v0, v1}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public final c(J)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v2/v/b;->d:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v0

    sub-long/2addr v0, p1

    return-wide v0
.end method
