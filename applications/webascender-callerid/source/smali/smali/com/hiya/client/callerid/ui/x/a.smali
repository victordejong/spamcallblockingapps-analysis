.class public final Lcom/hiya/client/callerid/ui/x/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Z

.field private final b:Landroid/content/Context;

.field private final c:Lg/g/b/a/b;

.field private final d:Lcom/hiya/client/callerid/ui/a0/a;

.field private final e:Lcom/hiya/client/callerid/ui/x/e;

.field private final f:Li/c/b0/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/g/b/a/b;Lcom/hiya/client/callerid/ui/a0/a;Lcom/hiya/client/callerid/ui/x/e;Li/c/b0/c/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hiyaCallerId"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callLogManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendPhoneInfoDao"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "compositeDisposable"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/x/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/x/a;->c:Lg/g/b/a/b;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/x/a;->d:Lcom/hiya/client/callerid/ui/a0/a;

    iput-object p4, p0, Lcom/hiya/client/callerid/ui/x/a;->e:Lcom/hiya/client/callerid/ui/x/e;

    iput-object p5, p0, Lcom/hiya/client/callerid/ui/x/a;->f:Li/c/b0/c/a;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/hiya/client/callerid/ui/l;->c:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/hiya/client/callerid/ui/x/a;->a:Z

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/client/callerid/ui/x/a;)Lcom/hiya/client/callerid/ui/a0/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/x/a;->d:Lcom/hiya/client/callerid/ui/a0/a;

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/client/callerid/ui/x/a;)Lg/g/b/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/x/a;->c:Lg/g/b/a/b;

    return-object p0
.end method

.method public static final synthetic c(Lcom/hiya/client/callerid/ui/x/a;)Lcom/hiya/client/callerid/ui/x/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/x/a;->e:Lcom/hiya/client/callerid/ui/x/e;

    return-object p0
.end method


# virtual methods
.method public final d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/x/a;->a:Z

    return v0
.end method

.method public final e(Ljava/lang/String;Lg/g/b/c/k;ZZLcom/hiya/client/callerid/ui/b0/j;JI)V
    .locals 13

    move-object v0, p0

    const-string v1, "profileTag"

    move-object v3, p1

    invoke-static {p1, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "direction"

    move-object v4, p2

    invoke-static {p2, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "phoneNumber"

    move-object/from16 v7, p5

    invoke-static {v7, v1}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v1, v0, Lcom/hiya/client/callerid/ui/x/a;->a:Z

    if-eqz v1, :cond_0

    .line 2
    iget-object v1, v0, Lcom/hiya/client/callerid/ui/x/a;->e:Lcom/hiya/client/callerid/ui/x/e;

    .line 3
    new-instance v12, Lcom/hiya/client/callerid/ui/x/d;

    const/4 v10, 0x0

    move-object v2, v12

    move-object v3, p1

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move/from16 v11, p8

    invoke-direct/range {v2 .. v11}, Lcom/hiya/client/callerid/ui/x/d;-><init>(Ljava/lang/String;Lg/g/b/c/k;ZZLcom/hiya/client/callerid/ui/b0/j;JII)V

    .line 4
    invoke-virtual {v1, v12}, Lcom/hiya/client/callerid/ui/x/e;->f(Lcom/hiya/client/callerid/ui/x/d;)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 5

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/hiya/client/callerid/ui/x/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/x/a;->e:Lcom/hiya/client/callerid/ui/x/e;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/x/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/x/a;->e:Lcom/hiya/client/callerid/ui/x/e;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/x/e;->e()Lcom/hiya/client/callerid/ui/x/d;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/x/d;->e()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x1

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v1, v2, v3}, Li/c/b0/b/p;->u(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/p;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/hiya/client/callerid/ui/x/a$a;

    invoke-direct {v2, p0, v0}, Lcom/hiya/client/callerid/ui/x/a$a;-><init>(Lcom/hiya/client/callerid/ui/x/a;Lcom/hiya/client/callerid/ui/x/d;)V

    invoke-virtual {v1, v2}, Li/c/b0/b/p;->h(Li/c/b0/d/o;)Li/c/b0/b/p;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Li/c/b0/b/p;->y()Li/c/b0/b/e0;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/hiya/client/callerid/ui/x/a$b;

    invoke-direct {v2, p0, v0}, Lcom/hiya/client/callerid/ui/x/a$b;-><init>(Lcom/hiya/client/callerid/ui/x/a;Lcom/hiya/client/callerid/ui/x/d;)V

    invoke-virtual {v1, v2}, Li/c/b0/b/e0;->n(Li/c/b0/d/o;)Li/c/b0/b/e;

    move-result-object v1

    .line 7
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/b0/b/e;->y(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v1

    .line 8
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v2

    invoke-virtual {v1, v2}, Li/c/b0/b/e;->G(Li/c/b0/b/d0;)Li/c/b0/b/e;

    move-result-object v1

    .line 9
    new-instance v2, Lcom/hiya/client/callerid/ui/x/a$c;

    invoke-direct {v2, v0}, Lcom/hiya/client/callerid/ui/x/a$c;-><init>(Lcom/hiya/client/callerid/ui/x/d;)V

    .line 10
    new-instance v3, Lcom/hiya/client/callerid/ui/x/a$d;

    invoke-direct {v3, p0, v0}, Lcom/hiya/client/callerid/ui/x/a$d;-><init>(Lcom/hiya/client/callerid/ui/x/a;Lcom/hiya/client/callerid/ui/x/d;)V

    .line 11
    invoke-virtual {v1, v2, v3}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/hiya/client/callerid/ui/x/a;->f:Li/c/b0/c/a;

    invoke-virtual {v1, v0}, Li/c/b0/c/a;->b(Li/c/b0/c/c;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
