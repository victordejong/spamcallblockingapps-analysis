.class public final Le/a/l/a/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/b0/o/a;

.field public final b:Le/a/s4/a;


# direct methods
.method public constructor <init>(Le/a/b0/o/a;Le/a/s4/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "coreSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfig"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/a/l0;->a:Le/a/b0/o/a;

    iput-object p2, p0, Le/a/l/a/l0;->b:Le/a/s4/a;

    return-void
.end method


# virtual methods
.method public final a()Lw3/b/a/b;
    .locals 5

    .line 1
    new-instance v0, Lw3/b/a/b;

    iget-object v1, p0, Le/a/l/a/l0;->a:Le/a/b0/o/a;

    const-string v2, "profileVerificationDate"

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lw3/b/a/b;-><init>(J)V

    .line 2
    iget-object v1, p0, Le/a/l/a/l0;->b:Le/a/s4/a;

    const-string v2, "welcomeOfferEligibleDayCount_31777"

    const/4 v3, 0x3

    invoke-interface {v1, v2, v3}, Le/a/s4/a;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lw3/b/a/b;->D(I)Lw3/b/a/b;

    move-result-object v0

    const-string v1, "userRegistrationDate.plu\u2026_OFFER_ELIGIBLE_DAYS, 3))"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
