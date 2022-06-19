.class public final Le/a/q/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q/c;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/u3/g;

.field public final c:Le/a/w4/b;

.field public final d:Le/a/b0/q/l0;

.field public final e:Le/a/q/g/e;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/u3/g;Le/a/w4/b;Le/a/b0/q/l0;Le/a/q/g/e;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "util"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactFeedbackDbManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/q/d;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/q/d;->b:Le/a/u3/g;

    iput-object p3, p0, Le/a/q/d;->c:Le/a/w4/b;

    iput-object p4, p0, Le/a/q/d;->d:Le/a/b0/q/l0;

    iput-object p5, p0, Le/a/q/d;->e:Le/a/q/g/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/Contact;JZLjava/lang/String;ILjava/lang/String;)V
    .locals 1

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "contact_aggregated_id"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 3
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "feedback_type"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "original_name"

    .line 4
    invoke-virtual {v0, p2, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "suggested_name"

    .line 5
    invoke-virtual {v0, p2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "suggested_type"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object p1, p1, Lcom/truecaller/data/entity/Contact;->w:Lcom/truecaller/data/entity/NameFeedback;

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lcom/truecaller/data/entity/NameFeedback;->getNameSource()Ljava/lang/Number;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 9
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "name_source"

    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p2, "Expected nameSource to be present, but it was null."

    .line 11
    invoke-static {p2}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 12
    :goto_1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/NameFeedback;->getNameElectionAlgo()Ljava/lang/String;

    move-result-object p1

    const-string p2, "name_election_algo"

    .line 13
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    const-string p1, "Expected nameFeedback to be present, but it was null."

    .line 14
    invoke-static {p1}, Lcom/truecaller/log/AssertionUtil;->reportWeirdnessButNeverCrash(Ljava/lang/String;)V

    .line 15
    :goto_2
    new-instance p1, Ln3/m0/f;

    invoke-direct {p1, v0}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 16
    invoke-static {p1}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    const-string p2, "with(Builder()) {\n      \u2026        build()\n        }"

    .line 17
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance p2, Ln3/m0/r$a;

    const-class p3, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    invoke-direct {p2, p3}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 19
    iget-object p3, p2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object p1, p3, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 20
    invoke-virtual {p2}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object p1

    const-string p2, "OneTimeWorkRequest.Build\u2026ata)\n            .build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    check-cast p1, Ln3/m0/r;

    .line 22
    new-instance p2, Ln3/m0/r$a;

    const-class p3, Lcom/truecaller/contactfeedback/workers/UploadContactFeedbackWorker;

    invoke-direct {p2, p3}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 23
    new-instance p3, Ln3/m0/d$a;

    invoke-direct {p3}, Ln3/m0/d$a;-><init>()V

    sget-object p4, Ln3/m0/q;->b:Ln3/m0/q;

    .line 24
    iput-object p4, p3, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 25
    new-instance p4, Ln3/m0/d;

    invoke-direct {p4, p3}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 26
    iget-object p3, p2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object p4, p3, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 27
    invoke-virtual {p2}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object p2

    const-string p3, "OneTimeWorkRequest.Build\u2026d())\n            .build()"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ln3/m0/r;

    .line 28
    iget-object p3, p0, Le/a/q/d;->a:Landroid/content/Context;

    .line 29
    invoke-static {p3}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object p3

    .line 30
    invoke-virtual {p3, p1}, Ln3/m0/y;->c(Ln3/m0/r;)Ln3/m0/w;

    move-result-object p1

    .line 31
    invoke-virtual {p1, p2}, Ln3/m0/w;->b(Ln3/m0/r;)Ln3/m0/w;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Ln3/m0/w;->a()Ln3/m0/s;

    return-void
.end method

.method public b(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/q/d$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/q/d$a;

    iget v1, v0, Le/a/q/d$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/q/d$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/q/d$a;

    invoke-direct {v0, p0, p2}, Le/a/q/d$a;-><init>(Le/a/q/d;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/q/d$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/q/d$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/q/d$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/q/d;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/q/d;->c:Le/a/w4/b;

    const-wide/16 v5, 0x0

    .line 5
    iget-object p2, p2, Le/a/w4/b;->b:Ljavax/inject/Provider;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/settings/CallingSettings;

    const-string v2, "afterCallPromoteNameFeedbackTimestamp"

    invoke-interface {p2, v2, v5, v6}, Lcom/truecaller/settings/CallingSettings;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 6
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Le/a/q/d;->c:Le/a/w4/b;

    .line 7
    iget-object v2, v2, Le/a/w4/b;->a:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/z4/d;

    const/16 v7, 0x3c

    const-string v8, "feature_name_feedback_interval_seconds"

    invoke-interface {v2, v8, v7}, Le/a/z4/d;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-long v7, v2

    .line 8
    invoke-virtual {p2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    .line 9
    iget-object p2, p0, Le/a/q/d;->d:Le/a/b0/q/l0;

    invoke-virtual {p2, v5, v6, v7, v8}, Le/a/b0/q/l0;->b(JJ)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->c1()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p1, Lcom/truecaller/data/entity/Contact;->w:Lcom/truecaller/data/entity/NameFeedback;

    if-eqz p2, :cond_3

    move p2, v4

    goto :goto_1

    :cond_3
    move p2, v3

    :goto_1
    if-eqz p2, :cond_7

    .line 11
    iget-object p2, p0, Le/a/q/d;->e:Le/a/q/g/e;

    iput-object p0, v0, Le/a/q/d$a;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/q/d$a;->e:I

    check-cast p2, Le/a/q/g/f;

    invoke-virtual {p2, p1, v0}, Le/a/q/g/f;->f(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object p1, p0

    :goto_2
    check-cast p2, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;

    .line 12
    iget-object v0, p1, Le/a/q/d;->b:Le/a/u3/g;

    .line 13
    iget-object v1, v0, Le/a/u3/g;->F2:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v5, 0xbb

    aget-object v2, v2, v5

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 14
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    xor-int/2addr v0, v4

    if-eqz p2, :cond_6

    if-nez v0, :cond_6

    .line 15
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p1, Le/a/q/d;->c:Le/a/w4/b;

    .line 16
    iget-object v1, v1, Le/a/w4/b;->a:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/z4/d;

    const-wide/16 v5, -0x1

    const-string v2, "featureNameFeedbackCoolDownPeriodSeconds"

    invoke-interface {v1, v2, v5, v6}, Le/a/z4/d;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 18
    iget-object v2, p1, Le/a/q/d;->d:Le/a/b0/q/l0;

    invoke-virtual {p2}, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->getTimestamp()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v0, v1}, Le/a/b0/q/l0;->b(JJ)Z

    move-result v0

    .line 19
    iget-object p1, p1, Le/a/q/d;->d:Le/a/b0/q/l0;

    invoke-virtual {p1}, Le/a/b0/q/l0;->c()J

    .line 20
    invoke-virtual {p2}, Lcom/truecaller/contactfeedback/db/ContactFeedbackTimestamp;->getTimestamp()J

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move p1, v3

    goto :goto_4

    :cond_6
    :goto_3
    move p1, v4

    :goto_4
    if-eqz p1, :cond_7

    move v3, v4

    .line 21
    :cond_7
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
