.class public final Le/a/l4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/l4/e$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lcom/truecaller/api/services/presence/v1/models/Availability;

.field public final c:Lcom/truecaller/api/services/presence/v1/models/Flash;

.field public final d:Lw3/b/a/b;

.field public final e:Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

.field public final f:Lcom/truecaller/api/services/presence/v1/models/Voip;

.field public final g:Lcom/truecaller/api/services/presence/v1/models/Payment;

.field public final transient h:Lw3/b/a/b;

.field public final i:Lcom/truecaller/api/services/presence/v1/models/Premium;

.field public final j:Lcom/truecaller/api/services/presence/v1/models/CallContext;

.field public final k:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;

.field public final l:Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;


# direct methods
.method public constructor <init>(Le/a/l4/e$a;Ls1/z/c/f;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p1, Le/a/l4/e$a;->k:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Le/a/l4/e;->a:Ljava/lang/String;

    .line 4
    iget-object p2, p1, Le/a/l4/e$a;->a:Lcom/truecaller/api/services/presence/v1/models/Availability;

    .line 5
    iput-object p2, p0, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    .line 6
    iget-object p2, p1, Le/a/l4/e$a;->b:Lcom/truecaller/api/services/presence/v1/models/Flash;

    .line 7
    iput-object p2, p0, Le/a/l4/e;->c:Lcom/truecaller/api/services/presence/v1/models/Flash;

    .line 8
    iget-object p2, p1, Le/a/l4/e$a;->c:Lw3/b/a/b;

    .line 9
    iput-object p2, p0, Le/a/l4/e;->d:Lw3/b/a/b;

    .line 10
    new-instance p2, Lw3/b/a/b;

    invoke-direct {p2}, Lw3/b/a/b;-><init>()V

    const-string v0, "DateTime.now()"

    .line 11
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Le/a/l4/e;->h:Lw3/b/a/b;

    .line 12
    iget-object p2, p1, Le/a/l4/e$a;->d:Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

    .line 13
    iput-object p2, p0, Le/a/l4/e;->e:Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

    .line 14
    iget-object p2, p1, Le/a/l4/e$a;->e:Lcom/truecaller/api/services/presence/v1/models/Voip;

    .line 15
    iput-object p2, p0, Le/a/l4/e;->f:Lcom/truecaller/api/services/presence/v1/models/Voip;

    .line 16
    iget-object p2, p1, Le/a/l4/e$a;->f:Lcom/truecaller/api/services/presence/v1/models/Payment;

    .line 17
    iput-object p2, p0, Le/a/l4/e;->g:Lcom/truecaller/api/services/presence/v1/models/Payment;

    .line 18
    iget-object p2, p1, Le/a/l4/e$a;->g:Lcom/truecaller/api/services/presence/v1/models/Premium;

    .line 19
    iput-object p2, p0, Le/a/l4/e;->i:Lcom/truecaller/api/services/presence/v1/models/Premium;

    .line 20
    iget-object p2, p1, Le/a/l4/e$a;->h:Lcom/truecaller/api/services/presence/v1/models/CallContext;

    .line 21
    iput-object p2, p0, Le/a/l4/e;->j:Lcom/truecaller/api/services/presence/v1/models/CallContext;

    .line 22
    iget-object p2, p1, Le/a/l4/e$a;->i:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;

    .line 23
    iput-object p2, p0, Le/a/l4/e;->k:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;

    .line 24
    iget-object p1, p1, Le/a/l4/e$a;->j:Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

    .line 25
    iput-object p1, p0, Le/a/l4/e;->l:Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

    return-void
.end method

.method public static final b(Lcom/truecaller/api/services/presence/v1/GetPresenceResponse;Z)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/api/services/presence/v1/GetPresenceResponse;",
            "Z)",
            "Ljava/util/Collection<",
            "Le/a/l4/e;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/GetPresenceResponse;->getDataMap()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 3
    invoke-static {p0}, Ls1/u/i;->i(Ljava/util/Map;)Ls1/e0/k;

    move-result-object p0

    .line 4
    sget-object v1, Le/a/l4/f;->b:Le/a/l4/f;

    invoke-static {p0, v1}, Ls1/e0/x;->f(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object p0

    .line 5
    check-cast p0, Ls1/e0/h;

    .line 6
    new-instance v1, Ls1/e0/h$a;

    invoke-direct {v1, p0}, Ls1/e0/h$a;-><init>(Ls1/e0/h;)V

    .line 7
    :goto_0
    invoke-virtual {v1}, Ls1/e0/h$a;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {v1}, Ls1/e0/h$a;->next()Ljava/lang/Object;

    move-result-object p0

    .line 8
    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData;

    .line 9
    new-instance v3, Le/a/l4/e$a;

    const-string v4, "phoneNumber"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v2}, Le/a/l4/e$a;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData;->hasAvailability()Z

    move-result v2

    const-string v4, "presenceData"

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-static {p0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData;->getAvailability()Lcom/truecaller/api/services/presence/v1/models/Availability;

    move-result-object v2

    goto :goto_1

    :cond_0
    move-object v2, v5

    .line 11
    :goto_1
    iput-object v2, v3, Le/a/l4/e$a;->a:Lcom/truecaller/api/services/presence/v1/models/Availability;

    .line 12
    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData;->hasLastSeen()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData;->getLastSeen()Lcom/google/protobuf/StringValue;

    move-result-object v2

    const-string v6, "presenceData.lastSeen"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/google/protobuf/StringValue;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 13
    sget-object v6, Le/a/b0/q/m;->e:Ljava/lang/StringBuilder;

    .line 14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 15
    :try_start_0
    sget-object v6, Lw3/b/a/i0/i;->e0:Lw3/b/a/i0/b;

    .line 16
    invoke-virtual {v6}, Lw3/b/a/i0/b;->m()Lw3/b/a/i0/b;

    move-result-object v6

    .line 17
    invoke-virtual {v6, v2}, Lw3/b/a/i0/b;->b(Ljava/lang/String;)Lw3/b/a/b;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :cond_1
    move-object v2, v5

    .line 18
    :goto_2
    iput-object v2, v3, Le/a/l4/e$a;->c:Lw3/b/a/b;

    if-eqz p1, :cond_9

    .line 19
    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData;->hasFlash()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData;->getFlash()Lcom/truecaller/api/services/presence/v1/models/Flash;

    move-result-object v2

    goto :goto_3

    :cond_2
    move-object v2, v5

    .line 20
    :goto_3
    iput-object v2, v3, Le/a/l4/e$a;->b:Lcom/truecaller/api/services/presence/v1/models/Flash;

    .line 21
    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData;->hasIm()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData;->getIm()Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

    move-result-object v2

    goto :goto_4

    :cond_3
    move-object v2, v5

    .line 22
    :goto_4
    iput-object v2, v3, Le/a/l4/e$a;->d:Lcom/truecaller/api/services/presence/v1/models/InstantMessaging;

    .line 23
    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData;->hasPayment()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData;->getPayment()Lcom/truecaller/api/services/presence/v1/models/Payment;

    move-result-object v2

    goto :goto_5

    :cond_4
    move-object v2, v5

    .line 24
    :goto_5
    iput-object v2, v3, Le/a/l4/e$a;->f:Lcom/truecaller/api/services/presence/v1/models/Payment;

    .line 25
    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData;->hasPremium()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData;->getPremium()Lcom/truecaller/api/services/presence/v1/models/Premium;

    move-result-object v2

    goto :goto_6

    :cond_5
    move-object v2, v5

    .line 26
    :goto_6
    iput-object v2, v3, Le/a/l4/e$a;->g:Lcom/truecaller/api/services/presence/v1/models/Premium;

    .line 27
    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData;->hasCallContext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData;->getCallContext()Lcom/truecaller/api/services/presence/v1/models/CallContext;

    move-result-object v2

    goto :goto_7

    :cond_6
    move-object v2, v5

    .line 28
    :goto_7
    iput-object v2, v3, Le/a/l4/e$a;->h:Lcom/truecaller/api/services/presence/v1/models/CallContext;

    .line 29
    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData;->hasCovidMedicalSupply()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData;->getCovidMedicalSupply()Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;

    move-result-object v2

    goto :goto_8

    :cond_7
    move-object v2, v5

    .line 30
    :goto_8
    iput-object v2, v3, Le/a/l4/e$a;->i:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;

    .line 31
    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData;->hasVideoCallerId()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData;->getVideoCallerId()Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

    move-result-object v5

    .line 32
    :cond_8
    iput-object v5, v3, Le/a/l4/e$a;->j:Lcom/truecaller/api/services/presence/v1/models/VideoCallerID;

    .line 33
    :cond_9
    invoke-static {p0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/truecaller/api/services/presence/v1/GetPresenceResponse$PresenceData;->getVoip()Lcom/truecaller/api/services/presence/v1/models/Voip;

    move-result-object p0

    .line 34
    iput-object p0, v3, Le/a/l4/e$a;->e:Lcom/truecaller/api/services/presence/v1/models/Voip;

    .line 35
    invoke-virtual {v3}, Le/a/l4/e$a;->a()Le/a/l4/e;

    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    return-object v0
.end method

.method public static d(Le/a/l4/e;Landroid/content/Context;ZI)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x2

    and-int/2addr p3, v0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    move p2, v1

    .line 1
    :cond_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "context"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p3, p0, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    if-eqz p3, :cond_a

    invoke-virtual {p3}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getStatus()Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    move-result-object p3

    if-nez p3, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    iget-object p3, p0, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    invoke-virtual {p3}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getStatus()Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    move-result-object p3

    if-nez p3, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    const/4 v2, 0x0

    if-eq p3, v1, :cond_8

    if-eq p3, v0, :cond_3

    goto/16 :goto_3

    .line 4
    :cond_3
    iget-object p3, p0, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    invoke-virtual {p3}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getContext()Lcom/truecaller/api/services/presence/v1/models/Availability$Context;

    move-result-object p3

    if-nez p3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    if-eq p3, v1, :cond_7

    const/4 v0, 0x3

    if-eq p3, v0, :cond_5

    .line 5
    :goto_0
    sget p0, Lcom/truecaller/presence/R$string;->availability_busy:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 6
    :cond_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    sget v0, Lcom/truecaller/presence/R$string;->availability_busy_sleep:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_6

    .line 8
    iget-object p2, p0, Le/a/l4/e;->d:Lw3/b/a/b;

    if-eqz p2, :cond_6

    const-string p2, ". "

    .line 9
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    sget p2, Lcom/truecaller/presence/R$string;->availability_available_last_seen_time_fmt:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 11
    iget-object p0, p0, Le/a/l4/e;->d:Lw3/b/a/b;

    .line 12
    iget-wide v3, p0, Lw3/b/a/e0/e;->a:J

    .line 13
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v3, v4, p0}, Le/a/b0/q/m;->j(Landroid/content/Context;JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    .line 14
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :cond_6
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    const-string p1, "when (availability.conte\u2026ility_busy)\n            }"

    .line 17
    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .line 18
    :cond_7
    sget p0, Lcom/truecaller/presence/R$string;->availability_busy_call:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "context.getString(R.string.availability_busy_call)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    if-eqz p2, :cond_9

    .line 19
    iget-object p0, p0, Le/a/l4/e;->d:Lw3/b/a/b;

    if-eqz p0, :cond_9

    .line 20
    sget p2, Lcom/truecaller/presence/R$string;->availability_available_last_seen_time_fmt:I

    new-array p3, v1, [Ljava/lang/Object;

    .line 21
    iget-wide v0, p0, Lw3/b/a/e0/e;->a:J

    .line 22
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p1, v0, v1, p0}, Le/a/b0/q/m;->j(Landroid/content/Context;JLjava/util/concurrent/TimeUnit;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v2

    .line 23
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 24
    :cond_9
    sget p0, Lcom/truecaller/presence/R$string;->availability_available:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    const-string p1, "if (showLastSeen && last\u2026g.availability_available)"

    .line 25
    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    :goto_3
    const-string p0, ""

    :goto_4
    return-object p0
.end method


# virtual methods
.method public final a()Le/a/l4/e$a;
    .locals 2

    .line 1
    new-instance v0, Le/a/l4/e$a;

    const-string v1, "presence"

    .line 2
    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/l4/e;->a:Ljava/lang/String;

    .line 4
    invoke-direct {v0, v1}, Le/a/l4/e$a;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    .line 6
    iput-object v1, v0, Le/a/l4/e$a;->a:Lcom/truecaller/api/services/presence/v1/models/Availability;

    .line 7
    iget-object v1, p0, Le/a/l4/e;->c:Lcom/truecaller/api/services/presence/v1/models/Flash;

    .line 8
    iput-object v1, v0, Le/a/l4/e$a;->b:Lcom/truecaller/api/services/presence/v1/models/Flash;

    .line 9
    iget-object v1, p0, Le/a/l4/e;->d:Lw3/b/a/b;

    .line 10
    iput-object v1, v0, Le/a/l4/e$a;->c:Lw3/b/a/b;

    return-object v0
.end method

.method public final c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1}, Le/a/l4/e;->d(Le/a/l4/e;Landroid/content/Context;ZI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final e()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getStatus()Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    move-result-object v0

    sget-object v1, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->AVAILABLE:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    invoke-virtual {v0}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getStatus()Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    move-result-object v0

    sget-object v1, Lcom/truecaller/api/services/presence/v1/models/Availability$Status;->BUSY:Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_4

    .line 1
    const-class v1, Le/a/l4/e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    instance-of v0, p1, Le/a/l4/e;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    move-object p1, v1

    :cond_2
    check-cast p1, Le/a/l4/e;

    .line 3
    iget-object v0, p0, Le/a/l4/e;->a:Ljava/lang/String;

    if-eqz p1, :cond_3

    iget-object v1, p1, Le/a/l4/e;->a:Ljava/lang/String;

    :cond_3
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l4/e;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Presence{\nNumber="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Le/a/l4/e;->a:Ljava/lang/String;

    const-string v2, "append(value)"

    if-eqz v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const-string v1, "<non-null number>"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/p;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v1, "Availability"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    if-nez v1, :cond_1

    const-string v1, "=null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/p;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, ".Status="

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "append(\".Status=\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    invoke-virtual {v1}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getStatus()Lcom/truecaller/api/services/presence/v1/models/Availability$Status;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/p;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v1, "Availability.Context="

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "append(\"Availability.Context=\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/l4/e;->b:Lcom/truecaller/api/services/presence/v1/models/Availability;

    invoke-virtual {v1}, Lcom/truecaller/api/services/presence/v1/models/Availability;->getContext()Lcom/truecaller/api/services/presence/v1/models/Availability$Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/p;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 7
    :goto_1
    iget-object v1, p0, Le/a/l4/e;->c:Lcom/truecaller/api/services/presence/v1/models/Flash;

    if-eqz v1, :cond_2

    const-string v1, "Flash.isEnabled="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "append(\"Flash.isEnabled=\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/l4/e;->c:Lcom/truecaller/api/services/presence/v1/models/Flash;

    invoke-virtual {v1}, Lcom/truecaller/api/services/presence/v1/models/Flash;->getEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/p;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v1, "Flash.version="

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "append(\"Flash.version=\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/l4/e;->c:Lcom/truecaller/api/services/presence/v1/models/Flash;

    invoke-virtual {v1}, Lcom/truecaller/api/services/presence/v1/models/Flash;->getVersion()Lcom/google/protobuf/Int32Value;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/p;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 10
    :cond_2
    iget-object v1, p0, Le/a/l4/e;->d:Lw3/b/a/b;

    if-eqz v1, :cond_3

    const-string v1, "LastSeen="

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "append(\"LastSeen=\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/l4/e;->d:Lw3/b/a/b;

    .line 12
    iget-wide v3, v1, Lw3/b/a/e0/e;->a:J

    .line 13
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/p;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 14
    :cond_3
    iget-object v1, p0, Le/a/l4/e;->f:Lcom/truecaller/api/services/presence/v1/models/Voip;

    if-eqz v1, :cond_4

    const-string v1, "VoIP.isDisabled="

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "append(\"VoIP.isDisabled=\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/l4/e;->f:Lcom/truecaller/api/services/presence/v1/models/Voip;

    invoke-virtual {v1}, Lcom/truecaller/api/services/presence/v1/models/Voip;->getDisabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/p;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v1, "VoIP.version="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "append(\"VoIP.version=\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/l4/e;->f:Lcom/truecaller/api/services/presence/v1/models/Voip;

    invoke-virtual {v1}, Lcom/truecaller/api/services/presence/v1/models/Voip;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/p;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 17
    :cond_4
    iget-object v1, p0, Le/a/l4/e;->g:Lcom/truecaller/api/services/presence/v1/models/Payment;

    if-eqz v1, :cond_5

    const-string v1, "Payment.isEnabled="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "append(\"Payment.isEnabled=\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/l4/e;->g:Lcom/truecaller/api/services/presence/v1/models/Payment;

    invoke-virtual {v1}, Lcom/truecaller/api/services/presence/v1/models/Payment;->getEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/p;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v1, "Payment.lastTxnTimeSeconds="

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "append(\"Payment.lastTxnTimeSeconds=\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/l4/e;->g:Lcom/truecaller/api/services/presence/v1/models/Payment;

    invoke-virtual {v1}, Lcom/truecaller/api/services/presence/v1/models/Payment;->getLastTxn()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/p;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v1, "Payment.version="

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "append(\"Payment.version=\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/l4/e;->g:Lcom/truecaller/api/services/presence/v1/models/Payment;

    invoke-virtual {v1}, Lcom/truecaller/api/services/presence/v1/models/Payment;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/p;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 21
    :cond_5
    iget-object v1, p0, Le/a/l4/e;->i:Lcom/truecaller/api/services/presence/v1/models/Premium;

    if-eqz v1, :cond_6

    const-string v1, "Premium.level="

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "append(\"Premium.level=\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/l4/e;->i:Lcom/truecaller/api/services/presence/v1/models/Premium;

    invoke-virtual {v1}, Lcom/truecaller/api/services/presence/v1/models/Premium;->getLevel()Lcom/truecaller/api/services/presence/v1/models/Premium$ProductLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/p;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v1, "Premium.scope="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "append(\"Premium.scope=\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/l4/e;->i:Lcom/truecaller/api/services/presence/v1/models/Premium;

    invoke-virtual {v1}, Lcom/truecaller/api/services/presence/v1/models/Premium;->getScope()Lcom/truecaller/api/services/presence/v1/models/Premium$Scope;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/p;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 24
    :cond_6
    iget-object v1, p0, Le/a/l4/e;->j:Lcom/truecaller/api/services/presence/v1/models/CallContext;

    if-eqz v1, :cond_7

    const-string v1, "CallContext.isDisabled="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "append(\"CallContext.isDisabled=\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/l4/e;->j:Lcom/truecaller/api/services/presence/v1/models/CallContext;

    invoke-virtual {v1}, Lcom/truecaller/api/services/presence/v1/models/CallContext;->getDisabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/p;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v1, "CallContext.version="

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "append(\"CallContext.version=\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/l4/e;->j:Lcom/truecaller/api/services/presence/v1/models/CallContext;

    invoke-virtual {v1}, Lcom/truecaller/api/services/presence/v1/models/CallContext;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/p;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 27
    :cond_7
    iget-object v1, p0, Le/a/l4/e;->k:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;

    if-eqz v1, :cond_8

    const-string v1, "CovidMedicalSupply.isDisabled="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "append(\"CovidMedicalSupply.isDisabled=\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/l4/e;->k:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;

    invoke-virtual {v1}, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;->getEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/p;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v1, "CovidMedicalSupply.list="

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "append(\"CovidMedicalSupply.list=\")"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/l4/e;->k:Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;

    invoke-virtual {v1}, Lcom/truecaller/api/services/presence/v1/models/CovidMedicalSupply;->getItemsList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/p;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "CheckTime="

    .line 30
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Le/a/l4/e;->h:Lw3/b/a/b;

    .line 31
    iget-wide v3, v3, Lw3/b/a/e0/e;->a:J

    .line 32
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/p;->e(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "with(StringBuilder(\"Pres\u2026\n        toString()\n    }"

    .line 35
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
