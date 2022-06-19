.class public final Lg/g/b/a/j/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/b/a/j/n;


# instance fields
.field private final a:Lcom/hiya/client/callerid/dao/c;

.field private final b:Lcom/hiya/client/callerid/dao/r;

.field private final c:Lg/g/a/a/h/g;

.field private final d:Lg/g/b/a/g/a/g;

.field private final e:Lg/g/a/a/g/h/c;

.field private final f:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lg/g/b/d/g/a;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/hiya/client/callerid/dao/w;

.field private final h:Lg/g/b/b/d/e;


# direct methods
.method public constructor <init>(Lcom/hiya/client/callerid/dao/c;Lcom/hiya/client/callerid/dao/r;Lg/g/a/a/h/g;Lg/g/b/a/g/a/g;Lg/g/a/a/g/h/c;Lh/a;Lcom/hiya/client/callerid/dao/w;Lg/g/b/b/d/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/client/callerid/dao/c;",
            "Lcom/hiya/client/callerid/dao/r;",
            "Lg/g/a/a/h/g;",
            "Lg/g/b/a/g/a/g;",
            "Lg/g/a/a/g/h/c;",
            "Lh/a<",
            "Lg/g/b/d/g/a;",
            ">;",
            "Lcom/hiya/client/callerid/dao/w;",
            "Lg/g/b/b/d/e;",
            ")V"
        }
    .end annotation

    const-string v0, "callerIdDao"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "overrideDao"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userInfoDao"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userInputMapper"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ingestionApi"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repostManager"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reportCategoriesDao"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postEventDataOp"

    invoke-static {p8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/b/a/j/o;->a:Lcom/hiya/client/callerid/dao/c;

    iput-object p2, p0, Lg/g/b/a/j/o;->b:Lcom/hiya/client/callerid/dao/r;

    iput-object p3, p0, Lg/g/b/a/j/o;->c:Lg/g/a/a/h/g;

    iput-object p4, p0, Lg/g/b/a/j/o;->d:Lg/g/b/a/g/a/g;

    iput-object p5, p0, Lg/g/b/a/j/o;->e:Lg/g/a/a/g/h/c;

    iput-object p6, p0, Lg/g/b/a/j/o;->f:Lh/a;

    iput-object p7, p0, Lg/g/b/a/j/o;->g:Lcom/hiya/client/callerid/dao/w;

    iput-object p8, p0, Lg/g/b/a/j/o;->h:Lg/g/b/b/d/e;

    return-void
.end method

.method public static final synthetic b(Lg/g/b/a/j/o;)Lg/g/a/a/g/h/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/a/j/o;->e:Lg/g/a/a/g/h/c;

    return-object p0
.end method

.method public static final synthetic c(Lg/g/b/a/j/o;)Lcom/hiya/client/callerid/dao/r;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/a/j/o;->b:Lcom/hiya/client/callerid/dao/r;

    return-object p0
.end method

.method public static final synthetic d(Lg/g/b/a/j/o;)Lg/g/b/b/d/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/a/j/o;->h:Lg/g/b/b/d/e;

    return-object p0
.end method

.method public static final synthetic e(Lg/g/b/a/j/o;)Lh/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/a/j/o;->f:Lh/a;

    return-object p0
.end method

.method public static final synthetic f(Lg/g/b/a/j/o;)Lg/g/b/a/g/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/a/j/o;->d:Lg/g/b/a/g/a/g;

    return-object p0
.end method

.method public static final synthetic g(Lg/g/b/a/j/o;Ljava/lang/String;Ljava/lang/String;ILg/g/b/a/j/m;Lg/g/a/a/i/o/y;)Li/c/b0/b/e;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lg/g/b/a/j/o;->h(Ljava/lang/String;Ljava/lang/String;ILg/g/b/a/j/m;Lg/g/a/a/i/o/y;)Li/c/b0/b/e;

    move-result-object p0

    return-object p0
.end method

.method private final h(Ljava/lang/String;Ljava/lang/String;ILg/g/b/a/j/m;Lg/g/a/a/i/o/y;)Li/c/b0/b/e;
    .locals 9

    .line 1
    iget-object v0, p0, Lg/g/b/a/j/o;->g:Lcom/hiya/client/callerid/dao/w;

    .line 2
    invoke-virtual {p4}, Lg/g/b/a/j/m;->a()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p3, v1}, Lcom/hiya/client/callerid/dao/w;->e(ILjava/lang/String;)Li/c/b0/b/e0;

    move-result-object v0

    .line 4
    sget-object v1, Lg/g/b/a/j/o$a;->f:Lg/g/b/a/j/o$a;

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object v0

    .line 5
    new-instance v1, Lg/g/b/a/j/o$b;

    invoke-direct {v1, p3}, Lg/g/b/a/j/o$b;-><init>(I)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->x(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object v0

    .line 6
    new-instance v8, Lg/g/b/a/j/o$c;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lg/g/b/a/j/o$c;-><init>(Lg/g/b/a/j/o;Ljava/lang/String;Ljava/lang/String;Lg/g/b/a/j/m;ILg/g/a/a/i/o/y;)V

    invoke-virtual {v0, v8}, Li/c/b0/b/e0;->n(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object p1

    const-string p2, "reportCategoriesDao.getR\u2026          )\n            }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ILg/g/b/a/j/m;Lg/g/b/c/n;Lg/g/a/a/i/o/u;)Li/c/b0/b/e;
    .locals 39

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    const-string v0, "phone"

    invoke-static {v10, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "countryHint"

    invoke-static {v11, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v8, Lg/g/b/c/m;

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const/4 v6, -0x1

    const-string v7, ""

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lg/g/b/c/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 2
    new-instance v7, Lg/g/b/c/f;

    move-object v12, v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const v37, 0x3fffff

    const/16 v38, 0x0

    invoke-direct/range {v12 .. v38}, Lg/g/b/c/f;-><init>(Lg/g/b/c/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/q;Lg/g/b/c/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/e;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/r;JLjava/lang/String;Lg/g/b/c/h;ZILkotlin/w/c/g;)V

    .line 3
    iget-object v0, v9, Lg/g/b/a/j/o;->b:Lcom/hiya/client/callerid/dao/r;

    invoke-virtual {v0, v10, v11}, Lcom/hiya/client/callerid/dao/r;->f(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/p;

    move-result-object v0

    invoke-virtual {v0, v8}, Li/c/b0/b/p;->f(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Li/c/b0/b/e0;->K()Li/c/b0/b/v;

    move-result-object v0

    .line 5
    iget-object v1, v9, Lg/g/b/a/j/o;->a:Lcom/hiya/client/callerid/dao/c;

    invoke-interface {v1, v10, v11}, Lcom/hiya/client/callerid/dao/c;->d(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/p;

    move-result-object v1

    invoke-virtual {v1, v7}, Li/c/b0/b/p;->f(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Li/c/b0/b/e0;->K()Li/c/b0/b/v;

    move-result-object v1

    .line 7
    iget-object v2, v9, Lg/g/b/a/j/o;->c:Lg/g/a/a/h/g;

    invoke-virtual {v2}, Lg/g/a/a/h/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v11, v2}, Lg/g/b/a/k/j;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lg/g/a/a/i/h;

    move-result-object v2

    if-nez v2, :cond_0

    .line 8
    invoke-static {}, Lg/g/b/a/j/q;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "phoneNumber cannot be parsed... ignoring event"

    invoke-static {v0, v2, v1}, Lcom/hiya/client/support/logging/d;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "Completable.complete()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 10
    :cond_0
    invoke-virtual {v0}, Li/c/b0/b/v;->materialize()Li/c/b0/b/v;

    move-result-object v0

    sget-object v3, Lg/g/b/a/j/o$d;->f:Lg/g/b/a/j/o$d;

    invoke-virtual {v0, v3}, Li/c/b0/b/v;->filter(Li/c/b0/d/p;)Li/c/b0/b/v;

    move-result-object v12

    .line 11
    invoke-virtual {v1}, Li/c/b0/b/v;->materialize()Li/c/b0/b/v;

    move-result-object v0

    sget-object v1, Lg/g/b/a/j/o$e;->f:Lg/g/b/a/j/o$e;

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->filter(Li/c/b0/d/p;)Li/c/b0/b/v;

    move-result-object v13

    .line 12
    new-instance v14, Lg/g/b/a/j/o$f;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move/from16 v4, p3

    move-object/from16 v5, p5

    move-object v6, v8

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lg/g/b/a/j/o$f;-><init>(Lg/g/b/a/j/o;Lg/g/a/a/i/h;Lg/g/b/a/j/m;ILg/g/b/c/n;Lg/g/b/c/m;Lg/g/b/c/f;Lg/g/a/a/i/o/u;)V

    .line 13
    invoke-static {v12, v13, v14}, Li/c/b0/b/v;->zip(Li/c/b0/b/a0;Li/c/b0/b/a0;Li/c/b0/d/c;)Li/c/b0/b/v;

    move-result-object v0

    .line 14
    new-instance v1, Lg/g/b/a/j/o$g;

    invoke-direct {v1, v9}, Lg/g/b/a/j/o$g;-><init>(Lg/g/b/a/j/o;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 15
    new-instance v1, Lg/g/b/a/j/o$h;

    invoke-direct {v1, v9}, Lg/g/b/a/j/o$h;-><init>(Lg/g/b/a/j/o;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v6

    .line 16
    new-instance v7, Lg/g/b/a/j/o$i;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lg/g/b/a/j/o$i;-><init>(Lg/g/b/a/j/o;Lg/g/b/a/j/m;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v6, v7}, Li/c/b0/b/v;->flatMapCompletable(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "Observable.zip(\n        \u2026          }\n            }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
