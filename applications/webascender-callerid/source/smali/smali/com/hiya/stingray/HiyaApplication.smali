.class public Lcom/hiya/stingray/HiyaApplication;
.super Landroid/app/Application;
.source "SourceFile"

# interfaces
.implements Lg/g/b/a/i/c/e;
.implements Lg/g/b/d/f/l;


# instance fields
.field A:Lcom/hiya/stingray/j;

.field B:Lcom/hiya/stingray/manager/a4;

.field C:Lg/g/b/a/a;

.field D:Lcom/hiya/stingray/f;

.field E:Lcom/hiya/stingray/l;

.field F:Lcom/hiya/stingray/e;

.field G:Li/c/b0/c/a;

.field H:Lcom/hiya/stingray/manager/g4;

.field I:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lg/a;",
            ">;"
        }
    .end annotation
.end field

.field J:Lcom/hiya/stingray/manager/e2;

.field K:Lcom/hiya/stingray/manager/k4;

.field L:Lcom/hiya/stingray/manager/s2;

.field M:Lcom/hiya/stingray/manager/z2;

.field N:Lcom/hiya/stingray/manager/u2;

.field O:Lcom/hiya/stingray/manager/w2;

.field P:Lcom/hiya/stingray/manager/j2;

.field Q:Lcom/hiya/stingray/q/d/a;

.field private R:Z

.field private f:Lcom/hiya/stingray/s/d/b;

.field private g:Lcom/hiya/stingray/s/d/h;

.field h:Lcom/hiya/stingray/manager/i1;

.field i:Lcom/hiya/stingray/manager/b2;

.field j:Lcom/hiya/stingray/manager/e1;

.field k:Lcom/hiya/stingray/manager/x3;

.field l:Landroid/app/job/JobScheduler;

.field m:Landroid/app/job/JobInfo$Builder;

.field n:Landroid/app/job/JobInfo$Builder;

.field o:Lcom/hiya/stingray/q/b/w;

.field p:Landroid/content/SharedPreferences;

.field q:Lcom/hiya/stingray/manager/u3;

.field r:Lcom/hiya/stingray/manager/g1;

.field s:Landroid/app/job/JobInfo$Builder;

.field t:Lcom/hiya/stingray/manager/p4/a;

.field u:Lcom/hiya/stingray/manager/k1;

.field v:Lcom/hiya/stingray/manager/g3;

.field w:Lcom/hiya/stingray/manager/b3;

.field x:Lcom/hiya/stingray/manager/v2;

.field y:Lcom/hiya/stingray/manager/b1;

.field z:Lcom/hiya/stingray/manager/q1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/hiya/stingray/HiyaApplication;->R:Z

    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/hiya/stingray/s/d/b;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    invoke-static {}, Lcom/hiya/stingray/s/d/e;->J()Lcom/hiya/stingray/s/d/e$b;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/s/e/m;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/hiya/stingray/HiyaApplication;

    invoke-direct {v1, p1}, Lcom/hiya/stingray/s/e/m;-><init>(Landroid/app/Application;)V

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/s/d/e$b;->a(Lcom/hiya/stingray/s/e/m;)Lcom/hiya/stingray/s/d/e$b;

    .line 4
    invoke-virtual {v0}, Lcom/hiya/stingray/s/d/e$b;->b()Lcom/hiya/stingray/s/d/b;

    move-result-object p1

    return-object p1
.end method

.method private f()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/HiyaApplication;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "remote_config_last_schedule_time"

    .line 2
    invoke-direct {p0, v0}, Lcom/hiya/stingray/HiyaApplication;->w(Ljava/lang/String;)V

    const-string v0, "request_queue_last_job_schedule_time"

    .line 3
    invoke-direct {p0, v0}, Lcom/hiya/stingray/HiyaApplication;->w(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->m:Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    const-string v1, "Failed to schedule RemoteConfigSyncJob"

    invoke-direct {p0, v0, v1}, Lcom/hiya/stingray/HiyaApplication;->s(Landroid/app/job/JobInfo;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->n:Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    const-string v1, "Failed to schedule REQUEST_QUEUE_JOBSERVICE"

    invoke-direct {p0, v0, v1}, Lcom/hiya/stingray/HiyaApplication;->s(Landroid/app/job/JobInfo;Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/HiyaApplication;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->s:Landroid/app/job/JobInfo$Builder;

    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    const-string v1, "Failed to schedule CallerGridRankingService"

    invoke-direct {p0, v0, v1}, Lcom/hiya/stingray/HiyaApplication;->s(Landroid/app/job/JobInfo;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->j:Lcom/hiya/stingray/manager/e1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->u(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/hiya/stingray/HiyaApplication;->j:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/manager/e1;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->r:Lcom/hiya/stingray/manager/g1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/g1;->i()V

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->y:Lcom/hiya/stingray/manager/b1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/b1;->b()V

    return-void
.end method

.method private i()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hiya/stingray/HiyaApplication;->l()V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/HiyaApplication;->h()V

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/HiyaApplication;->p()V

    return-void
.end method

.method private j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->i:Lcom/hiya/stingray/manager/b2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->u(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->i:Lcom/hiya/stingray/manager/b2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/b2;->s()V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->i:Lcom/hiya/stingray/manager/b2;

    const-class v1, Lcom/hiya/api/exception/HiyaRetrofitException;

    sget-object v2, Lcom/hiya/stingray/a;->f:Lcom/hiya/stingray/a;

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/manager/b2;->r(Ljava/lang/Class;Lkotlin/w/b/l;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/hiya/stingray/util/r;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->Q:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->y()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lr/a/a$b;

    invoke-direct {v0}, Lr/a/a$b;-><init>()V

    goto :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->i:Lcom/hiya/stingray/manager/b2;

    .line 7
    invoke-static {v0}, Lcom/hiya/client/support/logging/d;->l(Lcom/hiya/client/support/logging/e;)V

    .line 8
    :goto_1
    invoke-static {v0}, Lr/a/a;->i(Lr/a/a$c;)V

    return-void
.end method

.method private l()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->q:Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u3;->N()V

    return-void
.end method

.method private o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->t:Lcom/hiya/stingray/manager/p4/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/p4/a;->c()V

    return-void
.end method

.method private p()V
    .locals 4

    .line 1
    sget-object v0, Lzendesk/core/Zendesk;->INSTANCE:Lzendesk/core/Zendesk;

    const v1, 0x7f110433

    invoke-virtual {p0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f110423

    .line 2
    invoke-virtual {p0, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f11042c

    .line 3
    invoke-virtual {p0, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-virtual {v0, p0, v1, v2, v3}, Lzendesk/core/Zendesk;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v1, Lzendesk/core/AnonymousIdentity;

    invoke-direct {v1}, Lzendesk/core/AnonymousIdentity;-><init>()V

    invoke-virtual {v0, v1}, Lzendesk/core/Zendesk;->setIdentity(Lzendesk/core/Identity;)V

    .line 6
    sget-object v1, Lzendesk/support/Support;->INSTANCE:Lzendesk/support/Support;

    invoke-virtual {v1, v0}, Lzendesk/support/Support;->init(Lzendesk/core/Zendesk;)V

    return-void
.end method

.method static synthetic q(Ljava/lang/Throwable;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/hiya/api/exception/HiyaRetrofitException;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/hiya/api/exception/HiyaRetrofitException;

    .line 2
    invoke-virtual {p0}, Lcom/hiya/api/exception/RetrofitException;->a()Lcom/hiya/api/exception/RetrofitException$a;

    move-result-object p0

    sget-object v0, Lcom/hiya/api/exception/RetrofitException$a;->OFFLINE:Lcom/hiya/api/exception/RetrofitException$a;

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 3
    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private s(Landroid/app/job/JobInfo;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->l:Landroid/app/job/JobScheduler;

    invoke-virtual {v0, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/hiya/stingray/exception/HiyaGenericException;

    invoke-direct {p1}, Lcom/hiya/stingray/exception/HiyaGenericException;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    .line 1
    invoke-static {}, Li/c/b0/h/a;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RxJavaPlugins is locked down.  Custom error handler not set."

    .line 2
    invoke-static {v1, v0}, Lr/a/a;->l(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/hiya/stingray/HiyaApplication$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/HiyaApplication$a;-><init>(Lcom/hiya/stingray/HiyaApplication;)V

    invoke-static {v0}, Li/c/b0/h/a;->B(Li/c/b0/d/g;)V

    :goto_0
    return-void
.end method

.method private u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private v()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/common/collect/Lists;->g()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/HiyaApplication;->l:Landroid/app/job/JobScheduler;

    invoke-virtual {v1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    .line 3
    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/16 v1, 0x2329

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x232a

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method private w(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->p:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public b()Lcom/hiya/stingray/s/d/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->f:Lcom/hiya/stingray/s/d/b;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p0}, Lcom/hiya/stingray/HiyaApplication;->a(Landroid/content/Context;)Lcom/hiya/stingray/s/d/b;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->f:Lcom/hiya/stingray/s/d/b;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->f:Lcom/hiya/stingray/s/d/b;

    return-object v0
.end method

.method public c()Lcom/hiya/stingray/s/d/h;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->g:Lcom/hiya/stingray/s/d/h;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/HiyaApplication;->b()Lcom/hiya/stingray/s/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/hiya/stingray/s/d/b;->a()Lcom/hiya/stingray/s/d/h$a;

    move-result-object v0

    new-instance v1, Lg/g/a/b/a;

    .line 3
    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/hiya/stingray/HiyaApplication;->A:Lcom/hiya/stingray/j;

    invoke-direct {v1, v2, v3}, Lg/g/a/b/a;-><init>(Landroid/content/Context;Lg/g/a/b/j1/c;)V

    invoke-interface {v0, v1}, Lcom/hiya/stingray/s/d/h$a;->a(Lg/g/a/b/a;)Lcom/hiya/stingray/s/d/h$a;

    .line 4
    invoke-interface {v0}, Lcom/hiya/stingray/s/d/h$a;->c()Lcom/hiya/stingray/s/d/h;

    move-result-object v0

    iput-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->g:Lcom/hiya/stingray/s/d/h;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->g:Lcom/hiya/stingray/s/d/h;

    return-object v0
.end method

.method protected d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->x:Lcom/hiya/stingray/manager/v2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/v2;->a()V

    return-void
.end method

.method protected e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->k:Lcom/hiya/stingray/manager/x3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/x3;->B()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->k:Lcom/hiya/stingray/manager/x3;

    sget-object v1, Lcom/hiya/stingray/manager/x3$c;->APPLICATION:Lcom/hiya/stingray/manager/x3$c;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/x3;->i(Lcom/hiya/stingray/manager/x3$c;)V

    return-void
.end method

.method public getClientInfoProvider()Lg/g/a/b/j1/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->A:Lcom/hiya/stingray/j;

    return-object v0
.end method

.method protected h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->u:Lcom/hiya/stingray/manager/k1;

    invoke-virtual {v0, p0}, Lcom/hiya/stingray/manager/k1;->b(Landroid/app/Application;)V

    return-void
.end method

.method protected k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->v:Lcom/hiya/stingray/manager/g3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/g3;->i()V

    return-void
.end method

.method public m()V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/google/firebase/c;->o(Landroid/content/Context;)Lcom/google/firebase/c;

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/HiyaApplication;->j()V

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/HiyaApplication;->g()V

    .line 4
    invoke-virtual {p0}, Lcom/hiya/stingray/HiyaApplication;->e()V

    .line 5
    invoke-virtual {p0}, Lcom/hiya/stingray/HiyaApplication;->n()V

    .line 6
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->B:Lcom/hiya/stingray/manager/a4;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/a4;->e()V

    .line 7
    iget-boolean v0, p0, Lcom/hiya/stingray/HiyaApplication;->R:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/hiya/stingray/HiyaApplication;->i()V

    .line 9
    iput-boolean v1, p0, Lcom/hiya/stingray/HiyaApplication;->R:Z

    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/hiya/stingray/HiyaApplication;->f()V

    .line 11
    invoke-static {}, Lcom/google/firebase/inappmessaging/q;->d()Lcom/google/firebase/inappmessaging/q;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/firebase/inappmessaging/q;->g(Z)V

    .line 12
    sget-object v0, Lcom/hiya/client/callerid/ui/e;->f:Lcom/hiya/client/callerid/ui/e;

    iget-object v1, p0, Lcom/hiya/stingray/HiyaApplication;->C:Lg/g/b/a/a;

    const-string v2, ""

    invoke-virtual {v0, p0, v1, v2}, Lcom/hiya/client/callerid/ui/e;->g(Landroid/content/Context;Lg/g/b/a/a;Ljava/lang/String;)Li/c/b0/b/e;

    .line 13
    iget-object v1, p0, Lcom/hiya/stingray/HiyaApplication;->P:Lcom/hiya/stingray/manager/j2;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/j2;->b()V

    .line 14
    iget-object v1, p0, Lcom/hiya/stingray/HiyaApplication;->E:Lcom/hiya/stingray/l;

    invoke-virtual {v0, p0, v1}, Lcom/hiya/client/callerid/ui/e;->p(Landroid/content/Context;Lcom/hiya/client/callerid/ui/d;)V

    .line 15
    iget-object v1, p0, Lcom/hiya/stingray/HiyaApplication;->E:Lcom/hiya/stingray/l;

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/e;->m(Lcom/hiya/client/callerid/ui/c;)V

    .line 16
    iget-object v1, p0, Lcom/hiya/stingray/HiyaApplication;->D:Lcom/hiya/stingray/f;

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/e;->l(Lcom/hiya/client/callerid/ui/b;)V

    .line 17
    iget-object v1, p0, Lcom/hiya/stingray/HiyaApplication;->F:Lcom/hiya/stingray/e;

    invoke-virtual {v0, v1}, Lcom/hiya/client/callerid/ui/e;->k(Lcom/hiya/client/callerid/ui/a;)V

    .line 18
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->H:Lcom/hiya/stingray/manager/g4;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/g4;->f(Z)V

    .line 19
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->J:Lcom/hiya/stingray/manager/e2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/e2;->a()V

    .line 20
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->K:Lcom/hiya/stingray/manager/k4;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/k4;->c()V

    .line 21
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->L:Lcom/hiya/stingray/manager/s2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/s2;->o()V

    .line 22
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->N:Lcom/hiya/stingray/manager/u2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/u2;->i()V

    .line 23
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->O:Lcom/hiya/stingray/manager/w2;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/w2;->h()V

    return-void
.end method

.method protected n()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->c()Lcom/google/firebase/auth/g;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-virtual {v1}, Lcom/google/firebase/auth/g;->A1()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/auth/w;

    .line 5
    invoke-interface {v2}, Lcom/google/firebase/auth/w;->q0()Ljava/lang/String;

    move-result-object v3

    const-string v4, "google.com"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 6
    invoke-interface {v2}, Lcom/google/firebase/auth/w;->q0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "facebook.com"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->j()V

    :cond_2
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 2
    new-instance v0, Lcom/hiya/stingray/j;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->A:Lcom/hiya/stingray/j;

    .line 3
    invoke-virtual {p0}, Lcom/hiya/stingray/HiyaApplication;->c()Lcom/hiya/stingray/s/d/h;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/HiyaApplication;->A:Lcom/hiya/stingray/j;

    invoke-interface {v0, v1}, Lcom/hiya/stingray/s/d/h;->q(Lcom/hiya/stingray/j;)V

    .line 4
    invoke-virtual {p0}, Lcom/hiya/stingray/HiyaApplication;->c()Lcom/hiya/stingray/s/d/h;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/hiya/stingray/s/d/h;->l(Lcom/hiya/stingray/HiyaApplication;)V

    .line 5
    invoke-direct {p0}, Lcom/hiya/stingray/HiyaApplication;->t()V

    .line 6
    invoke-direct {p0}, Lcom/hiya/stingray/HiyaApplication;->o()V

    .line 7
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->o:Lcom/hiya/stingray/q/b/w;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/w;->a()Lio/realm/y;

    .line 8
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->w:Lcom/hiya/stingray/manager/b3;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/b3;->d()V

    .line 9
    invoke-virtual {p0}, Lcom/hiya/stingray/HiyaApplication;->d()V

    .line 10
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->h:Lcom/hiya/stingray/manager/i1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/i1;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/hiya/stingray/HiyaApplication;->m()V

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/hiya/stingray/HiyaApplication;->k()V

    .line 13
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->z:Lcom/hiya/stingray/manager/q1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/q1;->j()V

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/HiyaApplication;->G:Li/c/b0/c/a;

    invoke-virtual {v0}, Li/c/b0/c/a;->d()V

    return-void
.end method

.method public r(Lcom/hiya/stingray/ui/common/e;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/HiyaApplication;->R:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/common/e;->D()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/hiya/stingray/HiyaApplication;->h:Lcom/hiya/stingray/manager/i1;

    .line 2
    invoke-virtual {p1}, Lcom/hiya/stingray/manager/i1;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/hiya/stingray/HiyaApplication;->i()V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/hiya/stingray/HiyaApplication;->R:Z

    :cond_0
    return-void
.end method
