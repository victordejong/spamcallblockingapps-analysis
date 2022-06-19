.class public final Le/a/h/g/k;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/h/g/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/h/g/j;",
        ">;",
        "Le/a/h/g/i;"
    }
.end annotation


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/e/c2/i0;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/e/c2/i0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/k0/f;

.field public final e:Lcom/truecaller/callrecording/CallRecordingManager;

.field public final f:Le/a/k0/a/b;

.field public final g:Le/a/k0/m/a;


# direct methods
.method public constructor <init>(Le/a/k0/f;Lcom/truecaller/callrecording/CallRecordingManager;Le/a/k0/a/b;Le/a/k0/m/a;)V
    .locals 5
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callRecordingSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingConfigHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callRecordingStorageHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/h/g/k;->d:Le/a/k0/f;

    iput-object p2, p0, Le/a/h/g/k;->e:Lcom/truecaller/callrecording/CallRecordingManager;

    iput-object p3, p0, Le/a/h/g/k;->f:Le/a/k0/a/b;

    iput-object p4, p0, Le/a/h/g/k;->g:Le/a/k0/m/a;

    const/4 p1, 0x2

    new-array p2, p1, [Le/a/e/c2/i0;

    .line 2
    new-instance p3, Le/a/e/c2/i0;

    sget-object p4, Lcom/truecaller/callrecording/CallRecordingManager$Configuration;->DEFAULT:Lcom/truecaller/callrecording/CallRecordingManager$Configuration;

    const/4 v0, 0x0

    const v1, 0x7f12091d

    const v2, 0x7f12091e

    invoke-direct {p3, v0, v1, v2, p4}, Le/a/e/c2/i0;-><init>(IIILjava/lang/Object;)V

    aput-object p3, p2, v0

    .line 3
    new-instance p3, Le/a/e/c2/i0;

    sget-object p4, Lcom/truecaller/callrecording/CallRecordingManager$Configuration;->SDK_MEDIA_RECORDER:Lcom/truecaller/callrecording/CallRecordingManager$Configuration;

    const v1, 0x7f12091f

    const/4 v2, -0x1

    invoke-direct {p3, v0, v1, v2, p4}, Le/a/e/c2/i0;-><init>(IIILjava/lang/Object;)V

    const/4 p4, 0x1

    aput-object p3, p2, p4

    .line 4
    invoke-static {p2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Le/a/h/g/k;->b:Ljava/util/List;

    const/4 p2, 0x5

    new-array p2, p2, [Le/a/e/c2/i0;

    .line 5
    new-instance p3, Le/a/e/c2/i0;

    sget-object v1, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->MIC:Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    const v3, 0x7f120938

    const v4, 0x7f120939

    invoke-direct {p3, v0, v3, v4, v1}, Le/a/e/c2/i0;-><init>(IIILjava/lang/Object;)V

    aput-object p3, p2, v0

    .line 6
    new-instance p3, Le/a/e/c2/i0;

    .line 7
    sget-object v1, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->VOICE_RECOGNITION:Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    const v3, 0x7f12093d

    const v4, 0x7f12093e

    .line 8
    invoke-direct {p3, v0, v3, v4, v1}, Le/a/e/c2/i0;-><init>(IIILjava/lang/Object;)V

    aput-object p3, p2, p4

    .line 9
    new-instance p3, Le/a/e/c2/i0;

    sget-object p4, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->SYSTEM_DEFAULT:Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    const v1, 0x7f12093a

    invoke-direct {p3, v0, v1, v2, p4}, Le/a/e/c2/i0;-><init>(IIILjava/lang/Object;)V

    aput-object p3, p2, p1

    .line 10
    new-instance p1, Le/a/e/c2/i0;

    sget-object p3, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->VOICE_COMMUNICATION:Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    const p4, 0x7f12093c

    invoke-direct {p1, v0, p4, v2, p3}, Le/a/e/c2/i0;-><init>(IIILjava/lang/Object;)V

    const/4 p3, 0x3

    aput-object p1, p2, p3

    .line 11
    new-instance p1, Le/a/e/c2/i0;

    sget-object p3, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->VOICE_CALL:Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    const p4, 0x7f12093b

    invoke-direct {p1, v0, p4, v2, p3}, Le/a/e/c2/i0;-><init>(IIILjava/lang/Object;)V

    const/4 p3, 0x4

    aput-object p1, p2, p3

    .line 12
    invoke-static {p2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/a/h/g/k;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public Eg(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/g/k;->d:Le/a/k0/f;

    invoke-interface {v0, p1}, Le/a/k0/f;->K0(Z)V

    return-void
.end method

.method public Kh(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/g/k;->d:Le/a/k0/f;

    invoke-interface {v0, p1}, Le/a/k0/f;->m4(Z)V

    return-void
.end method

.method public Lc(Le/a/e/c2/i0;)V
    .locals 2

    const-string v0, "configSelected"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/g/k;->f:Le/a/k0/a/b;

    invoke-virtual {p1}, Le/a/e/c2/i0;->e()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.truecaller.callrecording.CallRecordingManager.AudioSource"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    invoke-interface {v0, p1}, Le/a/k0/a/b;->d(Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;)V

    return-void
.end method

.method public Ua(Le/a/e/c2/i0;)V
    .locals 2

    const-string v0, "configSelected"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/g/k;->f:Le/a/k0/a/b;

    invoke-virtual {p1}, Le/a/e/c2/i0;->e()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type com.truecaller.callrecording.CallRecordingManager.Configuration"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/callrecording/CallRecordingManager$Configuration;

    invoke-interface {v0, p1}, Le/a/k0/a/b;->c(Lcom/truecaller/callrecording/CallRecordingManager$Configuration;)V

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/h/g/j;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/h/g/k;->b:Ljava/util/List;

    iget-object v1, p0, Le/a/h/g/k;->c:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Le/a/h/g/j;->Eu(Ljava/util/List;Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Le/a/h/g/k;->e:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v0}, Le/a/k0/a/e;->z()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/h/g/j;->ia(Z)V

    .line 6
    iget-object v0, p0, Le/a/h/g/k;->f:Le/a/k0/a/b;

    invoke-interface {v0}, Le/a/k0/a/b;->e()Z

    move-result v0

    invoke-interface {p1, v0}, Le/a/h/g/j;->Qp(Z)V

    return-void
.end method

.method public z5()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/g/j;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Le/a/h/g/k;->e:Lcom/truecaller/callrecording/CallRecordingManager;

    invoke-interface {v1}, Le/a/k0/a/e;->i()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/h/g/j;->hm(Z)V

    .line 3
    iget-object v1, p0, Le/a/h/g/k;->g:Le/a/k0/m/a;

    invoke-interface {v1}, Le/a/k0/m/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/h/g/j;->Ai(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Le/a/h/g/k;->d:Le/a/k0/f;

    invoke-interface {v1}, Le/a/k0/f;->L()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/h/g/j;->Gk(Z)V

    .line 5
    iget-object v1, p0, Le/a/h/g/k;->d:Le/a/k0/f;

    invoke-interface {v1}, Le/a/k0/f;->y1()Z

    move-result v1

    invoke-interface {v0, v1}, Le/a/h/g/j;->m4(Z)V

    .line 6
    :cond_0
    iget-object v0, p0, Le/a/h/g/k;->f:Le/a/k0/a/b;

    invoke-interface {v0}, Le/a/k0/a/b;->f()Lcom/truecaller/callrecording/CallRecordingManager$Configuration;

    move-result-object v0

    .line 7
    iget-object v1, p0, Le/a/h/g/k;->b:Ljava/util/List;

    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/e/c2/i0;

    invoke-virtual {v6}, Le/a/e/c2/i0;->e()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_2

    move v6, v3

    goto :goto_0

    :cond_2
    move v6, v4

    :goto_0
    if-eqz v6, :cond_1

    goto :goto_1

    :cond_3
    move-object v2, v5

    :goto_1
    check-cast v2, Le/a/e/c2/i0;

    if-eqz v2, :cond_4

    .line 9
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/g/j;

    if-eqz v0, :cond_4

    invoke-interface {v0, v2}, Le/a/h/g/j;->yj(Le/a/e/c2/i0;)V

    .line 10
    :cond_4
    iget-object v0, p0, Le/a/h/g/k;->f:Le/a/k0/a/b;

    invoke-interface {v0}, Le/a/k0/a/b;->b()Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    move-result-object v0

    .line 11
    iget-object v1, p0, Le/a/h/g/k;->c:Ljava/util/List;

    .line 12
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Le/a/e/c2/i0;

    invoke-virtual {v6}, Le/a/e/c2/i0;->e()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_6

    move v6, v3

    goto :goto_2

    :cond_6
    move v6, v4

    :goto_2
    if-eqz v6, :cond_5

    move-object v5, v2

    :cond_7
    check-cast v5, Le/a/e/c2/i0;

    if-eqz v5, :cond_8

    .line 13
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/g/j;

    if-eqz v0, :cond_8

    invoke-interface {v0, v5}, Le/a/h/g/j;->Zk(Le/a/e/c2/i0;)V

    :cond_8
    return-void
.end method
