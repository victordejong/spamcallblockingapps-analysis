.class public Lcom/hiya/stingray/manager/j4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/hiya/stingray/t/i1/a1;

.field private final b:Lcom/hiya/stingray/q/a/o;

.field private final c:Lcom/hiya/stingray/manager/m3;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/t/i1/a1;Lcom/hiya/stingray/q/a/o;Lcom/hiya/stingray/manager/m3;Lcom/hiya/stingray/manager/l2;)V
    .locals 1

    const-string v0, "userFeedbackMapper"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reputationDao"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneEventManager"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "devAnalyticsManager"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/j4;->a:Lcom/hiya/stingray/t/i1/a1;

    iput-object p2, p0, Lcom/hiya/stingray/manager/j4;->b:Lcom/hiya/stingray/q/a/o;

    iput-object p3, p0, Lcom/hiya/stingray/manager/j4;->c:Lcom/hiya/stingray/manager/m3;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/stingray/manager/j4;)Lcom/hiya/stingray/q/a/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/j4;->b:Lcom/hiya/stingray/q/a/o;

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/stingray/manager/j4;)Lcom/hiya/stingray/t/i1/a1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/manager/j4;->a:Lcom/hiya/stingray/t/i1/a1;

    return-object p0
.end method

.method public static final synthetic c(Lcom/hiya/stingray/manager/j4;Lg/g/a/a/i/o/y;)Li/c/b0/b/v;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/manager/j4;->d(Lg/g/a/a/i/o/y;)Li/c/b0/b/v;

    move-result-object p0

    return-object p0
.end method

.method private final d(Lg/g/a/a/i/o/y;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/a/i/o/y;",
            ")",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/manager/j4$a;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/manager/j4$a;-><init>(Lcom/hiya/stingray/manager/j4;)V

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    const-string v0, "Observable.just(feedback\u2026ao.sendUserFeedback(it) }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "UserFeedbackDTO was invalid state. User feedback not sent"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Li/c/b0/b/v;->error(Ljava/lang/Throwable;)Li/c/b0/b/v;

    move-result-object p1

    const-string v0, "Observable.error(Illegal\u2026User feedback not sent\"))"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayName"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newName"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/j4;->c:Lcom/hiya/stingray/manager/m3;

    .line 3
    sget-object v1, Lcom/hiya/stingray/manager/m3$a;->IDENTITY_REPORT:Lcom/hiya/stingray/manager/m3$a;

    invoke-virtual {v0, p1, v1}, Lcom/hiya/stingray/manager/m3;->g(Ljava/lang/String;Lcom/hiya/stingray/manager/m3$a;)Li/c/b0/b/e0;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Li/c/b0/b/e0;->K()Li/c/b0/b/v;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/hiya/stingray/manager/j4$b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/hiya/stingray/manager/j4$b;-><init>(Lcom/hiya/stingray/manager/j4;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    const-string p2, "phoneEventManager\n      \u2026      }\n                }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final f(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    const-string v0, "phone"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->d(Z)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/manager/j4;->c:Lcom/hiya/stingray/manager/m3;

    .line 3
    sget-object v1, Lcom/hiya/stingray/manager/m3$a;->REPUTATION_REPORT:Lcom/hiya/stingray/manager/m3$a;

    invoke-virtual {v0, p1, v1}, Lcom/hiya/stingray/manager/m3;->g(Ljava/lang/String;Lcom/hiya/stingray/manager/m3$a;)Li/c/b0/b/e0;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Li/c/b0/b/e0;->K()Li/c/b0/b/v;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/hiya/stingray/manager/j4$c;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/manager/j4$c;-><init>(Lcom/hiya/stingray/manager/j4;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    const-string v0, "phoneEventManager\n      \u2026      }\n                }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
