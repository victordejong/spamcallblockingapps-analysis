.class public Lg/g/b/d/g/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lg/g/b/d/a;

.field private final b:Lg/g/b/d/g/c;

.field private final c:Lcom/google/gson/f;


# direct methods
.method public constructor <init>(Lg/g/b/d/a;Lg/g/b/d/g/c;Lcom/google/gson/f;)V
    .locals 1

    const-string v0, "scheduler"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storedRequestManager"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/g/b/d/g/a;->a:Lg/g/b/d/a;

    iput-object p2, p0, Lg/g/b/d/g/a;->b:Lg/g/b/d/g/c;

    iput-object p3, p0, Lg/g/b/d/g/a;->c:Lcom/google/gson/f;

    return-void
.end method

.method public static final synthetic a(Lg/g/b/d/g/a;)Lg/g/b/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/g/b/d/g/a;->a:Lg/g/b/d/a;

    return-object p0
.end method

.method private final b(Lg/g/b/d/e/a;)Li/c/b0/b/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/d/g/a;->b:Lg/g/b/d/g/c;

    invoke-virtual {v0, p1}, Lg/g/b/d/g/c;->a(Lg/g/b/d/e/a;)Li/c/b0/b/e;

    move-result-object p1

    .line 2
    new-instance v0, Lg/g/b/d/g/a$a;

    invoke-direct {v0, p0}, Lg/g/b/d/g/a$a;-><init>(Lg/g/b/d/g/a;)V

    invoke-virtual {p1, v0}, Li/c/b0/b/e;->q(Li/c/b0/d/g;)Li/c/b0/b/e;

    move-result-object p1

    const-string v0, "storedRequestManager.sto\u2026heduleJob()\n            }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final e(Lg/g/a/a/i/k/d;)Lg/g/b/d/e/a;
    .locals 8

    .line 1
    new-instance v7, Lg/g/b/d/e/a;

    .line 2
    sget-object v2, Lg/g/b/d/e/d;->SendPhoneEvent:Lg/g/b/d/e/d;

    .line 3
    iget-object v0, p0, Lg/g/b/d/g/a;->c:Lcom/google/gson/f;

    invoke-virtual {v0, p1}, Lcom/google/gson/f;->u(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "gson.toJson(phoneNumberEventDTO)"

    invoke-static {v3, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v6, 0x0

    move-object v0, v7

    .line 4
    invoke-direct/range {v0 .. v6}, Lg/g/b/d/e/a;-><init>(ILg/g/b/d/e/d;Ljava/lang/String;IILkotlin/w/c/g;)V

    return-object v7
.end method

.method private final f(Lg/g/a/a/i/o/y;)Lg/g/b/d/e/a;
    .locals 8

    .line 1
    new-instance v7, Lg/g/b/d/e/a;

    sget-object v2, Lg/g/b/d/e/d;->UserFeedback:Lg/g/b/d/e/d;

    iget-object v0, p0, Lg/g/b/d/g/a;->c:Lcom/google/gson/f;

    invoke-virtual {v0, p1}, Lcom/google/gson/f;->u(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string p1, "gson.toJson(feedback)"

    invoke-static {v3, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lg/g/b/d/e/a;-><init>(ILg/g/b/d/e/d;Ljava/lang/String;IILkotlin/w/c/g;)V

    return-object v7
.end method


# virtual methods
.method public c(Lg/g/a/a/i/k/d;)Li/c/b0/b/e;
    .locals 1

    const-string v0, "phoneNumberEventDTO"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lg/g/b/d/g/a;->e(Lg/g/a/a/i/k/d;)Lg/g/b/d/e/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lg/g/b/d/g/a;->b(Lg/g/b/d/e/a;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public d(Lg/g/a/a/i/o/y;)Li/c/b0/b/e;
    .locals 1

    const-string v0, "feedbackDTO"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lg/g/b/d/g/a;->f(Lg/g/a/a/i/o/y;)Lg/g/b/d/e/a;

    move-result-object p1

    invoke-direct {p0, p1}, Lg/g/b/d/g/a;->b(Lg/g/b/d/e/a;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method
