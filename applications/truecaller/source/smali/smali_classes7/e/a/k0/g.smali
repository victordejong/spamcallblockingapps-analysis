.class public final Le/a/k0/g;
.super Le/a/p5/t0/a;
.source "SourceFile"

# interfaces
.implements Le/a/k0/f;


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    const-string v1, "call_recording_settings"

    const/4 v2, 0x0

    const-string v3, "context.getSharedPrefere\u2026ME, Context.MODE_PRIVATE)"

    invoke-static {p1, v0, v1, v2, v3}, Le/d/c/a/a;->B0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1
    invoke-direct {p0, v0}, Le/a/p5/t0/a;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Le/a/k0/g;->d:Landroid/content/Context;

    const/4 v0, 0x3

    .line 2
    iput v0, p0, Le/a/k0/g;->b:I

    .line 3
    iput-object v1, p0, Le/a/k0/g;->c:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1}, Le/a/p5/t0/a;->n3(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public C1()V
    .locals 1

    const-string v0, "callRecordingFloatingButtonSetupDisplayCount"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public D(I)V
    .locals 1

    const-string v0, "callRecordingSpeakerToastCount"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public G(I)V
    .locals 1

    const-string v0, "callRecordingFloatingButtonSetupDisplayCount"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public G0()I
    .locals 2

    const-string v0, "callRecordingFloatingButtonSetupDisplayCount"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public I0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "callRecordingSource"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public I2(Z)V
    .locals 1

    const-string v0, "qaEnableRecorderLeak"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public J0(Z)V
    .locals 1

    const-string v0, "callRecordingSideMenuBadge"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public J2()Ljava/lang/String;
    .locals 1

    const-string v0, "callRecordingConfiguration"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public K0(Z)V
    .locals 1

    const-string v0, "callRecordingNotification"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public L()Z
    .locals 2

    const-string v0, "callRecordingNotification"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public L0()Z
    .locals 2

    const-string v0, "qaEnableRecorderLeak"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public M0()I
    .locals 2

    const-string v0, "callRecordingSpeakerToastCount"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public U1()Z
    .locals 2

    const-string v0, "callRecordingEnabled"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public V()Z
    .locals 2

    const-string v0, "callRecordingsMigrationPending"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public X2(Z)V
    .locals 1

    const-string v0, "callRecordingsMigrationPending"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public d6(Z)V
    .locals 1

    const-string v0, "callRecordingEnabled"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public f3()V
    .locals 4

    const-string v0, "callRecordingEnabled"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->contains(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "callRecordingResetForLegacy"

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p0, v0, v3}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Le/a/k0/g;->j0()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v2, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0, v2, v3}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public j0()Z
    .locals 2

    const-string v0, "callRecordingNewTermsAccepted"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public j3()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/k0/g;->b:I

    return v0
.end method

.method public k3()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public l2()Z
    .locals 2

    const-string v0, "callRecordingSpeakerTip"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public m4(Z)V
    .locals 1

    const-string v0, "callRecordingAutoRecordingEnabled"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public o0(Z)V
    .locals 1

    const-string v0, "callRecordingSpeakerTip"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public o3(ILandroid/content/Context;)V
    .locals 13

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p1, v0, :cond_1

    const-string v2, "core_settings"

    .line 1
    invoke-virtual {p2, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v2, "callRecordingEnbaled"

    .line 2
    invoke-interface {v4, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3
    invoke-interface {v4, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "callRecordingEnabled"

    invoke-virtual {p0, v5, v3}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const-string v2, "corePreferences"

    .line 5
    invoke-static {v4, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "callRecordingTermsAccepted"

    const-string v6, "callRecordingOnBoardDismissed"

    const-string v7, "callRecordingResetForLegacy"

    const-string v8, "callRecordingNotification"

    const-string v9, "callRecordingButtonCount"

    const-string v10, "callRecordingConfiguration"

    const-string v11, "callRecordingPostEnableShown"

    const-string v12, "callRecordingMode"

    .line 6
    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, p0

    .line 8
    invoke-static/range {v3 .. v8}, Le/a/p5/t0/a;->m3(Le/a/p5/t0/a;Landroid/content/SharedPreferences;Ljava/util/Set;ZILjava/lang/Object;)I

    const-string v2, "tc.settings"

    .line 9
    invoke-virtual {p2, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 10
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v2, "qaEnableRecorderLeak"

    .line 11
    invoke-interface {p2, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 12
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    const/4 p2, 0x2

    if-ge p1, p2, :cond_3

    const-string p2, "callRecordingMode"

    .line 13
    invoke-virtual {p0, p2}, Le/a/p5/t0/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v1, "AUTO"

    invoke-static {v2, v1, v0}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    :cond_2
    const-string v0, "callRecordingAutoRecordingEnabled"

    .line 14
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    invoke-virtual {p0, p2}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    :cond_3
    const/4 p2, 0x3

    if-ge p1, p2, :cond_4

    const-string v0, "callRecordingPostEnableShown"

    .line 16
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->remove(Ljava/lang/String;)V

    :cond_4
    if-lez p1, :cond_5

    const-string p1, "callRecordingFloatingButtonSetupDisplayCount"

    .line 17
    invoke-virtual {p0, p1, p2}, Le/a/p5/t0/a;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public q0(Z)V
    .locals 1

    const-string v0, "callRecordingNewTermsAccepted"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public r0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "callRecordingConfiguration"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public r1()I
    .locals 2

    const-string v0, "callRecordingButtonCount"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k0/g;->d:Landroid/content/Context;

    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->c(Landroid/content/Context;)V

    return-void
.end method

.method public u0()Ljava/lang/String;
    .locals 1

    const-string v0, "callRecordingSource"

    .line 1
    invoke-virtual {p0, v0}, Le/a/p5/t0/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w2()Z
    .locals 2

    const-string v0, "callRecordingSideMenuBadge"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public y1()Z
    .locals 2

    const-string v0, "callRecordingAutoRecordingEnabled"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p0, v0, v1}, Le/a/p5/t0/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public z1(I)V
    .locals 1

    const-string v0, "callRecordingButtonCount"

    .line 1
    invoke-virtual {p0, v0, p1}, Le/a/p5/t0/a;->putInt(Ljava/lang/String;I)V

    return-void
.end method
