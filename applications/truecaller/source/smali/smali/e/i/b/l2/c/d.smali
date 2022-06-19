.class public Le/i/b/l2/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/i/b/l2/c/h;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Le/i/b/l2/c/h;

    new-instance v1, Le/i/b/s2/n;

    .line 2
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-direct {v1, p1}, Le/i/b/s2/n;-><init>(Landroid/content/SharedPreferences;)V

    invoke-direct {v0, v1}, Le/i/b/l2/c/h;-><init>(Le/i/b/s2/n;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object v0, p0, Le/i/b/l2/c/d;->a:Le/i/b/l2/c/h;

    return-void
.end method


# virtual methods
.method public a()Le/i/b/l2/c/c;
    .locals 8

    .line 1
    iget-object v0, p0, Le/i/b/l2/c/d;->a:Le/i/b/l2/c/h;

    .line 2
    new-instance v1, Le/i/b/l2/c/f;

    iget-object v2, v0, Le/i/b/l2/c/h;->a:Le/i/b/s2/n;

    invoke-direct {v1, v2}, Le/i/b/l2/c/f;-><init>(Le/i/b/s2/n;)V

    .line 3
    invoke-virtual {v1}, Le/i/b/l2/c/f;->b()Ljava/lang/String;

    move-result-object v2

    .line 4
    iget-object v3, v1, Le/i/b/l2/c/f;->a:Le/i/b/s2/n;

    const-string v4, ""

    const-string v5, "IABTCF_TCString"

    invoke-virtual {v3, v5, v4}, Le/i/b/s2/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v6

    :goto_1
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    new-instance v1, Le/i/b/l2/c/e;

    iget-object v0, v0, Le/i/b/l2/c/h;->a:Le/i/b/s2/n;

    invoke-direct {v1, v0}, Le/i/b/l2/c/e;-><init>(Le/i/b/s2/n;)V

    const-string v2, "IABConsent_SubjectToGDPR"

    .line 8
    invoke-virtual {v0, v2, v4}, Le/i/b/s2/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v2, v1, Le/i/b/l2/c/e;->a:Le/i/b/s2/n;

    const-string v7, "IABConsent_ConsentString"

    invoke-virtual {v2, v7, v4}, Le/i/b/s2/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 11
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v0, :cond_3

    if-nez v2, :cond_4

    :cond_3
    move v5, v6

    :cond_4
    if-eqz v5, :cond_5

    goto :goto_2

    :cond_5
    move-object v1, v3

    :goto_2
    if-nez v1, :cond_6

    return-object v3

    .line 12
    :cond_6
    invoke-interface {v1}, Le/i/b/l2/c/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-interface {v1}, Le/i/b/l2/c/g;->c()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    const-string v3, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 15
    :goto_3
    invoke-interface {v1}, Le/i/b/l2/c/g;->a()Ljava/lang/Integer;

    move-result-object v0

    .line 16
    new-instance v1, Le/i/b/l2/c/b;

    invoke-direct {v1, v2, v3, v0}, Le/i/b/l2/c/b;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-object v1
.end method
