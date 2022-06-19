.class public final Lcom/hiya/client/callerid/ui/a0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lg/g/b/a/b;

.field private final b:Lcom/hiya/client/callerid/ui/y/d;

.field private final c:Lcom/hiya/client/callerid/ui/overlay/g/e;


# direct methods
.method public constructor <init>(Lg/g/b/a/b;Lcom/hiya/client/callerid/ui/y/d;Lcom/hiya/client/callerid/ui/overlay/g/e;)V
    .locals 1

    const-string v0, "hiyaCallerId"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactDbOp"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdMapper"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/a0/d;->a:Lg/g/b/a/b;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/a0/d;->b:Lcom/hiya/client/callerid/ui/y/d;

    iput-object p3, p0, Lcom/hiya/client/callerid/ui/a0/d;->c:Lcom/hiya/client/callerid/ui/overlay/g/e;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/client/callerid/ui/a0/d;)Lcom/hiya/client/callerid/ui/overlay/g/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/a0/d;->c:Lcom/hiya/client/callerid/ui/overlay/g/e;

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/client/callerid/ui/a0/d;)Lcom/hiya/client/callerid/ui/y/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/a0/d;->b:Lcom/hiya/client/callerid/ui/y/d;

    return-object p0
.end method

.method public static final synthetic c(Lcom/hiya/client/callerid/ui/a0/d;)Lg/g/b/a/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/ui/a0/d;->a:Lg/g/b/a/b;

    return-object p0
.end method

.method public static synthetic e(Lcom/hiya/client/callerid/ui/a0/d;Lcom/hiya/client/callerid/ui/b0/j;ZILjava/lang/Object;)Li/c/b0/b/v;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hiya/client/callerid/ui/a0/d;->d(Lcom/hiya/client/callerid/ui/b0/j;Z)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method private final g(Lcom/hiya/client/callerid/ui/b0/j;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/client/callerid/ui/b0/j;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/Set<",
            "Lcom/hiya/client/callerid/ui/b0/f;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/ui/a0/d$c;

    invoke-direct {v0, p0, p1}, Lcom/hiya/client/callerid/ui/a0/d$c;-><init>(Lcom/hiya/client/callerid/ui/a0/d;Lcom/hiya/client/callerid/ui/b0/j;)V

    invoke-static {v0}, Li/c/b0/b/v;->fromCallable(Ljava/util/concurrent/Callable;)Li/c/b0/b/v;

    move-result-object p1

    const-string v0, "Observable.fromCallable \u2026sByPhone(phone)\n        }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final d(Lcom/hiya/client/callerid/ui/b0/j;Z)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/client/callerid/ui/b0/j;",
            "Z)",
            "Li/c/b0/b/v<",
            "Lcom/hiya/client/callerid/ui/b0/e;",
            ">;"
        }
    .end annotation

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/a0/d;->g(Lcom/hiya/client/callerid/ui/b0/j;)Li/c/b0/b/v;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/client/callerid/ui/a0/d$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/hiya/client/callerid/ui/a0/d$a;-><init>(Lcom/hiya/client/callerid/ui/a0/d;Lcom/hiya/client/callerid/ui/b0/j;Z)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    const-string p2, "getContactByPhoneAsObser\u2026          }\n            }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final f(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;Lg/g/b/c/t;Z)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/client/callerid/ui/b0/j;",
            "Lg/g/b/c/k;",
            "Lg/g/b/c/t;",
            "Z)",
            "Li/c/b0/b/v<",
            "Lcom/hiya/client/callerid/ui/b0/e;",
            ">;"
        }
    .end annotation

    const-string v0, "number"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventDirection"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/ui/a0/d;->g(Lcom/hiya/client/callerid/ui/b0/j;)Li/c/b0/b/v;

    move-result-object v0

    .line 2
    new-instance v7, Lcom/hiya/client/callerid/ui/a0/d$b;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/hiya/client/callerid/ui/a0/d$b;-><init>(Lcom/hiya/client/callerid/ui/a0/d;Lg/g/b/c/k;Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/t;Z)V

    invoke-virtual {v0, v7}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    const-string p2, "getContactByPhoneAsObser\u2026          }\n            }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
