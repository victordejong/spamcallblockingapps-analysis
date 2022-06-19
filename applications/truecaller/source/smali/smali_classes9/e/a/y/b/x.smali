.class public final Le/a/y/b/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/b/w;


# instance fields
.field public final a:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "PreferenceManager.getDef\u2026haredPreferences(context)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "flash_sent_count"

    .line 1
    invoke-virtual {p0, v0}, Le/a/y/b/x;->n(Ljava/lang/String;)V

    const-string v0, "flash_received_count"

    .line 2
    invoke-virtual {p0, v0}, Le/a/y/b/x;->n(Ljava/lang/String;)V

    const-string v0, "send_tooltips"

    .line 3
    invoke-virtual {p0, v0}, Le/a/y/b/x;->n(Ljava/lang/String;)V

    const-string v0, "receive_tooltips"

    .line 4
    invoke-virtual {p0, v0}, Le/a/y/b/x;->n(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    const-string v1, "flash_ringtone"

    invoke-static {v0, v1, p1}, Le/d/c/a/a;->p0(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    const-string v1, "flash_ringtone"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    return-object v0
.end method

.method public f()Z
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    const-string v1, "flash_ringtone"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    return v2
.end method

.method public g()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    const-string v1, "flash_tooltip_count"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "def"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    const-wide/16 v1, 0x0

    const-string v3, "flash_tooltip_count"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 2
    iget-object v2, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    invoke-static {v2, v3, v0, v1}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public i()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    const-string v1, "flash_received_count"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public j()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/y/b/x;->i()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    const-string v3, "flash_received_count"

    invoke-static {v2, v3, v0, v1}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public k()J
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    const-string v1, "flash_sent_count"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public l(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2}, Le/d/c/a/a;->p0(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 4
    iget-object v0, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2}, Le/d/c/a/a;->n0(Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 6
    iget-object p2, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    invoke-static {p2, p1, v0, v1}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    goto :goto_0

    .line 7
    :cond_2
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 8
    iget-object v0, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    invoke-static {v0, p1, p2}, Le/d/c/a/a;->r0(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    goto :goto_0

    .line 9
    :cond_3
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_4

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    .line 10
    iget-object v0, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    :goto_0
    return-void
.end method

.method public m()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/y/b/x;->k()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    const-string v3, "flash_sent_count"

    invoke-static {v2, v3, v0, v1}, Le/d/c/a/a;->o0(Landroid/content/SharedPreferences;Ljava/lang/String;J)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/y/b/x;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
