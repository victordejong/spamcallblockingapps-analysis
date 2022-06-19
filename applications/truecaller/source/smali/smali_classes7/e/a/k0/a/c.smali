.class public final Le/a/k0/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k0/a/b;


# instance fields
.field public final a:Le/a/k0/f;

.field public final b:Le/a/u3/g;

.field public final c:Le/a/p5/g;


# direct methods
.method public constructor <init>(Le/a/k0/f;Le/a/u3/g;Le/a/p5/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callRecordingSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k0/a/c;->a:Le/a/k0/f;

    iput-object p2, p0, Le/a/k0/a/c;->b:Le/a/u3/g;

    iput-object p3, p0, Le/a/k0/a/c;->c:Le/a/p5/g;

    return-void
.end method


# virtual methods
.method public a()Lcom/truecaller/callrecording/util/RecorderMode;
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/k0/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/truecaller/callrecording/util/RecorderMode;->SDK_ACCESSIBILITY:Lcom/truecaller/callrecording/util/RecorderMode;

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/k0/a/c;->f()Lcom/truecaller/callrecording/CallRecordingManager$Configuration;

    move-result-object v0

    sget-object v1, Lcom/truecaller/callrecording/CallRecordingManager$Configuration;->SDK_MEDIA_RECORDER:Lcom/truecaller/callrecording/CallRecordingManager$Configuration;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/truecaller/callrecording/util/RecorderMode;->SDK:Lcom/truecaller/callrecording/util/RecorderMode;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcom/truecaller/callrecording/util/RecorderMode;->AAC:Lcom/truecaller/callrecording/util/RecorderMode;

    :goto_0
    return-object v0
.end method

.method public b()Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/k0/a/c;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->z1:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x81

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Le/a/k0/a/c;->a:Le/a/k0/f;

    invoke-interface {v0}, Le/a/k0/f;->u0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->valueOf(Ljava/lang/String;)Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Le/a/k0/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->VOICE_RECOGNITION:Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->MIC:Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Le/a/k0/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->VOICE_RECOGNITION:Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;->MIC:Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;

    :goto_0
    return-object v0
.end method

.method public c(Lcom/truecaller/callrecording/CallRecordingManager$Configuration;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k0/a/c;->a:Le/a/k0/f;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/k0/f;->r0(Ljava/lang/String;)V

    return-void
.end method

.method public d(Lcom/truecaller/callrecording/CallRecordingManager$AudioSource;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k0/a/c;->a:Le/a/k0/f;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/k0/f;->I0(Ljava/lang/String;)V

    return-void
.end method

.method public e()Z
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/k0/a/c;->b:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->z1:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x81

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public f()Lcom/truecaller/callrecording/CallRecordingManager$Configuration;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/k0/a/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/truecaller/callrecording/CallRecordingManager$Configuration;->SDK_MEDIA_RECORDER:Lcom/truecaller/callrecording/CallRecordingManager$Configuration;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/k0/a/c;->a:Le/a/k0/f;

    invoke-interface {v0}, Le/a/k0/f;->J2()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/truecaller/callrecording/CallRecordingManager$Configuration;->valueOf(Ljava/lang/String;)Lcom/truecaller/callrecording/CallRecordingManager$Configuration;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/truecaller/callrecording/CallRecordingManager$Configuration;->DEFAULT:Lcom/truecaller/callrecording/CallRecordingManager$Configuration;

    :goto_0
    return-object v0
.end method

.method public g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k0/a/c;->c:Le/a/p5/g;

    const-string v1, "$this$shouldRecordThroughAccessibility"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0}, Le/a/p5/g;->q()I

    move-result v0

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
