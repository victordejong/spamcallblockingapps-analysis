.class public Landroidx/preference/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:J

.field private c:Landroid/content/SharedPreferences;

.field private d:Landroidx/preference/a;

.field private e:Landroid/content/SharedPreferences$Editor;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Landroidx/preference/c;->b:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Landroidx/preference/c;->i:I

    .line 4
    iput-object p1, p0, Landroidx/preference/c;->a:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroidx/preference/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/c;->n(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/preference/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Landroidx/preference/c;->c()I

    move-result v1

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_preferences"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static j(Landroid/content/Context;IZ)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/preference/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Landroidx/preference/c;->c()I

    move-result v1

    .line 3
    invoke-static {p0, v0, v1, p1, p2}, Landroidx/preference/c;->k(Landroid/content/Context;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public static k(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 3

    const-string v0, "_has_set_default_values"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    if-nez p4, :cond_0

    .line 2
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p4

    if-nez p4, :cond_1

    .line 3
    :cond_0
    new-instance p4, Landroidx/preference/c;

    invoke-direct {p4, p0}, Landroidx/preference/c;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-virtual {p4, p1}, Landroidx/preference/c;->n(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p4, p2}, Landroidx/preference/c;->m(I)V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p4, p0, p3, p1}, Landroidx/preference/c;->i(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;

    .line 7
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p1, 0x1

    .line 8
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 9
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method private l(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object v0, p0, Landroidx/preference/c;->e:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3
    :cond_0
    iput-boolean p1, p0, Landroidx/preference/c;->f:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/preference/c;->j:Landroidx/preference/PreferenceScreen;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->n0(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method e()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/c;->d:Landroidx/preference/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-boolean v0, p0, Landroidx/preference/c;->f:Z

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Landroidx/preference/c;->e:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0}, Landroidx/preference/c;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/c;->e:Landroid/content/SharedPreferences$Editor;

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/preference/c;->e:Landroid/content/SharedPreferences$Editor;

    return-object v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/c;->h()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method f()J
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Landroidx/preference/c;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Landroidx/preference/c;->b:J

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public g()Landroidx/preference/a;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/preference/c;->d:Landroidx/preference/a;

    return-object v0
.end method

.method public h()Landroid/content/SharedPreferences;
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/preference/c;->g()Landroidx/preference/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroidx/preference/c;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 3
    iget v0, p0, Landroidx/preference/c;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Landroidx/preference/c;->a:Landroid/content/Context;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Landroidx/preference/c;->a:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/content/a;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 6
    :goto_0
    iget-object v1, p0, Landroidx/preference/c;->g:Ljava/lang/String;

    iget v2, p0, Landroidx/preference/c;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/c;->c:Landroid/content/SharedPreferences;

    .line 7
    :cond_2
    iget-object v0, p0, Landroidx/preference/c;->c:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public i(Landroid/content/Context;ILandroidx/preference/PreferenceScreen;)Landroidx/preference/PreferenceScreen;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Landroidx/preference/c;->l(Z)V

    .line 2
    new-instance v0, Landroidx/preference/b;

    invoke-direct {v0, p1, p0}, Landroidx/preference/b;-><init>(Landroid/content/Context;Landroidx/preference/c;)V

    .line 3
    invoke-virtual {v0, p2, p3}, Landroidx/preference/b;->d(ILandroidx/preference/PreferenceGroup;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    .line 4
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->Q(Landroidx/preference/c;)V

    const/4 p2, 0x0

    .line 5
    invoke-direct {p0, p2}, Landroidx/preference/c;->l(Z)V

    return-object p1
.end method

.method public m(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/preference/c;->h:I

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/preference/c;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/preference/c;->g:Ljava/lang/String;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Landroidx/preference/c;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/preference/c;->f:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
