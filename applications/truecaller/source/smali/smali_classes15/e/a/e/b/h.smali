.class public final Le/a/e/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e/b/g;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public X0(Z)V
    .locals 1

    const-string v0, "showMissedCallsNotifications"

    .line 1
    invoke-static {v0, p1}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    return-void
.end method

.method public Y0()Z
    .locals 1

    .line 1
    invoke-static {}, Le/a/j4/b/a/h;->p()Z

    move-result v0

    return v0
.end method

.method public Z0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "selectedItemId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dialpad_feedback_index_str"

    .line 1
    invoke-static {v0, p1}, Le/a/j4/b/a/h;->x(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    invoke-virtual {v0}, Le/a/b0/g/a;->W()Z

    move-result v0

    return v0
.end method

.method public a1()Z
    .locals 3

    .line 1
    sget-object v0, Le/a/j4/b/a/h;->b:Landroid/content/SharedPreferences;

    const-string v1, "showProfileViewNotifications"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b1(Z)V
    .locals 1

    const-string v0, "showMissedCallReminders"

    .line 1
    invoke-static {v0, p1}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    return-void
.end method

.method public c1()Z
    .locals 1

    const-string v0, "languageAuto"

    .line 1
    invoke-static {v0}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public d1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "defaultLang"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t9_lang"

    .line 1
    invoke-static {v0, p1}, Le/a/j4/b/a/h;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Settings.get(Settings.KEY_T9_LANG, defaultLang)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public e1()Z
    .locals 2

    .line 1
    invoke-static {}, Le/a/j4/b/a/h;->m()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public f1()Ljava/lang/String;
    .locals 2

    const-string v0, "dialpad_feedback_index_str"

    .line 1
    invoke-static {v0}, Le/a/j4/b/a/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings.get(Settings.KE\u2026ALPAD_FEEDBACK_INDEX_STR)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public g1()Ljava/lang/String;
    .locals 2

    const-string v0, "language"

    .line 1
    invoke-static {v0}, Le/a/j4/b/a/h;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Settings.get(Settings.LANGUAGE_ISO)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public h1(Landroid/content/Context;Le/a/j4/b/b/b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "language"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p2, Le/a/j4/b/b/b;->j:Le/a/b0/k/c;

    .line 2
    iget-object p2, p2, Le/a/b0/k/c;->b:Ljava/lang/String;

    .line 3
    invoke-static {v0, p2}, Le/a/j4/b/a/h;->x(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Le/a/j4/b/a/h;->D(Landroid/content/Context;)V

    return-void
.end method

.method public i1()Z
    .locals 1

    const-string v0, "showMissedCallsNotifications"

    .line 1
    invoke-static {v0}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public j1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "iso"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "t9_lang"

    .line 1
    invoke-static {v0, p1}, Le/a/j4/b/a/h;->x(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k1(Z)V
    .locals 1

    const-string v0, "FEEDBACK_LIKES_TRUECALLER"

    .line 1
    invoke-static {v0, p1}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    return-void
.end method

.method public l1(Z)V
    .locals 1

    const-string v0, "GOOGLE_REVIEW_DONE"

    .line 1
    invoke-static {v0, p1}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    return-void
.end method

.method public m1()Z
    .locals 1

    const-string v0, "showMissedCallReminders"

    .line 1
    invoke-static {v0}, Le/a/j4/b/a/h;->o(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public n1(Z)V
    .locals 1

    const-string v0, "languageAuto"

    .line 1
    invoke-static {v0, p1}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    return-void
.end method

.method public w0(Z)V
    .locals 1

    const-string v0, "showProfileViewNotifications"

    .line 1
    invoke-static {v0, p1}, Le/a/j4/b/a/h;->y(Ljava/lang/String;Z)V

    return-void
.end method
