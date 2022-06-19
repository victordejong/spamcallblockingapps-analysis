.class public final Le/a/k/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/j;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/k3/j/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ls1/w/f;

.field public final c:Le/a/b0/a/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/b0/a/b/b<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/h/b/w0/d;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/o5/r;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/y2/q/a;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Landroid/content/Context;

.field public final h:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/d3/d;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Lcom/truecaller/calling/initiate_call/InitiateCallHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo3/a;Ls1/w/f;Le/a/b0/a/b/b;Lo3/a;Lo3/a;Lo3/a;Landroid/content/Context;Lo3/a;Lo3/a;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/k3/j/b;",
            ">;",
            "Ls1/w/f;",
            "Le/a/b0/a/b/b<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;",
            "Lo3/a<",
            "Le/a/h/b/w0/d;",
            ">;",
            "Lo3/a<",
            "Le/a/o5/r;",
            ">;",
            "Lo3/a<",
            "Le/a/y2/q/a;",
            ">;",
            "Landroid/content/Context;",
            "Lo3/a<",
            "Le/a/d3/d;",
            ">;",
            "Lo3/a<",
            "Lcom/truecaller/calling/initiate_call/InitiateCallHelper;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "aggregatedContactDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarXConfigProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suggestedContact"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactManagerSync"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workTrigger"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessCardManager"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initiateCallHelper"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/k;->a:Lo3/a;

    iput-object p2, p0, Le/a/k/k;->b:Ls1/w/f;

    iput-object p3, p0, Le/a/k/k;->c:Le/a/b0/a/b/b;

    iput-object p4, p0, Le/a/k/k;->d:Lo3/a;

    iput-object p5, p0, Le/a/k/k;->e:Lo3/a;

    iput-object p6, p0, Le/a/k/k;->f:Lo3/a;

    iput-object p7, p0, Le/a/k/k;->g:Landroid/content/Context;

    iput-object p8, p0, Le/a/k/k;->h:Lo3/a;

    iput-object p9, p0, Le/a/k/k;->i:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/Contact;Ls1/z/b/l;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
            "Lcom/truecaller/common/ui/avatar/AvatarXConfig;",
            ">;)",
            "Lcom/truecaller/common/ui/avatar/AvatarXConfig;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "avatarXConfigModifier"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    move-object/from16 v2, p0

    .line 1
    iget-object v3, v2, Le/a/k/k;->c:Le/a/b0/a/b/b;

    invoke-interface {v3, v0}, Le/a/b0/a/b/b;->a(Ljava/lang/Object;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    .line 2
    new-instance v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const v20, 0xffff

    invoke-direct/range {v3 .. v20}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    .line 3
    :goto_0
    invoke-interface {v1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    return-object v0
.end method

.method public b(Lcom/truecaller/data/entity/Contact;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/profile/data/dto/MediaCallerIDs;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "contact"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, v0, Lcom/truecaller/data/entity/Contact;->u:Lcom/truecaller/data/entity/Business;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Business;->getMediaCallerIDs()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, "|"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, v2, v3}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [Ljava/lang/String;

    .line 5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 6
    array-length v6, v4

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v0, v4, v7

    .line 7
    invoke-static {v0}, Lw3/c/a/a/a/h;->i(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    const-string v8, ";"

    .line 8
    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v2, v2, v3}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v0

    new-array v8, v2, [Ljava/lang/String;

    .line 9
    invoke-interface {v0, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    check-cast v0, [Ljava/lang/String;

    .line 11
    array-length v8, v0

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    .line 12
    :try_start_0
    aget-object v8, v0, v2

    const-string v9, "UTF-8"

    invoke-static {v8, v9}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/4 v8, 0x1

    .line 13
    aget-object v12, v0, v8

    const/4 v8, 0x2

    .line 14
    aget-object v13, v0, v8

    const/4 v8, 0x3

    .line 15
    aget-object v0, v0, v8

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 16
    new-instance v0, Lcom/truecaller/profile/data/dto/MediaCallerIDs;

    const-string v8, "url"

    invoke-static {v11, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/truecaller/profile/data/dto/MediaCallerIDs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 17
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 18
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 19
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_3
    move-exception v0

    .line 20
    invoke-static {v0}, Lcom/truecaller/log/AssertionUtil;->reportThrowableButNeverCrash(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 21
    :cond_2
    sget-object v5, Ls1/u/s;->a:Ls1/u/s;

    :cond_3
    return-object v5
.end method

.method public c(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/data/entity/Contact;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/k/k;->b:Ls1/w/f;

    new-instance v1, Le/a/k/k$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/k/k$a;-><init>(Le/a/k/k;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "normalizedNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/k/k;->e:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/o5/r;

    new-instance v1, Lcom/truecaller/data/entity/Number;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v1, p1, v2}, Lcom/truecaller/data/entity/Number;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-interface {v0, v1}, Le/a/o5/r;->d(Lcom/truecaller/data/entity/Number;)Z

    move-result p1

    return p1
.end method

.method public e()V
    .locals 6

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    .line 3
    sget-object v1, Ln3/m0/h;->a:Ln3/m0/h;

    .line 4
    new-instance v2, Ln3/m0/r$a;

    const-class v3, Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;

    invoke-direct {v2, v3}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 5
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5, v3}, Ln3/m0/z$a;->f(JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;

    move-result-object v2

    check-cast v2, Ln3/m0/r$a;

    .line 6
    new-instance v3, Ln3/m0/d$a;

    invoke-direct {v3}, Ln3/m0/d$a;-><init>()V

    sget-object v4, Ln3/m0/q;->b:Ln3/m0/q;

    .line 7
    iput-object v4, v3, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 8
    new-instance v4, Ln3/m0/d;

    invoke-direct {v4, v3}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 9
    iget-object v3, v2, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v4, v3, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 10
    invoke-virtual {v2}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v2

    check-cast v2, Ln3/m0/r;

    const-string v3, "BusinessCardBackgroundWorker"

    .line 11
    invoke-virtual {v0, v3, v1, v2}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void
.end method
