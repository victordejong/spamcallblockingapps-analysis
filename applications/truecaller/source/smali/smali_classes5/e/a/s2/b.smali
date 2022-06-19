.class public final Le/a/s2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/s2/a;


# instance fields
.field public a:Z

.field public volatile b:Ljava/lang/String;

.field public c:Landroid/speech/tts/TextToSpeech;

.field public d:Ljava/util/Locale;

.field public final e:I

.field public final f:Le/a/s2/c;

.field public final g:Le/a/s2/g/a;

.field public final h:Landroid/content/Context;


# direct methods
.method public constructor <init>(Le/a/s2/c;Le/a/s2/g/a;Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "announceCallerIdManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventLogger"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/s2/b;->f:Le/a/s2/c;

    iput-object p2, p0, Le/a/s2/b;->g:Le/a/s2/g/a;

    iput-object p3, p0, Le/a/s2/b;->h:Landroid/content/Context;

    .line 2
    sget-object p1, Le/a/b0/k/h;->b:Ljava/util/Locale;

    .line 3
    iput-object p1, p0, Le/a/s2/b;->d:Ljava/util/Locale;

    .line 4
    sget p1, Lcom/truecaller/announce_caller_id/R$string;->incoming_call_announcement_prefix:I

    iput p1, p0, Le/a/s2/b;->e:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/s2/b;->f:Le/a/s2/c;

    invoke-interface {v0}, Le/a/s2/c;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/s2/b;->g:Le/a/s2/g/a;

    sget-object v1, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallIgnoredReason;->CALL_BLOCKED:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallIgnoredReason;

    invoke-interface {v0, v1}, Le/a/s2/g/a;->j(Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallIgnoredReason;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized b(Le/a/s2/f;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "callAnnouncementInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/b0/k/h;->b:Ljava/util/Locale;

    .line 2
    iput-object v0, p0, Le/a/s2/b;->d:Ljava/util/Locale;

    .line 3
    iget-object v0, p1, Le/a/s2/f;->a:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 5
    iget-object v3, p0, Le/a/s2/b;->f:Le/a/s2/c;

    invoke-interface {v3}, Le/a/s2/c;->m()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    iget-object v3, p0, Le/a/s2/b;->g:Le/a/s2/g/a;

    sget-object v4, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallIgnoredReason;->UNKNOWN_CALLER:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallIgnoredReason;

    invoke-interface {v3, v4}, Le/a/s2/g/a;->j(Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallIgnoredReason;)V

    .line 7
    :cond_2
    iget-object v3, p0, Le/a/s2/b;->b:Ljava/lang/String;

    .line 8
    iget-object v4, p1, Le/a/s2/f;->b:Ljava/lang/String;

    .line 9
    invoke-static {v3, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_3

    iget-object v3, p0, Le/a/s2/b;->f:Le/a/s2/c;

    invoke-interface {v3, p1}, Le/a/s2/c;->l(Le/a/s2/f;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    if-eqz v1, :cond_6

    if-eqz v0, :cond_4

    goto :goto_3

    .line 10
    :cond_4
    iget-object v0, p0, Le/a/s2/b;->c:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Le/a/s2/b;->a:Z

    if-eqz v0, :cond_5

    .line 11
    invoke-virtual {p0, p1}, Le/a/s2/b;->d(Le/a/s2/f;)V

    goto :goto_2

    .line 12
    :cond_5
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Le/a/s2/b;->h:Landroid/content/Context;

    new-instance v2, Le/a/s2/b$a;

    invoke-direct {v2, p0, p1}, Le/a/s2/b$a;-><init>(Le/a/s2/b;Le/a/s2/f;)V

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Le/a/s2/b;->c:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :goto_2
    monitor-exit p0

    return-void

    .line 14
    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Ljava/lang/Integer;Ljava/util/Locale;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget-object p1, Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;->LANGUAGE_FILE_NOT_AVAILABLE:Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, -0x2

    if-nez p1, :cond_2

    goto :goto_1

    .line 2
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;->LANGUAGE_NOT_SUPPORTED:Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

    goto :goto_2

    .line 3
    :cond_3
    :goto_1
    sget-object p1, Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;->UNKNOWN:Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;

    .line 4
    :goto_2
    iget-object v0, p0, Le/a/s2/b;->g:Le/a/s2/g/a;

    invoke-virtual {p2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object p2

    const-string v1, "locale.isO3Language"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2}, Le/a/s2/g/a;->a(Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;Ljava/lang/String;)V

    return-void
.end method

.method public final d(Le/a/s2/f;)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/s2/b;->c:Landroid/speech/tts/TextToSpeech;

    const-string v1, "locale"

    if-eqz v0, :cond_2

    .line 2
    iget-object v2, p0, Le/a/s2/b;->d:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v2, p0, Le/a/s2/b;->d:Ljava/util/Locale;

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Le/a/s2/b;->d:Ljava/util/Locale;

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Le/a/s2/b;->c(Ljava/lang/Integer;Ljava/util/Locale;)V

    .line 5
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v2, p0, Le/a/s2/b;->d:Ljava/util/Locale;

    .line 6
    :goto_1
    invoke-virtual {v0, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 7
    :cond_2
    iget-object v0, p0, Le/a/s2/b;->h:Landroid/content/Context;

    iget-object v2, p0, Le/a/s2/b;->d:Ljava/util/Locale;

    iget v3, p0, Le/a/s2/b;->e:I

    .line 8
    iget-object v4, p1, Le/a/s2/f;->a:Ljava/lang/String;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const-string v4, ""

    .line 9
    :goto_2
    new-instance v5, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "resources"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 10
    invoke-virtual {v5, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 11
    invoke-virtual {v0, v5}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "createConfigurationConte\u2026tString(resourceId, args)"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v3, p0, Le/a/s2/b;->c:Landroid/speech/tts/TextToSpeech;

    if-eqz v3, :cond_4

    const/4 v4, 0x2

    const-string v5, "streamType"

    .line 13
    invoke-static {v5, v4}, Le/d/c/a/a;->M0(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v4

    .line 14
    iget-object v5, p1, Le/a/s2/f;->b:Ljava/lang/String;

    .line 15
    invoke-virtual {v3, v0, v2, v4, v5}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I

    .line 16
    :cond_4
    iget-object v0, p0, Le/a/s2/b;->g:Le/a/s2/g/a;

    .line 17
    iget-boolean v2, p1, Le/a/s2/f;->c:Z

    if-eqz v2, :cond_5

    .line 18
    sget-object v2, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallType;->VOIP:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallType;

    goto :goto_3

    .line 19
    :cond_5
    sget-object v2, Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallType;->PSTN:Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallType;

    .line 20
    :goto_3
    iget-boolean v3, p1, Le/a/s2/f;->d:Z

    .line 21
    iget-object v4, p0, Le/a/s2/b;->f:Le/a/s2/c;

    invoke-interface {v4}, Le/a/s2/c;->n()Z

    move-result v4

    .line 22
    iget-object v5, p0, Le/a/s2/b;->d:Ljava/util/Locale;

    invoke-static {v5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v1

    const-string v5, "locale.isO3Language"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-interface {v0, v3, v4, v2, v1}, Le/a/s2/g/a;->g(ZZLcom/truecaller/announce_caller_id/analytics/events/AnnounceCallType;Ljava/lang/String;)V

    .line 24
    iget-object p1, p1, Le/a/s2/f;->b:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Le/a/s2/b;->b:Ljava/lang/String;

    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/s2/b;->c:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Le/a/s2/b;->c:Landroid/speech/tts/TextToSpeech;

    .line 3
    iput-object v0, p0, Le/a/s2/b;->b:Ljava/lang/String;

    return-void
.end method
