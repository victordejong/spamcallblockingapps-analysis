.class public final Lg/g/b/a/j/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/b/a/j/j;


# instance fields
.field private final a:Lg/g/a/a/h/g;

.field private final b:Lcom/hiya/client/callerid/dao/m;

.field private final c:Lcom/hiya/client/callerid/dao/c;

.field private final d:Lg/g/b/a/g/a/i/f;

.field private final e:Lh/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/a<",
            "Lg/g/b/d/g/a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/hiya/client/callerid/dao/y;

.field private final g:Lg/g/b/b/d/e;


# direct methods
.method public constructor <init>(Lg/g/a/a/h/g;Lcom/hiya/client/callerid/dao/m;Lcom/hiya/client/callerid/dao/c;Lg/g/b/a/g/a/i/f;Lh/a;Lcom/hiya/client/callerid/dao/y;Lg/g/b/b/d/e;Lg/g/b/a/g/a/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/a/h/g;",
            "Lcom/hiya/client/callerid/dao/m;",
            "Lcom/hiya/client/callerid/dao/c;",
            "Lg/g/b/a/g/a/i/f;",
            "Lh/a<",
            "Lg/g/b/d/g/a;",
            ">;",
            "Lcom/hiya/client/callerid/dao/y;",
            "Lg/g/b/b/d/e;",
            "Lg/g/b/a/g/a/g;",
            ")V"
        }
    .end annotation

    const-string v0, "userInfoDao"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hashingInputCallback"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdDao"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberEventMapper"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "repostManager"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendPhoneEventDao"

    invoke-static {p6, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postEventDataOp"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userInputMapper"

    invoke-static {p8, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/b/a/j/k;->a:Lg/g/a/a/h/g;

    iput-object p2, p0, Lg/g/b/a/j/k;->b:Lcom/hiya/client/callerid/dao/m;

    iput-object p3, p0, Lg/g/b/a/j/k;->c:Lcom/hiya/client/callerid/dao/c;

    iput-object p4, p0, Lg/g/b/a/j/k;->d:Lg/g/b/a/g/a/i/f;

    iput-object p5, p0, Lg/g/b/a/j/k;->e:Lh/a;

    iput-object p6, p0, Lg/g/b/a/j/k;->f:Lcom/hiya/client/callerid/dao/y;

    iput-object p7, p0, Lg/g/b/a/j/k;->g:Lg/g/b/b/d/e;

    return-void
.end method

.method public static final synthetic b(Lg/g/b/a/j/k;)Lg/g/b/a/g/a/i/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/a/j/k;->d:Lg/g/b/a/g/a/i/f;

    return-object p0
.end method

.method public static final synthetic c(Lg/g/b/a/j/k;)Lg/g/b/b/d/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/a/j/k;->g:Lg/g/b/b/d/e;

    return-object p0
.end method

.method public static final synthetic d(Lg/g/b/a/j/k;)Lh/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/a/j/k;->e:Lh/a;

    return-object p0
.end method

.method public static final synthetic e(Lg/g/b/a/j/k;)Lcom/hiya/client/callerid/dao/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/a/j/k;->f:Lcom/hiya/client/callerid/dao/y;

    return-object p0
.end method


# virtual methods
.method public a(Lg/g/b/c/n;Ljava/util/Map;)Li/c/b0/b/e;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/b/c/n;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const-string v0, "postEventData"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lg/g/b/a/j/k;->a:Lg/g/a/a/h/g;

    invoke-virtual {p1}, Lg/g/b/c/n;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/g/a/a/h/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    invoke-virtual {p1}, Lg/g/b/c/n;->e()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lg/g/b/c/n;->b()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lg/g/b/a/j/k;->b:Lcom/hiya/client/callerid/dao/m;

    .line 5
    invoke-static {v0, v1, v2, v4}, Lg/g/b/a/k/j;->c(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/common/phone/java/PhoneNormalizer$c;Ljava/lang/String;)Lg/g/a/a/i/h;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 6
    invoke-virtual {p1}, Lg/g/b/c/n;->e()Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v6, p1

    move-object v9, p2

    .line 7
    invoke-virtual/range {v2 .. v9}, Lg/g/b/a/j/k;->f(Ljava/lang/String;Ljava/lang/String;Lg/g/a/a/i/h;Lg/g/b/c/n;Lg/g/a/a/i/o/o;Ljava/lang/Boolean;Ljava/util/Map;)Li/c/b0/b/e;

    move-result-object p2

    .line 8
    new-instance v0, Lg/g/b/a/j/k$c;

    invoke-direct {v0, p0, p1}, Lg/g/b/a/j/k$c;-><init>(Lg/g/b/a/j/k;Lg/g/b/c/n;)V

    invoke-virtual {p2, v0}, Li/c/b0/b/e;->l(Li/c/b0/d/a;)Li/c/b0/b/e;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Li/c/b0/b/e;->z()Li/c/b0/b/e;

    move-result-object p1

    const-string p2, "sendEvent(\n            p\u2026      }.onErrorComplete()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 10
    :cond_0
    invoke-static {}, Li/c/b0/b/e;->i()Li/c/b0/b/e;

    move-result-object p1

    const-string p2, "Completable.complete()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Lg/g/a/a/i/h;Lg/g/b/c/n;Lg/g/a/a/i/o/o;Ljava/lang/Boolean;Ljava/util/Map;)Li/c/b0/b/e;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lg/g/a/a/i/h;",
            "Lg/g/b/c/n;",
            "Lg/g/a/a/i/o/o;",
            "Ljava/lang/Boolean;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "originalPhoneNumber"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "countryHint"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "phoneWithMetaDTO"

    move-object/from16 v3, p3

    invoke-static {v3, v2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v2, v7, Lg/g/b/a/j/k;->c:Lcom/hiya/client/callerid/dao/c;

    invoke-interface {v2, v0, v1}, Lcom/hiya/client/callerid/dao/c;->d(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/p;

    move-result-object v0

    .line 2
    new-instance v1, Lg/g/b/c/f;

    move-object v8, v1

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

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const v33, 0x3fffff

    const/16 v34, 0x0

    invoke-direct/range {v8 .. v34}, Lg/g/b/c/f;-><init>(Lg/g/b/c/i;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/q;Lg/g/b/c/o;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/e;Ljava/lang/String;Ljava/lang/String;JLg/g/b/c/r;JLjava/lang/String;Lg/g/b/c/h;ZILkotlin/w/c/g;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/p;->f(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object v8

    .line 3
    new-instance v9, Lg/g/b/a/j/k$a;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lg/g/b/a/j/k$a;-><init>(Lg/g/b/a/j/k;Lg/g/a/a/i/h;Lg/g/b/c/n;Lg/g/a/a/i/o/o;Ljava/lang/Boolean;Ljava/util/Map;)V

    invoke-virtual {v8, v9}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object v0

    .line 4
    new-instance v1, Lg/g/b/a/j/k$b;

    invoke-direct {v1, v7}, Lg/g/b/a/j/k$b;-><init>(Lg/g/b/a/j/k;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->n(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "callerIdDao.getCallerId(\u2026          }\n            }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
