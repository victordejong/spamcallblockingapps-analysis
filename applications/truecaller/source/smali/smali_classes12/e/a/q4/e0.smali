.class public Le/a/q4/e0;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/q4/e0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/truecaller/referrals/data/entities/RedeemCodeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/w/b/b;

.field public final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Le/a/q4/e0$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/w/b/d/a;


# direct methods
.method public constructor <init>(Le/a/w/b/b;Le/a/w/b/d/a;Le/a/q4/e0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/q4/e0;->a:Le/a/w/b/b;

    .line 3
    iput-object p2, p0, Le/a/q4/e0;->c:Le/a/w/b/d/a;

    if-eqz p3, :cond_0

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Le/a/q4/e0;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    :try_start_0
    iget-object p1, p0, Le/a/q4/e0;->c:Le/a/w/b/d/a;

    iget-object v0, p0, Le/a/q4/e0;->a:Le/a/w/b/b;

    const-string v1, "redeemCode"

    invoke-interface {v0, v1}, Le/a/b0/g/b;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Lcom/truecaller/common/network/util/KnownEndpoints;->REFERRAL:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v1, Le/a/w/b/d/a$a;

    invoke-static {p1, v1}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/w/b/d/a$a;

    invoke-interface {p1, v0}, Le/a/w/b/d/a$a;->b(Ljava/lang/String;)Lx3/b;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lx3/b;->execute()Lx3/a0;

    move-result-object p1

    .line 6
    iget-object p1, p1, Lx3/a0;->b:Ljava/lang/Object;

    .line 7
    check-cast p1, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 2
    sget-object v2, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;->SUCCESS:Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse;->c:Ljava/lang/String;

    invoke-static {v2, v3}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    .line 3
    iget-object v3, p0, Le/a/q4/e0;->a:Le/a/w/b/b;

    const-string v4, "codeRedeemed"

    invoke-interface {v3, v4, v1}, Le/a/b0/g/b;->c(Ljava/lang/String;Z)V

    :cond_1
    if-eqz p1, :cond_4

    .line 4
    iget-object v3, p1, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    goto :goto_1

    .line 5
    :cond_2
    :try_start_0
    invoke-static {v3}, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;->valueOf(Ljava/lang/String;)Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    if-eq v3, v1, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_3

    const/4 v4, 0x7

    if-eq v3, v4, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :catch_0
    :goto_1
    if-eqz v0, :cond_4

    .line 7
    iget-object v0, p0, Le/a/q4/e0;->a:Le/a/w/b/b;

    const-string v1, "redeemCode"

    invoke-interface {v0, v1}, Le/a/b0/g/b;->remove(Ljava/lang/String;)V

    .line 8
    :cond_4
    iget-object v0, p0, Le/a/q4/e0;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_5

    goto :goto_2

    .line 9
    :cond_5
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/q4/e0$a;

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    if-nez p1, :cond_7

    const/4 p1, 0x0

    .line 10
    invoke-interface {v0, p1}, Le/a/q4/e0$a;->S9(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    if-nez v2, :cond_8

    .line 11
    sget-object v1, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;->CANNOT_GRANT_PREMIUM:Lcom/truecaller/referrals/data/entities/RedeemCodeResponse$Status;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p1, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse;->c:Ljava/lang/String;

    invoke-static {v1, v3}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 13
    iget-object p1, p1, Lcom/truecaller/referrals/data/entities/RedeemCodeResponse;->a:Ljava/lang/String;

    invoke-interface {v0, p1}, Le/a/q4/e0$a;->S9(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    if-eqz v2, :cond_9

    .line 14
    invoke-interface {v0, p1}, Le/a/q4/e0$a;->Bd(Lcom/truecaller/referrals/data/entities/RedeemCodeResponse;)V

    :cond_9
    :goto_2
    return-void
.end method
