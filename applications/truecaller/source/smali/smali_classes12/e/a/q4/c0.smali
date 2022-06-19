.class public final Le/a/q4/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q4/j0;


# instance fields
.field public final a:Le/a/q2/d1/d;


# direct methods
.method public constructor <init>(Le/a/q2/d1/d;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "fireBaseLogger"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q4/c0;->a:Le/a/q2/d1/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/q4/c0;->a:Le/a/q2/d1/d;

    const-string v0, "ReferralSent"

    invoke-interface {p1, v0}, Le/a/q2/d1/d;->c(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Le/a/q4/c0;->a:Le/a/q2/d1/d;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ls1/k;

    const-string v2, "SentReferral"

    invoke-direct {v1, v2, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-static {v1}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q2/d1/d;->b(Ljava/util/Map;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/q4/c0;->a:Le/a/q2/d1/d;

    const-string p2, "ReferralReceived"

    invoke-interface {p1, p2}, Le/a/q2/d1/d;->c(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Le/a/q4/c0;->a:Le/a/q2/d1/d;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    .line 3
    new-instance v0, Ls1/k;

    const-string v1, "JoinedFromReferral"

    invoke-direct {v0, v1, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-static {v0}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/q2/d1/d;->b(Ljava/util/Map;)V

    return-void
.end method
