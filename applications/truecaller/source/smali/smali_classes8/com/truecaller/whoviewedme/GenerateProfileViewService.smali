.class public final Lcom/truecaller/whoviewedme/GenerateProfileViewService;
.super Le/a/r5/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/whoviewedme/GenerateProfileViewService$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001:\u0001)B\u0007\u00a2\u0006\u0004\u0008\'\u0010(J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\"\u0010\u000e\u001a\u00020\u00078\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u0016\u001a\u00020\u000f8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00178\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%\u00a8\u0006*"
    }
    d2 = {
        "Lcom/truecaller/whoviewedme/GenerateProfileViewService;",
        "Ln3/k/a/a0;",
        "Landroid/content/Intent;",
        "intent",
        "Ls1/s;",
        "onHandleWork",
        "(Landroid/content/Intent;)V",
        "Le/a/q2/a;",
        "g",
        "Le/a/q2/a;",
        "getAnalytics",
        "()Le/a/q2/a;",
        "setAnalytics",
        "(Le/a/q2/a;)V",
        "analytics",
        "Le/a/r5/j;",
        "e",
        "Le/a/r5/j;",
        "getProfileViewDao",
        "()Le/a/r5/j;",
        "setProfileViewDao",
        "(Le/a/r5/j;)V",
        "profileViewDao",
        "Le/a/r5/i0;",
        "d",
        "Le/a/r5/i0;",
        "getWhoViewedMeManager",
        "()Le/a/r5/i0;",
        "setWhoViewedMeManager",
        "(Le/a/r5/i0;)V",
        "whoViewedMeManager",
        "Le/a/k3/j/j;",
        "f",
        "Le/a/k3/j/j;",
        "getRawContactDao",
        "()Le/a/k3/j/j;",
        "setRawContactDao",
        "(Le/a/k3/j/j;)V",
        "rawContactDao",
        "<init>",
        "()V",
        "a",
        "whoviewedme_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic h:I


# instance fields
.field public d:Le/a/r5/i0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/r5/j;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/k3/j/j;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Le/a/q2/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/r5/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleWork(Landroid/content/Intent;)V
    .locals 13

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "EXTRA_AGGR_CONTACT_ID"

    const-wide/16 v1, -0x1

    .line 1
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "EXTRA_SEARCH_TYPE"

    const/16 v3, 0x3e7

    .line 2
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "EXTRA_IS_PB_CONTACT"

    const/4 v4, 0x1

    .line 3
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "EXTRA_PROFILE_VIEW_EVENT_SOURCE"

    .line 4
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/truecaller/whoviewedme/ProfileViewSource;->UNKNOWN:Lcom/truecaller/whoviewedme/ProfileViewSource;

    :goto_0
    const-string v5, "null cannot be cast to non-null type com.truecaller.whoviewedme.ProfileViewSource"

    invoke-static {p1, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/whoviewedme/ProfileViewSource;

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "====== onHandleWork:: Aggregated tc id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " source: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " search type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-ltz v5, :cond_a

    const-string v5, "source"

    const-string v6, "tcId"

    .line 6
    iget-object v7, p0, Lcom/truecaller/whoviewedme/GenerateProfileViewService;->f:Le/a/k3/j/j;

    const/4 v8, 0x0

    if-eqz v7, :cond_9

    invoke-virtual {v7, v0, v1}, Le/a/k3/j/j;->f(J)Ljava/util/List;

    move-result-object v0

    const-string v1, "rawContactDao.getByAggre\u2026edId(aggregatedContactId)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v7, v1

    move-object v9, v8

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 8
    move-object v11, v10

    check-cast v11, Lcom/truecaller/data/entity/Contact;

    const-string v12, "c"

    .line 9
    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/truecaller/data/entity/Contact;->getSource()I

    move-result v11

    if-ne v11, v4, :cond_2

    move v11, v4

    goto :goto_2

    :cond_2
    move v11, v1

    :goto_2
    if-eqz v11, :cond_1

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move v7, v4

    move-object v9, v10

    goto :goto_1

    :cond_4
    if-nez v7, :cond_5

    :goto_3
    move-object v9, v8

    .line 10
    :cond_5
    check-cast v9, Lcom/truecaller/data/entity/Contact;

    if-eqz v9, :cond_a

    .line 11
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "contact.tcId ?: return"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v9, v4}, Lcom/truecaller/data/entity/Contact;->g0(I)Z

    move-result v1

    .line 13
    :try_start_0
    iget-object v4, p0, Lcom/truecaller/whoviewedme/GenerateProfileViewService;->d:Le/a/r5/i0;

    if-eqz v4, :cond_8

    invoke-interface {v4, v0, v2, v1, v3}, Le/a/r5/i0;->n(Ljava/lang/String;IZZ)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 14
    iget-object v1, p0, Lcom/truecaller/whoviewedme/GenerateProfileViewService;->e:Le/a/r5/j;

    if-eqz v1, :cond_7

    check-cast v1, Le/a/r5/n;

    .line 15
    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v2, Lcom/truecaller/whoviewedme/ProfileViewType;->OUTGOING:Lcom/truecaller/whoviewedme/ProfileViewType;

    invoke-virtual {v1, v0, p1, v2}, Le/a/r5/n;->b(Ljava/lang/String;Lcom/truecaller/whoviewedme/ProfileViewSource;Lcom/truecaller/whoviewedme/ProfileViewType;)V

    .line 17
    invoke-static {v0, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    sget-object v1, Lcom/truecaller/common/network/util/KnownEndpoints;->PROFILE_VIEW:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v2, Le/a/r5/q;

    invoke-static {v1, v2}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r5/q;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Le/a/r5/q;->a(Ljava/lang/String;Ljava/lang/String;)Lx3/b;

    move-result-object v0

    .line 19
    invoke-interface {v0}, Lx3/b;->execute()Lx3/a0;

    .line 20
    new-instance v0, Le/a/r5/s0/a;

    invoke-direct {v0, p1}, Le/a/r5/s0/a;-><init>(Lcom/truecaller/whoviewedme/ProfileViewSource;)V

    iget-object p1, p0, Lcom/truecaller/whoviewedme/GenerateProfileViewService;->g:Le/a/q2/a;

    if-eqz p1, :cond_6

    invoke-static {v0, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    goto :goto_4

    :cond_6
    const-string p1, "analytics"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    throw v8

    :cond_7
    :try_start_1
    const-string p1, "profileViewDao"

    .line 21
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    throw v8

    :cond_8
    :try_start_2
    const-string p1, "whoViewedMeManager"

    .line 22
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    throw v8

    :cond_9
    const-string p1, "rawContactDao"

    .line 23
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v8

    :catch_0
    :cond_a
    :goto_4
    return-void
.end method
