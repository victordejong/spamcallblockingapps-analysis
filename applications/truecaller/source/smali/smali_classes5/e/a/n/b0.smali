.class public final Le/a/n/b0;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/n/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/n/z;",
        ">;",
        "Le/a/n/y;"
    }
.end annotation


# static fields
.field public static final synthetic p:[Ls1/a/l;


# instance fields
.field public final b:Lq3/a/y;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/e/c2/i0;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/e/c2/i0;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Landroid/content/Context;

.field public final f:Ls1/w/f;

.field public final g:Ls1/w/f;

.field public final h:Le/a/n/m;

.field public final i:Le/a/p5/u;

.field public final j:Le/a/b0/o/a;

.field public final k:Le/a/q2/a;

.field public final l:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public final m:Le/a/h5/w;

.field public final n:Le/a/a/i0;

.field public final o:Le/a/h5/y;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    new-instance v1, Ls1/z/c/u;

    const-class v2, Le/a/n/b0;

    const-string v3, "hasSMSPermissions"

    const-string v4, "<v#0>"

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ls1/z/c/u;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {v1}, Ls1/z/c/d0;->c(Ls1/z/c/t;)Ls1/a/j;

    move-result-object v1

    aput-object v1, v0, v5

    sput-object v0, Le/a/n/b0;->p:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ls1/w/f;Ls1/w/f;Le/a/n/m;Le/a/p5/u;Le/a/b0/o/a;Le/a/q2/a;Le/a/r2/f;Le/a/h5/w;Le/a/a/i0;Le/a/h5/y;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ls1/w/f;",
            "Ls1/w/f;",
            "Le/a/n/m;",
            "Le/a/p5/u;",
            "Le/a/b0/o/a;",
            "Le/a/q2/a;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/h5/w;",
            "Le/a/a/i0;",
            "Le/a/h5/y;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "presenterContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "networkUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tcPermissionsUtil"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messagingSettings"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tcPermissionsView"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/n/b0;->e:Landroid/content/Context;

    iput-object p2, p0, Le/a/n/b0;->f:Ls1/w/f;

    iput-object p3, p0, Le/a/n/b0;->g:Ls1/w/f;

    iput-object p4, p0, Le/a/n/b0;->h:Le/a/n/m;

    iput-object p5, p0, Le/a/n/b0;->i:Le/a/p5/u;

    iput-object p6, p0, Le/a/n/b0;->j:Le/a/b0/o/a;

    iput-object p7, p0, Le/a/n/b0;->k:Le/a/q2/a;

    iput-object p8, p0, Le/a/n/b0;->l:Le/a/r2/f;

    iput-object p9, p0, Le/a/n/b0;->m:Le/a/h5/w;

    iput-object p10, p0, Le/a/n/b0;->n:Le/a/a/i0;

    iput-object p11, p0, Le/a/n/b0;->o:Le/a/h5/y;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2, p1}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p3

    iput-object p3, p0, Le/a/n/b0;->b:Lq3/a/y;

    const/4 p3, 0x4

    new-array p3, p3, [Le/a/e/c2/i0;

    .line 3
    new-instance p4, Le/a/e/c2/i0;

    const-wide/16 p5, 0x0

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const/4 p6, 0x0

    const p7, 0x7f120899

    invoke-direct {p4, p6, p7, p1, p5}, Le/a/e/c2/i0;-><init>(IILjava/lang/String;Ljava/lang/Object;)V

    aput-object p4, p3, p6

    .line 4
    new-instance p4, Le/a/e/c2/i0;

    const-wide/16 p7, 0x18

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const p7, 0x7f120897

    invoke-direct {p4, p6, p7, p1, p5}, Le/a/e/c2/i0;-><init>(IILjava/lang/String;Ljava/lang/Object;)V

    aput-object p4, p3, p2

    .line 5
    new-instance p4, Le/a/e/c2/i0;

    const-wide/16 p7, 0xa8

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    const p7, 0x7f12089a

    invoke-direct {p4, p6, p7, p1, p5}, Le/a/e/c2/i0;-><init>(IILjava/lang/String;Ljava/lang/Object;)V

    const/4 p5, 0x2

    aput-object p4, p3, p5

    .line 6
    new-instance p4, Le/a/e/c2/i0;

    const-wide/16 p7, 0x2d0

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    const p8, 0x7f120898

    invoke-direct {p4, p6, p8, p1, p7}, Le/a/e/c2/i0;-><init>(IILjava/lang/String;Ljava/lang/Object;)V

    const/4 p7, 0x3

    aput-object p4, p3, p7

    .line 7
    invoke-static {p3}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    iput-object p3, p0, Le/a/n/b0;->c:Ljava/util/List;

    new-array p3, p5, [Le/a/e/c2/i0;

    .line 8
    new-instance p4, Le/a/e/c2/i0;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const p7, 0x7f120890

    invoke-direct {p4, p6, p7, p1, p5}, Le/a/e/c2/i0;-><init>(IILjava/lang/String;Ljava/lang/Object;)V

    aput-object p4, p3, p6

    .line 9
    new-instance p4, Le/a/e/c2/i0;

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    const p7, 0x7f120891

    .line 11
    invoke-direct {p4, p6, p7, p1, p5}, Le/a/e/c2/i0;-><init>(IILjava/lang/String;Ljava/lang/Object;)V

    aput-object p4, p3, p2

    .line 12
    invoke-static {p3}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Le/a/n/b0;->d:Ljava/util/List;

    return-void
.end method

.method public static final Hj(Le/a/n/b0;Z)V
    .locals 8

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string v0, "Enabled"

    goto :goto_0

    :cond_0
    const-string v0, "Disabled"

    .line 1
    :goto_0
    iget-object v6, p0, Le/a/n/b0;->k:Le/a/q2/a;

    .line 2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v7, "settings_screen"

    const-string v1, "Context"

    .line 3
    invoke-virtual {v3, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Setting"

    const-string v2, "Backup"

    .line 4
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "State"

    .line 5
    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v1, "SettingChanged"

    const-string v5, "AnalyticsEvent.Builder(A\u2026\n                .build()"

    move-object v2, v4

    .line 6
    invoke-static/range {v1 .. v6}, Le/d/c/a/a;->G0(Ljava/lang/String;Ljava/lang/Double;Ljava/util/HashMap;Le/a/q2/g$a;Ljava/lang/String;Le/a/q2/a;)V

    .line 7
    invoke-static {p1, v7}, Le/m/d/y/n;->B(ZLjava/lang/String;)Le/a/l5/a/z1;

    move-result-object p1

    .line 8
    iget-object p0, p0, Le/a/n/b0;->l:Le/a/r2/f;

    invoke-interface {p0}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le/a/q2/a0;

    invoke-interface {p0, p1}, Le/a/q2/a0;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method


# virtual methods
.method public Ee()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/n/b0;->Jj()Lq3/a/p1;

    return-void
.end method

.method public final Ij(Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v1, p1, Le/a/n/b0$a;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Le/a/n/b0$a;

    iget v2, v1, Le/a/n/b0$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/n/b0$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/n/b0$a;

    invoke-direct {v1, p0, p1}, Le/a/n/b0$a;-><init>(Le/a/n/b0;Ls1/w/d;)V

    :goto_0
    iget-object p1, v1, Le/a/n/b0$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/n/b0$a;->e:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v1, v1, Le/a/n/b0$a;->g:Ljava/lang/Object;

    check-cast v1, Le/a/n/b0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/n/b0;->j:Le/a/b0/o/a;

    const/4 v3, 0x0

    const-string v5, "restoreOnboardingShown"

    invoke-interface {p1, v5, v3}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    return-object v0

    .line 5
    :cond_3
    sget-object v5, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object p1, p0, Le/a/n/b0;->f:Ls1/w/f;

    iget-object v3, p0, Le/a/n/b0;->b:Lq3/a/y;

    invoke-interface {p1, v3}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Le/a/n/b0$b;

    const/4 p1, 0x0

    invoke-direct {v8, p0, p1}, Le/a/n/b0$b;-><init>(Le/a/n/b0;Ls1/w/d;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    iput-object p0, v1, Le/a/n/b0$a;->g:Ljava/lang/Object;

    iput v4, v1, Le/a/n/b0$a;->e:I

    check-cast p1, Lq3/a/o0;

    .line 6
    invoke-virtual {p1, v1}, Lq3/a/u1;->A(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_4

    return-object v2

    :cond_4
    move-object v1, p0

    .line 7
    :goto_1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-nez p1, :cond_5

    return-object v0

    .line 8
    :cond_5
    iget-object p1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/n/z;

    if-eqz p1, :cond_6

    invoke-interface {p1, v2, v3}, Le/a/n/z;->er(J)V

    .line 9
    :cond_6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final Jj()Lq3/a/p1;
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/n/b0;->g:Ls1/w/f;

    new-instance v3, Le/a/n/b0$f;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Le/a/n/b0$f;-><init>(Le/a/n/b0;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public K9(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Le/a/n/b0;->z8(Landroidx/fragment/app/Fragment;Z)Lq3/a/n0;

    return-void
.end method

.method public final Kj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/n/z;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Le/a/n/b0;->j:Le/a/b0/o/a;

    const-string v2, "backup_enabled"

    invoke-interface {v1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Le/a/n/b0;->m:Le/a/h5/w;

    invoke-interface {v1}, Le/a/h5/w;->j()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {v0, v1}, Le/a/n/z;->Nt(Z)V

    :cond_1
    return-void
.end method

.method public final Lj(Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/n/b0$g;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/n/b0$g;

    iget v1, v0, Le/a/n/b0$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/n/b0$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/n/b0$g;

    invoke-direct {v0, p0, p1}, Le/a/n/b0$g;-><init>(Le/a/n/b0;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/n/b0$g;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/n/b0$g;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/n/b0;->o:Le/a/h5/y;

    .line 5
    new-instance v2, Lcom/truecaller/tcpermissions/PermissionRequestOptions;

    const v4, 0x7f120441

    .line 6
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x3

    const/4 v6, 0x0

    .line 7
    invoke-direct {v2, v6, v6, v5, v4}, Lcom/truecaller/tcpermissions/PermissionRequestOptions;-><init>(ZZLjava/lang/Integer;I)V

    iget-object v4, p0, Le/a/n/b0;->m:Le/a/h5/w;

    invoke-interface {v4}, Le/a/h5/w;->q()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput v3, v0, Le/a/n/b0$g;->e:I

    .line 8
    invoke-interface {p1, v2, v4, v0}, Le/a/h5/y;->b(Lcom/truecaller/tcpermissions/PermissionRequestOptions;[Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 9
    :cond_3
    :goto_1
    check-cast p1, Le/a/h5/l;

    .line 10
    iget-boolean p1, p1, Le/a/h5/l;->a:Z

    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public W4(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/n/b0;->j:Le/a/b0/o/a;

    const-string v1, "backupNetworkType"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Le/a/b0/o/a;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/n/b0;->j:Le/a/b0/o/a;

    invoke-interface {v0, v1, p1}, Le/a/b0/o/a;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/n/z;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/n/z;->wm()V

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/n/b0;->k:Le/a/q2/a;

    .line 5
    new-instance v1, Le/a/q2/g$b;

    const-string v2, "SettingChanged"

    invoke-direct {v1, v2}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    const-string v2, "Context"

    const-string v3, "settings_screen"

    .line 6
    invoke-virtual {v1, v2, v3}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    const-string v2, "Setting"

    const-string v3, "BackupOver"

    .line 7
    invoke-virtual {v1, v2, v3}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    const-string v2, "State"

    .line 8
    invoke-virtual {v1, v2, p1}, Le/a/q2/g$b;->b(Ljava/lang/String;I)Le/a/q2/g$b;

    .line 9
    invoke-virtual {v1}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object p1

    const-string v1, "AnalyticsEvent.Builder(A\u2026\n                .build()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {v0, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/n/z;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Le/a/n/b0;->Jj()Lq3/a/p1;

    .line 5
    invoke-virtual {p0}, Le/a/n/b0;->Kj()V

    return-void
.end method

.method public c()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 2
    move-object v1, v0

    check-cast v1, Le/a/n/z;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/n/z;->p()V

    .line 3
    :cond_0
    iget-object v1, p0, Le/a/n/b0;->b:Lq3/a/y;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v0}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/n/b0;->Kj()V

    return-void
.end method

.method public r2(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Lq3/a/n0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/String;",
            ")",
            "Lq3/a/n0<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectedOption"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v0, p0, Le/a/n/b0;->f:Ls1/w/f;

    iget-object v2, p0, Le/a/n/b0;->b:Lq3/a/y;

    invoke-interface {v0, v2}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v2

    new-instance v4, Le/a/n/b0$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p2, p1, v0}, Le/a/n/b0$c;-><init>(Le/a/n/b0;Ljava/lang/String;Landroidx/fragment/app/Fragment;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    return-object p1
.end method

.method public r8(IILandroid/content/Intent;)V
    .locals 0

    const/16 p2, 0x10e1

    if-eq p1, p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, Le/a/n/b0;->h:Le/a/n/m;

    invoke-interface {p1}, Le/a/n/m;->a()V

    return-void
.end method

.method public rj(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/n/b0;->j:Le/a/b0/o/a;

    const-string v1, "key_backup_frequency_hours"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Le/a/b0/o/a;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v2, p1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/n/b0;->j:Le/a/b0/o/a;

    invoke-interface {v0, v1, p1, p2}, Le/a/b0/o/a;->putLong(Ljava/lang/String;J)V

    .line 3
    iget-object v0, p0, Le/a/n/b0;->k:Le/a/q2/a;

    .line 4
    new-instance v1, Le/a/q2/g$b;

    const-string v2, "SettingChanged"

    invoke-direct {v1, v2}, Le/a/q2/g$b;-><init>(Ljava/lang/String;)V

    const-string v2, "Context"

    const-string v3, "settings_screen"

    .line 5
    invoke-virtual {v1, v2, v3}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    const-string v2, "Setting"

    const-string v3, "BackupFrequency"

    .line 6
    invoke-virtual {v1, v2, v3}, Le/a/q2/g$b;->d(Ljava/lang/String;Ljava/lang/String;)Le/a/q2/g$b;

    const-string v2, "State"

    .line 7
    invoke-virtual {v1, v2, p1, p2}, Le/a/q2/g$b;->c(Ljava/lang/String;J)Le/a/q2/g$b;

    .line 8
    invoke-virtual {v1}, Le/a/q2/g$b;->a()Le/a/q2/g;

    move-result-object p1

    const-string p2, "AnalyticsEvent.Builder(A\u2026\n                .build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {v0, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method

.method public te()Lq3/a/p1;
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/n/b0;->b:Lq3/a/y;

    iget-object v2, p0, Le/a/n/b0;->g:Ls1/w/f;

    invoke-interface {v1, v2}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v1

    new-instance v3, Le/a/n/b0$e;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Le/a/n/b0$e;-><init>(Le/a/n/b0;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public uc(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/n/b0;->j:Le/a/b0/o/a;

    const-string v1, "backup_enabled"

    invoke-interface {v0, v1}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/n/b0;->j:Le/a/b0/o/a;

    const-string v2, "backup_videos_enabled"

    invoke-interface {v1, v2}, Le/a/b0/o/a;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-ne p1, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_2

    .line 3
    iget-object p1, p0, Le/a/n/b0;->j:Le/a/b0/o/a;

    const/4 v0, 0x0

    invoke-interface {p1, v2, v0}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    .line 4
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/n/z;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Le/a/n/z;->Ct(Z)V

    :cond_1
    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Le/a/n/b0;->j:Le/a/b0/o/a;

    invoke-interface {v0, v2, p1}, Le/a/b0/o/a;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public xh()V
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/n/b0;->g:Ls1/w/f;

    new-instance v3, Le/a/n/b0$d;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Le/a/n/b0$d;-><init>(Le/a/n/b0;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public z8(Landroidx/fragment/app/Fragment;Z)Lq3/a/n0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Z)",
            "Lq3/a/n0<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "fragment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/n/b0;->g:Ls1/w/f;

    new-instance v4, Le/a/n/b0$h;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p2, p1, v0}, Le/a/n/b0$h;-><init>(Le/a/n/b0;ZLandroidx/fragment/app/Fragment;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    return-object p1
.end method
