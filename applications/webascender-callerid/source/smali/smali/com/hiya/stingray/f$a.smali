.class public final Lcom/hiya/stingray/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/w/c/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/f$a;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/hiya/stingray/f$a;Lcom/hiya/stingray/manager/o1;Ljava/lang/String;JLi/c/b0/b/d0;ILjava/lang/Object;)Li/c/b0/b/p;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/hiya/stingray/f$a;->a(Lcom/hiya/stingray/manager/o1;Ljava/lang/String;JLi/c/b0/b/d0;)Li/c/b0/b/p;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/hiya/stingray/f$a;Lcom/hiya/stingray/manager/o1;Lcom/hiya/stingray/manager/h4;JLi/c/b0/b/d0;ILjava/lang/Object;)Li/c/b0/b/p;
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/hiya/stingray/f$a;->c(Lcom/hiya/stingray/manager/o1;Lcom/hiya/stingray/manager/h4;JLi/c/b0/b/d0;)Li/c/b0/b/p;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/manager/o1;Ljava/lang/String;JLi/c/b0/b/d0;)Li/c/b0/b/p;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/manager/o1;",
            "Ljava/lang/String;",
            "J",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/p<",
            "Lcom/hiya/stingray/t/e0;",
            ">;"
        }
    .end annotation

    const-string v0, "callLogManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-class v0, Lcom/hiya/stingray/f$a;

    invoke-static {v0}, Lkotlin/w/c/r;->b(Ljava/lang/Class;)Lkotlin/a0/b;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/a0/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "waitForCallLogItem(...)"

    invoke-virtual {v0, v2, v1}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v5, 0xa

    const-wide/16 v8, 0x7d0

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p3

    .line 2
    invoke-virtual/range {v3 .. v9}, Lcom/hiya/stingray/manager/o1;->s(Ljava/lang/String;IJJ)Li/c/b0/b/e0;

    move-result-object p1

    .line 3
    sget-object p2, Lcom/hiya/stingray/f$a$a;->f:Lcom/hiya/stingray/f$a$a;

    invoke-virtual {p1, p2}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    const-wide/16 p2, 0x3e8

    const/4 p4, 0x4

    .line 4
    new-instance v0, Lcom/hiya/stingray/util/z;

    if-eqz p5, :cond_0

    invoke-direct {v0, p4, p2, p3, p5}, Lcom/hiya/stingray/util/z;-><init>(IJLi/c/b0/b/d0;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0, p4, p2, p3}, Lcom/hiya/stingray/util/z;-><init>(IJ)V

    :goto_0
    invoke-virtual {p1, v0}, Li/c/b0/b/e0;->A(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    .line 5
    sget-object p2, Lcom/hiya/stingray/f$a$b;->f:Lcom/hiya/stingray/f$a$b;

    invoke-virtual {p1, p2}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Li/c/b0/b/e0;->v()Li/c/b0/b/p;

    move-result-object p1

    const-string p2, "callLogManager.getLastCa\u2026       .onErrorComplete()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final c(Lcom/hiya/stingray/manager/o1;Lcom/hiya/stingray/manager/h4;JLi/c/b0/b/d0;)Li/c/b0/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/manager/o1;",
            "Lcom/hiya/stingray/manager/h4;",
            "J",
            "Li/c/b0/b/d0;",
            ")",
            "Li/c/b0/b/p<",
            "Lcom/hiya/stingray/t/d0;",
            ">;"
        }
    .end annotation

    const-string p3, "callLogManager"

    invoke-static {p1, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "userAccountManager"

    invoke-static {p2, p3}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-class p3, Lcom/hiya/stingray/f$a;

    invoke-static {p3}, Lkotlin/w/c/r;->b(Ljava/lang/Class;)Lkotlin/a0/b;

    move-result-object p3

    invoke-interface {p3}, Lkotlin/a0/b;->a()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object p3

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    const-string v0, "waitForPrivateCallLogItem(...)"

    invoke-virtual {p3, v0, p4}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p2}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object p2

    const/16 p3, 0xa

    invoke-virtual {p1, p2, p3}, Lcom/hiya/stingray/manager/o1;->p(Ljava/lang/String;I)Li/c/b0/b/v;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Li/c/b0/b/v;->singleElement()Li/c/b0/b/p;

    move-result-object p1

    .line 4
    sget-object p2, Lcom/hiya/stingray/f$a$c;->f:Lcom/hiya/stingray/f$a$c;

    invoke-virtual {p1, p2}, Li/c/b0/b/p;->k(Li/c/b0/d/o;)Li/c/b0/b/p;

    move-result-object p1

    .line 5
    sget-object p2, Lcom/hiya/stingray/f$a$d;->f:Lcom/hiya/stingray/f$a$d;

    invoke-virtual {p1, p2}, Li/c/b0/b/p;->k(Li/c/b0/d/o;)Li/c/b0/b/p;

    move-result-object p1

    const-wide/16 p2, 0x3e8

    const/4 p4, 0x4

    .line 6
    new-instance v0, Lcom/hiya/stingray/util/z;

    if-eqz p5, :cond_0

    invoke-direct {v0, p4, p2, p3, p5}, Lcom/hiya/stingray/util/z;-><init>(IJLi/c/b0/b/d0;)V

    goto :goto_0

    :cond_0
    invoke-direct {v0, p4, p2, p3}, Lcom/hiya/stingray/util/z;-><init>(IJ)V

    :goto_0
    invoke-virtual {p1, v0}, Li/c/b0/b/p;->o(Li/c/b0/d/o;)Li/c/b0/b/p;

    move-result-object p1

    .line 7
    sget-object p2, Lcom/hiya/stingray/f$a$e;->f:Lcom/hiya/stingray/f$a$e;

    invoke-virtual {p1, p2}, Li/c/b0/b/p;->k(Li/c/b0/d/o;)Li/c/b0/b/p;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Li/c/b0/b/p;->m()Li/c/b0/b/p;

    move-result-object p1

    const-string p2, "callLogManager.getCallLo\u2026       .onErrorComplete()"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
