.class public final Le/a/h/b/d/a/a/b0;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/d/a/a/z;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/h/b/d/a/a/a0;",
        ">;",
        "Le/a/h/b/d/a/a/z;"
    }
.end annotation


# static fields
.field public static final synthetic h:[Ls1/a/l;


# instance fields
.field public final b:Le/a/h/b/d/a/a/y;

.field public c:Lcom/truecaller/calling/dialer/call_log/items/suggested/VideoCallerIdFavoriteContactVideoConfig;

.field public final d:Le/a/h/b/d/a/a/m$f;

.field public final e:Le/a/u3/g;

.field public final f:Le/a/p5/l;

.field public final g:Le/a/k/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/h/b/d/a/a/b0;

    const-string v2, "videoCallerIdOnboarding"

    const-string v3, "getVideoCallerIdOnboarding()Lcom/truecaller/calling/dialer/video_caller_id/VideoCallerIdOnboarding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/h/b/d/a/a/b0;->h:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/h/b/d/a/a/y;Le/a/h/b/d/a/a/m$f;Le/a/u3/g;Le/a/p5/l;Le/a/k/h;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "videoCallerIdOnboardingDataHolder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerIdOnboardingClickListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gsonUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerId"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p2, p0, Le/a/h/b/d/a/a/b0;->d:Le/a/h/b/d/a/a/m$f;

    iput-object p3, p0, Le/a/h/b/d/a/a/b0;->e:Le/a/u3/g;

    iput-object p4, p0, Le/a/h/b/d/a/a/b0;->f:Le/a/p5/l;

    iput-object p5, p0, Le/a/h/b/d/a/a/b0;->g:Le/a/k/h;

    .line 2
    iput-object p1, p0, Le/a/h/b/d/a/a/b0;->b:Le/a/h/b/d/a/a/y;

    return-void
.end method


# virtual methods
.method public final A()Le/a/h/b/z0/a;
    .locals 3

    iget-object v0, p0, Le/a/h/b/d/a/a/b0;->b:Le/a/h/b/d/a/a/y;

    sget-object v1, Le/a/h/b/d/a/a/b0;->h:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Le/a/h/b/d/a/a/y;->S4(Le/a/h/b/d/a/a/z;Ls1/a/l;)Le/a/h/b/z0/a;

    move-result-object v0

    return-object v0
.end method

.method public final B()Lcom/truecaller/calling/dialer/call_log/items/suggested/VideoCallerIdFavoriteContactVideoConfig;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/b0;->c:Lcom/truecaller/calling/dialer/call_log/items/suggested/VideoCallerIdFavoriteContactVideoConfig;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/h/b/d/a/a/b0;->e:Le/a/u3/g;

    .line 3
    iget-object v1, v0, Le/a/u3/g;->X5:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x16f

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 4
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 6
    :try_start_0
    iget-object v1, p0, Le/a/h/b/d/a/a/b0;->f:Le/a/p5/l;

    const-class v2, Lcom/truecaller/calling/dialer/call_log/items/suggested/VideoCallerIdFavoriteContactVideoConfig;

    invoke-interface {v1, v0, v2}, Le/a/p5/l;->b(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/calling/dialer/call_log/items/suggested/VideoCallerIdFavoriteContactVideoConfig;

    if-eqz v0, :cond_2

    .line 7
    iput-object v0, p0, Le/a/h/b/d/a/a/b0;->c:Lcom/truecaller/calling/dialer/call_log/items/suggested/VideoCallerIdFavoriteContactVideoConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 8
    invoke-static {v0}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 9
    :cond_2
    :goto_1
    iget-object v0, p0, Le/a/h/b/d/a/a/b0;->c:Lcom/truecaller/calling/dialer/call_log/items/suggested/VideoCallerIdFavoriteContactVideoConfig;

    return-object v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Le/a/h/b/d/a/a/a0;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Le/a/h/b/d/a/a/b0;->A()Le/a/h/b/z0/a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 4
    sget-object v1, Le/a/i5/a;->g:Le/a/i5/a;

    invoke-static {}, Le/a/i5/a;->a()Le/a/i5/d;

    move-result-object v1

    .line 5
    instance-of v2, v1, Le/a/i5/d$c;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    instance-of v2, v1, Le/a/i5/d$a;

    if-eqz v2, :cond_1

    :goto_0
    invoke-virtual {p0}, Le/a/h/b/d/a/a/b0;->B()Lcom/truecaller/calling/dialer/call_log/items/suggested/VideoCallerIdFavoriteContactVideoConfig;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/truecaller/calling/dialer/call_log/items/suggested/VideoCallerIdFavoriteContactVideoConfig;->getUrlLight()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 7
    :cond_1
    instance-of v2, v1, Le/a/i5/d$d;

    if-eqz v2, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    instance-of v1, v1, Le/a/i5/d$b;

    if-eqz v1, :cond_5

    :goto_1
    invoke-virtual {p0}, Le/a/h/b/d/a/a/b0;->B()Lcom/truecaller/calling/dialer/call_log/items/suggested/VideoCallerIdFavoriteContactVideoConfig;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/truecaller/calling/dialer/call_log/items/suggested/VideoCallerIdFavoriteContactVideoConfig;->getUrlDark()Ljava/lang/String;

    move-result-object v3

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 9
    iget-object v1, p0, Le/a/h/b/d/a/a/b0;->g:Le/a/k/h;

    invoke-interface {v1, v3}, Le/a/k/h;->q(Ljava/lang/String;)Le/m/a/c/l1/p;

    move-result-object v1

    .line 10
    invoke-interface {p1, v1}, Le/a/h/b/d/a/a/a0;->S1(Le/m/a/c/l1/p;)V

    .line 11
    :cond_4
    iget-object v0, v0, Le/a/h/b/z0/a;->a:Ljava/lang/String;

    .line 12
    invoke-interface {p1, v0}, Le/a/h/b/d/a/a/a0;->setTitle(Ljava/lang/String;)V

    goto :goto_3

    .line 13
    :cond_5
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/a/b0;->A()Le/a/h/b/z0/a;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/h/b/d/a/a/b0;->A()Le/a/h/b/z0/a;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le/a/h/b/z0/a;->hashCode()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    int-to-long v0, p1

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 4

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/o2/h;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x67eccfc0

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, -0x4e5b1355    # -4.7999342E-9f

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "ItemEvent.LONG_CLICKED"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object p1, p1, Le/a/o2/h;->d:Landroid/view/View;

    .line 5
    iget-object v0, p0, Le/a/h/b/d/a/a/b0;->d:Le/a/h/b/d/a/a/m$f;

    invoke-interface {v0, p1}, Le/a/h/b/d/a/a/m$f;->T7(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    const-string p1, "ItemEvent.CLICKED"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Le/a/h/b/d/a/a/b0;->d:Le/a/h/b/d/a/a/m$f;

    invoke-interface {p1}, Le/a/h/b/d/a/a/m$f;->ra()V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x0

    :goto_1
    return v3
.end method

.method public y(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/h/b/d/a/a/a0;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Le/a/h/b/d/a/a/b0;->A()Le/a/h/b/z0/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {p1}, Le/a/h/b/d/a/a/a0;->g1()V

    :cond_0
    return-void
.end method
