.class public final Le/a/r/e/a;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/r/e/b;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    const-string v1, "wizard.settings"

    const/4 v2, 0x0

    const-string v3, "context.getSharedPrefere\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->B0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 1
    invoke-direct {p0, p1}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    const/4 p1, 0x4

    .line 2
    iput p1, p0, Le/a/r/e/a;->b:I

    const-string p1, "wizard"

    .line 3
    iput-object p1, p0, Le/a/r/e/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic getInt(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/p5/t0/a;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public j3()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/r/e/a;->b:I

    return v0
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r/e/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/r/e/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Le/a/r/e/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 2
    new-instance v1, Le/a/r/e/a$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p2}, Le/a/r/e/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p2

    const-string v1, "wizard_OEMMode"

    const/4 v2, 0x2

    if-ge p1, v2, :cond_0

    .line 3
    move-object v2, p2

    check-cast v2, Ls1/n;

    invoke-virtual {v2}, Ls1/n;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/content/SharedPreferences;

    const-string v3, "oldPrefs"

    invoke-static {v5, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "wizard_EnteredNumber"

    const-string v4, "wizard_RequiredStepsCompleted"

    const-string v6, "wizard_FullyCompleted"

    const-string v7, "wizard_StartPage"

    .line 4
    filled-new-array {v3, v4, v6, v7, v1}, [Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-static {v3}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, p0

    .line 6
    invoke-static/range {v4 .. v9}, Le/a/p5/t0/a;->m3(Le/a/p5/t0/a;Landroid/content/SharedPreferences;Ljava/util/Set;ZILjava/lang/Object;)I

    .line 7
    move-object v3, v0

    check-cast v3, Ls1/n;

    invoke-virtual {v3}, Ls1/n;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences;

    .line 8
    invoke-virtual {v2}, Ls1/n;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/SharedPreferences;

    const/4 v5, 0x0

    const-string v6, "wizardDialingCode"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-virtual {p0, v6, v3}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Ls1/n;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    .line 12
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 13
    invoke-interface {v2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 14
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const/4 v2, 0x3

    if-ge p1, v2, :cond_1

    .line 15
    check-cast v0, Ls1/n;

    invoke-virtual {v0}, Ls1/n;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    .line 16
    check-cast p2, Ls1/n;

    invoke-virtual {p2}, Ls1/n;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    const-string v6, "verificationLastSequenceNumber"

    invoke-interface {v3, v6, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 17
    invoke-interface {v2, v6, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 18
    invoke-virtual {p2}, Ls1/n;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 19
    invoke-virtual {v0}, Ls1/n;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    long-to-int p2, v2

    .line 20
    invoke-virtual {p0, v6, p2}, Le/a/p5/t0/a;->putInt(Ljava/lang/String;I)V

    :cond_1
    const/4 p2, 0x4

    if-ge p1, p2, :cond_2

    .line 21
    invoke-virtual {p0, v1}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
