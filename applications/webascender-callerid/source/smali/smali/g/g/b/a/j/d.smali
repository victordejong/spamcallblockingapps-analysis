.class public final Lg/g/b/a/j/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/b/a/j/c;


# instance fields
.field private final a:Lcom/hiya/client/callerid/dao/c;

.field private final b:Lg/g/a/a/h/g;

.field private final c:Lcom/hiya/client/callerid/dao/r;

.field private final d:Lg/g/b/a/g/a/b;


# direct methods
.method public constructor <init>(Lcom/hiya/client/callerid/dao/c;Lg/g/a/a/h/g;Lcom/hiya/client/callerid/dao/r;Lg/g/b/a/g/a/b;)V
    .locals 1

    const-string v0, "callerIdDao"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userInfoDao"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overrideDao"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overrideMapper"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/b/a/j/d;->a:Lcom/hiya/client/callerid/dao/c;

    iput-object p2, p0, Lg/g/b/a/j/d;->b:Lg/g/a/a/h/g;

    iput-object p3, p0, Lg/g/b/a/j/d;->c:Lcom/hiya/client/callerid/dao/r;

    iput-object p4, p0, Lg/g/b/a/j/d;->d:Lg/g/b/a/g/a/b;

    return-void
.end method

.method public static final synthetic c(Lg/g/b/a/j/d;)Lcom/hiya/client/callerid/dao/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/a/j/d;->a:Lcom/hiya/client/callerid/dao/c;

    return-object p0
.end method

.method public static final synthetic d(Lg/g/b/a/j/d;)Lg/g/b/a/g/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/a/j/d;->d:Lg/g/b/a/g/a/b;

    return-object p0
.end method


# virtual methods
.method public a(Lg/g/b/c/j;ZZ)Li/c/b0/b/e0;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/b/c/j;",
            "ZZ)",
            "Li/c/b0/b/e0<",
            "Lg/g/b/c/f;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    const-string v1, "eventData"

    invoke-static {v12, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, v0, Lg/g/b/a/j/d;->b:Lg/g/a/a/h/g;

    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/g/a/a/h/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    if-eqz v14, :cond_0

    .line 2
    iget-object v11, v0, Lg/g/b/a/j/d;->a:Lcom/hiya/client/callerid/dao/c;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x6f

    const/16 v16, 0x0

    move-object/from16 v1, p1

    move-object v6, v15

    move-object v12, v11

    move-object/from16 v11, v16

    .line 3
    invoke-static/range {v1 .. v11}, Lg/g/b/c/j;->b(Lg/g/b/c/j;ZLg/g/b/c/l;Lg/g/b/c/k;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/t;ILjava/lang/Object;)Lg/g/b/c/j;

    move-result-object v1

    .line 4
    invoke-interface {v12, v1, v13}, Lcom/hiya/client/callerid/dao/c;->f(Lg/g/b/c/j;Z)Li/c/b0/b/e0;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Li/c/b0/b/e0;->J()Li/c/b0/b/p;

    move-result-object v1

    const-string v2, "callerIdDao.getEventCall\u2026              ).toMaybe()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v2, v0, Lg/g/b/a/j/d;->c:Lcom/hiya/client/callerid/dao/r;

    invoke-virtual/range {p1 .. p1}, Lg/g/b/c/j;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v15}, Lcom/hiya/client/callerid/dao/r;->f(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/p;

    move-result-object v2

    .line 7
    invoke-virtual {v0, v1, v2}, Lg/g/b/a/j/d;->e(Li/c/b0/b/p;Li/c/b0/b/p;)Li/c/b0/b/p;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Li/c/b0/b/p;->y()Li/c/b0/b/e0;

    move-result-object v1

    .line 9
    new-instance v2, Lg/g/b/a/j/d$a;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v14, v3, v13}, Lg/g/b/a/j/d$a;-><init>(Lg/g/b/a/j/d;ZLg/g/b/c/j;Z)V

    invoke-virtual {v1, v2}, Li/c/b0/b/e0;->x(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object v1

    const-string v2, "getLocalOverrideCallerId\u2026(eventData.phoneNumber) }"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v3, v12

    .line 10
    iget-object v12, v0, Lg/g/b/a/j/d;->a:Lcom/hiya/client/callerid/dao/c;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x6f

    const/4 v11, 0x0

    move-object/from16 v1, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v15

    .line 11
    invoke-static/range {v1 .. v11}, Lg/g/b/c/j;->b(Lg/g/b/c/j;ZLg/g/b/c/l;Lg/g/b/c/k;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/t;ILjava/lang/Object;)Lg/g/b/c/j;

    move-result-object v1

    .line 12
    invoke-interface {v12, v1, v13}, Lcom/hiya/client/callerid/dao/c;->f(Lg/g/b/c/j;Z)Li/c/b0/b/e0;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Z)Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Li/c/b0/b/p<",
            "Lg/g/b/c/f;",
            ">;"
        }
    .end annotation

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryHint"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/b/a/j/d;->b:Lg/g/a/a/h/g;

    invoke-virtual {v0, p2}, Lg/g/a/a/h/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 2
    iget-object p3, p0, Lg/g/b/a/j/d;->a:Lcom/hiya/client/callerid/dao/c;

    invoke-interface {p3, p1, p2}, Lcom/hiya/client/callerid/dao/c;->d(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/p;

    move-result-object p3

    .line 3
    iget-object v0, p0, Lg/g/b/a/j/d;->c:Lcom/hiya/client/callerid/dao/r;

    invoke-virtual {v0, p1, p2}, Lcom/hiya/client/callerid/dao/r;->f(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/p;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p3, p1}, Lg/g/b/a/j/d;->e(Li/c/b0/b/p;Li/c/b0/b/p;)Li/c/b0/b/p;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p3, p0, Lg/g/b/a/j/d;->a:Lcom/hiya/client/callerid/dao/c;

    invoke-interface {p3, p1, p2}, Lcom/hiya/client/callerid/dao/c;->d(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/p;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final e(Li/c/b0/b/p;Li/c/b0/b/p;)Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/p<",
            "Lg/g/b/c/f;",
            ">;",
            "Li/c/b0/b/p<",
            "Lg/g/b/c/m;",
            ">;)",
            "Li/c/b0/b/p<",
            "Lg/g/b/c/f;",
            ">;"
        }
    .end annotation

    const-string v0, "cIdMaybe"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localIdMaybe"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Li/c/b0/b/p;->x()Li/c/b0/b/v;

    move-result-object p1

    invoke-virtual {p1}, Li/c/b0/b/v;->materialize()Li/c/b0/b/v;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Li/c/b0/b/p;->x()Li/c/b0/b/v;

    move-result-object p2

    invoke-virtual {p2}, Li/c/b0/b/v;->materialize()Li/c/b0/b/v;

    move-result-object p2

    .line 3
    new-instance v0, Lg/g/b/a/j/d$b;

    invoke-direct {v0, p0}, Lg/g/b/a/j/d$b;-><init>(Lg/g/b/a/j/d;)V

    .line 4
    invoke-static {p1, p2, v0}, Li/c/b0/b/v;->zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;

    move-result-object p1

    .line 5
    sget-object p2, Lg/g/b/a/j/d$c;->f:Lg/g/b/a/j/d$c;

    invoke-virtual {p1, p2}, Li/c/b0/b/v;->filter(Li/c/b0/d/p;)Li/c/b0/b/v;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Li/c/b0/b/v;->firstElement()Li/c/b0/b/p;

    move-result-object p1

    const-string p2, "Observable.zip(cIdMaybe.\u2026\n        }.firstElement()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
