.class public final Le/a/l/t2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/s4/a;

.field public final b:Le/a/l/p2/v0;

.field public final c:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Le/a/s4/a;Le/a/l/p2/v0;Le/a/b0/o/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "remoteConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/t2/d;->a:Le/a/s4/a;

    iput-object p2, p0, Le/a/l/t2/d;->b:Le/a/l/p2/v0;

    iput-object p3, p0, Le/a/l/t2/d;->c:Le/a/b0/o/a;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/l/t2/d;->a:Le/a/s4/a;

    const-string v1, "reportSpamPromoCoolOffDays_27437"

    const/16 v2, 0x1e

    invoke-interface {v0, v1, v2}, Le/a/s4/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2
    new-instance v1, Lw3/b/a/b;

    iget-object v2, p0, Le/a/l/t2/d;->c:Le/a/b0/o/a;

    const-string v3, "premiumBlockPromoLastShown"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lw3/b/a/b;-><init>(J)V

    .line 3
    invoke-virtual {v1, v0}, Lw3/b/a/b;->D(I)Lw3/b/a/b;

    move-result-object v0

    const-string v1, "DateTime(coreSettings.ge\u2026   .plusDays(coolOffDays)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lw3/b/a/e0/c;->j()Z

    move-result v0

    .line 4
    iget-object v1, p0, Le/a/l/t2/d;->b:Le/a/l/p2/v0;

    invoke-interface {v1}, Le/a/l/p2/v0;->H()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
