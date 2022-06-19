.class public final Lcom/hiya/stingray/manager/k4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/manager/k4$a;
    }
.end annotation


# static fields
.field private static final i:Ljava/text/SimpleDateFormat;

.field private static final j:J

.field public static final k:Lcom/hiya/stingray/manager/k4$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lcom/hiya/stingray/manager/e1;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lcom/hiya/stingray/manager/o2;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lcom/hiya/stingray/manager/a4;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lcom/hiya/stingray/manager/g1;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lcom/hiya/stingray/manager/u3;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/hiya/stingray/q/d/a;

.field private final h:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lcom/hiya/stingray/manager/d3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hiya/stingray/manager/k4$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/manager/k4$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/manager/k4;->k:Lcom/hiya/stingray/manager/k4$a;

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyyMMdd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/hiya/stingray/manager/k4;->i:Ljava/text/SimpleDateFormat;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/hiya/stingray/manager/k4;->j:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lh/a;Lh/a;Lh/a;Lh/a;Lh/a;Lcom/hiya/stingray/q/d/a;Lh/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lh/a<",
            "Lcom/hiya/stingray/manager/e1;",
            ">;",
            "Lh/a<",
            "Lcom/hiya/stingray/manager/o2;",
            ">;",
            "Lh/a<",
            "Lcom/hiya/stingray/manager/a4;",
            ">;",
            "Lh/a<",
            "Lcom/hiya/stingray/manager/g1;",
            ">;",
            "Lh/a<",
            "Lcom/hiya/stingray/manager/u3;",
            ">;",
            "Lcom/hiya/stingray/q/d/a;",
            "Lh/a<",
            "Lcom/hiya/stingray/manager/d3;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceUserInfoManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "selectManager"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userFlagsManager"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumManager"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commonSharedPreferences"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onBoardingManager"

    invoke-static {p8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/k4;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/k4;->b:Lh/a;

    iput-object p3, p0, Lcom/hiya/stingray/manager/k4;->c:Lh/a;

    iput-object p4, p0, Lcom/hiya/stingray/manager/k4;->d:Lh/a;

    iput-object p5, p0, Lcom/hiya/stingray/manager/k4;->e:Lh/a;

    iput-object p6, p0, Lcom/hiya/stingray/manager/k4;->f:Lh/a;

    iput-object p7, p0, Lcom/hiya/stingray/manager/k4;->g:Lcom/hiya/stingray/q/d/a;

    iput-object p8, p0, Lcom/hiya/stingray/manager/k4;->h:Lh/a;

    return-void
.end method

.method public static final synthetic a()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/manager/k4;->i:Ljava/text/SimpleDateFormat;

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/k4;->g:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->F()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/hiya/stingray/manager/k4;->i:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/hiya/stingray/manager/k4;->g:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v2}, Lcom/hiya/stingray/q/d/a;->F()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x4

    new-array v1, v1, [Lkotlin/l;

    const/4 v2, 0x0

    .line 3
    iget-object v3, p0, Lcom/hiya/stingray/manager/k4;->c:Lh/a;

    invoke-interface {v3}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hiya/stingray/manager/o2;

    invoke-static {v3}, Lcom/hiya/stingray/util/g;->c(Lcom/hiya/stingray/manager/o2;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "id_calls"

    invoke-static {v4, v3}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 4
    iget-object v3, p0, Lcom/hiya/stingray/manager/k4;->c:Lh/a;

    invoke-interface {v3}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hiya/stingray/manager/o2;

    iget-object v4, p0, Lcom/hiya/stingray/manager/k4;->a:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/hiya/stingray/util/g;->b(Lcom/hiya/stingray/manager/o2;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "block_calls"

    invoke-static {v4, v3}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 5
    invoke-static {}, Lcom/hiya/stingray/util/g;->a()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_version_code"

    invoke-static {v4, v3}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "user_properties_date"

    .line 6
    invoke-static {v3, v0}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v0

    aput-object v0, v1, v2

    .line 7
    invoke-static {v1}, Lkotlin/s/b0;->j([Lkotlin/l;)Ljava/util/Map;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/hiya/stingray/manager/k4;->f:Lh/a;

    invoke-interface {v1}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/manager/u3;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/u3;->M()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/s/b0;->l(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/hiya/stingray/manager/k4;->d:Lh/a;

    invoke-interface {v1}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/manager/a4;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/a4;->d()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/s/b0;->l(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/hiya/stingray/manager/k4;->h:Lh/a;

    invoke-interface {v1}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/hiya/stingray/manager/d3;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/d3;->h()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/s/b0;->l(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/k4;->d()V

    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/k4;->g:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/d/a;->F()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/hiya/stingray/manager/k4;->g:Lcom/hiya/stingray/q/d/a;

    invoke-virtual {v2}, Lcom/hiya/stingray/q/d/a;->F()J

    move-result-wide v2

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/hiya/stingray/manager/k4;->j:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return-void

    .line 2
    :cond_2
    iget-object v0, p0, Lcom/hiya/stingray/manager/k4;->b:Lh/a;

    invoke-interface {v0}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/manager/e1;

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/k4;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/e1;->f(Ljava/util/Map;)V

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/manager/k4;->e:Lh/a;

    invoke-interface {v0}, Lh/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/stingray/manager/g1;

    invoke-virtual {v0}, Lcom/hiya/stingray/manager/g1;->j()V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/manager/k4;->g:Lcom/hiya/stingray/q/d/a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/hiya/stingray/q/d/a;->t0(J)V

    return-void
.end method
