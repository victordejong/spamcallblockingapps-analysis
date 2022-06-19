.class public Lcom/hiya/stingray/manager/g1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/manager/g1$c;,
        Lcom/hiya/stingray/manager/g1$b;,
        Lcom/hiya/stingray/manager/g1$a;
    }
.end annotation


# static fields
.field public static final j:Lcom/hiya/stingray/manager/g1$a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/manager/e1;

.field private final c:Lcom/hiya/stingray/q/d/f;

.field private final d:Lcom/hiya/stingray/manager/u3;

.field private final e:Lcom/hiya/stingray/util/a0;

.field private final f:Lcom/hiya/stingray/manager/b3;

.field private final g:Lcom/hiya/stingray/manager/v3;

.field private final h:Lcom/hiya/stingray/manager/s1;

.field private final i:Lcom/hiya/stingray/manager/j2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/hiya/stingray/manager/g1$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/hiya/stingray/manager/g1$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lcom/hiya/stingray/manager/g1;->j:Lcom/hiya/stingray/manager/g1$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/q/d/f;Lcom/hiya/stingray/manager/u3;Lcom/hiya/stingray/util/a0;Lcom/hiya/stingray/manager/b3;Lcom/hiya/stingray/manager/v3;Lcom/hiya/stingray/manager/s1;Lcom/hiya/stingray/manager/j2;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userSharedPreferences"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumManager"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rxEventBus"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationsManager"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "promoPremiumManager"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callScreeningServiceManager"

    invoke-static {p8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultDialerManager"

    invoke-static {p9, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/g1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/stingray/manager/g1;->b:Lcom/hiya/stingray/manager/e1;

    iput-object p3, p0, Lcom/hiya/stingray/manager/g1;->c:Lcom/hiya/stingray/q/d/f;

    iput-object p4, p0, Lcom/hiya/stingray/manager/g1;->d:Lcom/hiya/stingray/manager/u3;

    iput-object p5, p0, Lcom/hiya/stingray/manager/g1;->e:Lcom/hiya/stingray/util/a0;

    iput-object p6, p0, Lcom/hiya/stingray/manager/g1;->f:Lcom/hiya/stingray/manager/b3;

    iput-object p7, p0, Lcom/hiya/stingray/manager/g1;->g:Lcom/hiya/stingray/manager/v3;

    iput-object p8, p0, Lcom/hiya/stingray/manager/g1;->h:Lcom/hiya/stingray/manager/s1;

    iput-object p9, p0, Lcom/hiya/stingray/manager/g1;->i:Lcom/hiya/stingray/manager/j2;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/manager/g1;)Lcom/hiya/stingray/manager/s1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/g1;->h:Lcom/hiya/stingray/manager/s1;

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/stingray/manager/g1;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/g1;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic c(Lcom/hiya/stingray/manager/g1;)Lcom/hiya/stingray/manager/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/g1;->i:Lcom/hiya/stingray/manager/j2;

    return-object p0
.end method

.method public static final synthetic d(Lcom/hiya/stingray/manager/g1;)Lcom/hiya/stingray/manager/b3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/g1;->f:Lcom/hiya/stingray/manager/b3;

    return-object p0
.end method

.method public static final synthetic e(Lcom/hiya/stingray/manager/g1;)Lcom/hiya/stingray/manager/u3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/g1;->d:Lcom/hiya/stingray/manager/u3;

    return-object p0
.end method

.method public static final synthetic f(Lcom/hiya/stingray/manager/g1;)Lcom/hiya/stingray/manager/v3;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/g1;->g:Lcom/hiya/stingray/manager/v3;

    return-object p0
.end method

.method public static final synthetic g(Lcom/hiya/stingray/manager/g1;)Lcom/hiya/stingray/q/d/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/g1;->c:Lcom/hiya/stingray/q/d/f;

    return-object p0
.end method


# virtual methods
.method public h()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/hiya/stingray/manager/g1;->j:Lcom/hiya/stingray/manager/g1$a;

    sget-object v2, Lcom/hiya/stingray/manager/g1$c;->CALL_SCREENER_ENABLED:Lcom/hiya/stingray/manager/g1$c;

    new-instance v3, Lcom/hiya/stingray/manager/g1$d;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/manager/g1$d;-><init>(Lcom/hiya/stingray/manager/g1;)V

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Lcom/hiya/stingray/manager/g1$a;->a(Lcom/hiya/stingray/manager/g1$a;Lcom/hiya/stingray/manager/g1$c;ZLkotlin/w/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hiya/stingray/manager/g1$c;->PREMIUM_ACTIVE:Lcom/hiya/stingray/manager/g1$c;

    new-instance v3, Lcom/hiya/stingray/manager/g1$e;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/manager/g1$e;-><init>(Lcom/hiya/stingray/manager/g1;)V

    invoke-static {v1, v0, v4, v3}, Lcom/hiya/stingray/manager/g1$a;->a(Lcom/hiya/stingray/manager/g1$a;Lcom/hiya/stingray/manager/g1$c;ZLkotlin/w/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hiya/stingray/manager/g1$c;->CONTACT_PERMISSION_GRANTED:Lcom/hiya/stingray/manager/g1$c;

    new-instance v3, Lcom/hiya/stingray/manager/g1$f;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/manager/g1$f;-><init>(Lcom/hiya/stingray/manager/g1;)V

    invoke-static {v1, v0, v4, v3}, Lcom/hiya/stingray/manager/g1$a;->a(Lcom/hiya/stingray/manager/g1$a;Lcom/hiya/stingray/manager/g1$c;ZLkotlin/w/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hiya/stingray/manager/g1$c;->DEFAULT_DIALER:Lcom/hiya/stingray/manager/g1$c;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x0

    const/16 v6, 0x17

    if-lt v3, v6, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-instance v6, Lcom/hiya/stingray/manager/g1$g;

    invoke-direct {v6, p0}, Lcom/hiya/stingray/manager/g1$g;-><init>(Lcom/hiya/stingray/manager/g1;)V

    invoke-static {v1, v0, v3, v6}, Lcom/hiya/stingray/manager/g1$a;->a(Lcom/hiya/stingray/manager/g1$a;Lcom/hiya/stingray/manager/g1$c;ZLkotlin/w/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hiya/stingray/manager/g1$c;->NON_CONTACTS_BLOCKING:Lcom/hiya/stingray/manager/g1$c;

    new-instance v3, Lcom/hiya/stingray/manager/g1$h;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/manager/g1$h;-><init>(Lcom/hiya/stingray/manager/g1;)V

    invoke-static {v1, v0, v5, v3}, Lcom/hiya/stingray/manager/g1$a;->a(Lcom/hiya/stingray/manager/g1$a;Lcom/hiya/stingray/manager/g1$c;ZLkotlin/w/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hiya/stingray/manager/g1$c;->PROMO_PREMIUM:Lcom/hiya/stingray/manager/g1$c;

    iget-object v3, p0, Lcom/hiya/stingray/manager/g1;->g:Lcom/hiya/stingray/manager/v3;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/v3;->l()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/hiya/stingray/manager/g1;->g:Lcom/hiya/stingray/manager/v3;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/v3;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_1
    new-instance v3, Lcom/hiya/stingray/manager/g1$i;

    invoke-direct {v3, p0}, Lcom/hiya/stingray/manager/g1$i;-><init>(Lcom/hiya/stingray/manager/g1;)V

    invoke-static {v1, v0, v4, v3}, Lcom/hiya/stingray/manager/g1$a;->a(Lcom/hiya/stingray/manager/g1$a;Lcom/hiya/stingray/manager/g1$c;ZLkotlin/w/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hiya/stingray/manager/g1$c;->CALL_SCREENING_SERVICE:Lcom/hiya/stingray/manager/g1$c;

    iget-object v3, p0, Lcom/hiya/stingray/manager/g1;->h:Lcom/hiya/stingray/manager/s1;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/s1;->d()Z

    move-result v3

    new-instance v4, Lcom/hiya/stingray/manager/g1$j;

    invoke-direct {v4, p0}, Lcom/hiya/stingray/manager/g1$j;-><init>(Lcom/hiya/stingray/manager/g1;)V

    invoke-static {v1, v0, v3, v4}, Lcom/hiya/stingray/manager/g1$a;->a(Lcom/hiya/stingray/manager/g1$a;Lcom/hiya/stingray/manager/g1$c;ZLkotlin/w/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/hiya/stingray/manager/g1$c;->CALLER_ID_STYLE_FULLSCREEN:Lcom/hiya/stingray/manager/g1$c;

    iget-object v3, p0, Lcom/hiya/stingray/manager/g1;->i:Lcom/hiya/stingray/manager/j2;

    invoke-virtual {v3}, Lcom/hiya/stingray/manager/j2;->d()Z

    move-result v3

    new-instance v4, Lcom/hiya/stingray/manager/g1$k;

    invoke-direct {v4, p0}, Lcom/hiya/stingray/manager/g1$k;-><init>(Lcom/hiya/stingray/manager/g1;)V

    invoke-static {v1, v0, v3, v4}, Lcom/hiya/stingray/manager/g1$a;->a(Lcom/hiya/stingray/manager/g1$a;Lcom/hiya/stingray/manager/g1$c;ZLkotlin/w/b/a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/g1;->e:Lcom/hiya/stingray/util/a0;

    .line 2
    const-class v1, Lcom/hiya/stingray/manager/u3$h;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/hiya/stingray/manager/g1$l;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/g1$l;-><init>(Lcom/hiya/stingray/manager/g1;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    .line 5
    iget-object v0, p0, Lcom/hiya/stingray/manager/g1;->e:Lcom/hiya/stingray/util/a0;

    .line 6
    const-class v1, Lcom/hiya/stingray/manager/g1$b;

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/hiya/stingray/manager/g1$m;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/manager/g1$m;-><init>(Lcom/hiya/stingray/manager/g1;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;)Li/c/b0/c/c;

    .line 9
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/g1;->j()V

    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/g1;->b:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {p0}, Lcom/hiya/stingray/manager/g1;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "user_flags"

    invoke-static {v2, v1}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v1

    invoke-static {v1}, Lkotlin/s/b0;->c(Lkotlin/l;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/e1;->f(Ljava/util/Map;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/g1;->k()V

    return-void
.end method

.method public k()V
    .locals 8

    .line 1
    new-instance v0, Lkotlin/w/c/q;

    invoke-direct {v0}, Lkotlin/w/c/q;-><init>()V

    const-string v1, "_"

    iput-object v1, v0, Lkotlin/w/c/q;->f:Ljava/lang/Object;

    .line 2
    sget-object v1, Lcom/hiya/stingray/manager/b3;->c:Lcom/hiya/stingray/manager/b3$b;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/b3$b;->a()Ljava/util/ArrayList;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hiya/stingray/manager/b3$c;

    .line 4
    iget-object v3, v0, Lkotlin/w/c/q;->f:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/hiya/stingray/manager/g1;->j:Lcom/hiya/stingray/manager/g1$a;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/hiya/stingray/manager/g1$c;->NOTIFICATIONS_CHANNELS:Lcom/hiya/stingray/manager/g1$c;

    invoke-virtual {v6}, Lcom/hiya/stingray/manager/g1$c;->getCharacter()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/hiya/stingray/manager/b3$c;->a()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/hiya/stingray/manager/g1;->f:Lcom/hiya/stingray/manager/b3;

    invoke-virtual {v6}, Lcom/hiya/stingray/manager/b3;->c()Z

    move-result v6

    new-instance v7, Lcom/hiya/stingray/manager/g1$n;

    invoke-direct {v7, v2, p0, v0}, Lcom/hiya/stingray/manager/g1$n;-><init>(Lcom/hiya/stingray/manager/b3$c;Lcom/hiya/stingray/manager/g1;Lkotlin/w/c/q;)V

    invoke-static {v3, v5, v6, v7}, Lcom/hiya/stingray/manager/g1$a;->b(Lcom/hiya/stingray/manager/g1$a;Ljava/lang/String;ZLkotlin/w/b/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lkotlin/w/c/q;->f:Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/hiya/stingray/manager/g1;->b:Lcom/hiya/stingray/manager/e1;

    iget-object v0, v0, Lkotlin/w/c/q;->f:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v2, "notifications_channels"

    invoke-static {v2, v0}, Lkotlin/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/l;

    move-result-object v0

    invoke-static {v0}, Lkotlin/s/b0;->c(Lkotlin/l;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/hiya/stingray/manager/e1;->f(Ljava/util/Map;)V

    return-void
.end method
