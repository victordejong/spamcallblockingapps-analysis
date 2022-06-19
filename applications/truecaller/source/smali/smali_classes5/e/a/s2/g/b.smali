.class public final Le/a/s2/g/b;
.super Le/a/l/l2/b;
.source "SourceFile"

# interfaces
.implements Le/a/s2/g/a;


# instance fields
.field public final d:Le/a/l/a/v;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/l/a/v;Le/a/q2/a;Lcom/truecaller/clevertap/CleverTapManager;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "featuresRegistry"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "proStatusGenerator"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cleverTapManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/u3/g;->v:Le/a/u3/g$a;

    sget-object v1, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v2, 0x12

    aget-object v1, v1, v2

    invoke-virtual {v0, p1, v1}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    check-cast p1, Le/a/u3/i;

    .line 2
    invoke-direct {p0, p1, p3, p4}, Le/a/l/l2/b;-><init>(Le/a/u3/i;Le/a/q2/a;Lcom/truecaller/clevertap/CleverTapManager;)V

    iput-object p2, p0, Le/a/s2/g/b;->d:Le/a/l/a/v;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;Ljava/lang/String;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languageIso"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/s2/g/c/a;

    invoke-direct {v0, p1, p2}, Le/a/s2/g/c/a;-><init>(Lcom/truecaller/announce_caller_id/analytics/events/TextToSpeechInitError;Ljava/lang/String;)V

    .line 2
    invoke-static {v0, p0}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    return-void
.end method

.method public c(Ljava/lang/Integer;Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdToggleSource;ZZ)V
    .locals 1

    const-string v0, "source"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 1
    new-instance p3, Le/a/s2/g/c/h;

    invoke-direct {p3, p1, p2, p4}, Le/a/s2/g/c/h;-><init>(Ljava/lang/Integer;Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdToggleSource;Z)V

    .line 2
    invoke-static {p3, p0}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p3, Le/a/s2/g/c/g;

    invoke-direct {p3, p1, p2, p4}, Le/a/s2/g/c/g;-><init>(Ljava/lang/Integer;Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdToggleSource;Z)V

    .line 4
    invoke-static {p3, p0}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    :goto_0
    return-void
.end method

.method public d(IZ)V
    .locals 2

    .line 1
    new-instance v0, Le/a/s2/g/c/e;

    .line 2
    iget-object v1, p0, Le/a/s2/g/b;->d:Le/a/l/a/v;

    invoke-virtual {v1}, Le/a/l/a/v;->a()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {v0, p1, v1, p2}, Le/a/s2/g/c/e;-><init>(ILjava/lang/String;Z)V

    .line 4
    invoke-static {v0, p0}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    return-void
.end method

.method public e(I)V
    .locals 2

    .line 1
    new-instance v0, Le/a/s2/g/c/f;

    .line 2
    iget-object v1, p0, Le/a/s2/g/b;->d:Le/a/l/a/v;

    invoke-virtual {v1}, Le/a/l/a/v;->a()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-direct {v0, p1, v1}, Le/a/s2/g/c/f;-><init>(ILjava/lang/String;)V

    .line 4
    invoke-static {v0, p0}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    return-void
.end method

.method public g(ZZLcom/truecaller/announce_caller_id/analytics/events/AnnounceCallType;Ljava/lang/String;)V
    .locals 1

    const-string v0, "callType"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languageIso"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/s2/g/c/c;

    invoke-direct {v0, p1, p2, p3, p4}, Le/a/s2/g/c/c;-><init>(ZZLcom/truecaller/announce_caller_id/analytics/events/AnnounceCallType;Ljava/lang/String;)V

    .line 2
    invoke-static {v0, p0}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    return-void
.end method

.method public j(Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallIgnoredReason;)V
    .locals 1

    const-string v0, "reason"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/s2/g/c/d;

    invoke-direct {v0, p1}, Le/a/s2/g/c/d;-><init>(Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallIgnoredReason;)V

    invoke-static {v0, p0}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    return-void
.end method

.method public n(Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;)V
    .locals 1

    const-string v0, "announceCallerIdSettingsAction"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/s2/g/c/b;

    invoke-direct {v0, p1}, Le/a/s2/g/c/b;-><init>(Lcom/truecaller/announce_caller_id/analytics/events/AnnounceCallerIdSettingsAction;)V

    invoke-static {v0, p0}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    return-void
.end method
