.class public Lcom/hiya/stingray/manager/l1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lg/g/a/a/h/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lg/g/a/a/h/a;)V
    .locals 1

    const-string v0, "authenticationDao"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/manager/l1;->a:Lg/g/a/a/h/a;

    return-void
.end method

.method public static synthetic c(Lcom/hiya/stingray/manager/l1;ZZILjava/lang/Object;)Li/c/b0/b/e;
    .locals 0

    if-nez p4, :cond_2

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/manager/l1;->b(ZZ)Li/c/b0/b/e;

    move-result-object p0

    return-object p0

    .line 2
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: refetchToken"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/l1;->a:Lg/g/a/a/h/a;

    invoke-interface {v0}, Lg/g/a/a/h/a;->d()V

    return-void
.end method

.method public final b(ZZ)Li/c/b0/b/e;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "AuthManagerLog"

    if-eqz p1, :cond_0

    .line 1
    invoke-static {v1}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "Clearing auth token."

    invoke-virtual {v2, v4, v3}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/hiya/stingray/manager/l1;->a()V

    .line 3
    :cond_0
    invoke-static {v1}, Lr/a/a;->j(Ljava/lang/String;)Lr/a/a$c;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "Fetching auth toke with force = %s."

    invoke-virtual {v1, v0, v2}, Lr/a/a$c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/manager/l1;->a:Lg/g/a/a/h/a;

    invoke-interface {v0, p1, p2}, Lg/g/a/a/h/a;->b(ZZ)Li/c/b0/b/v;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/e;->u(Li/c/b0/b/a0;)Li/c/b0/b/e;

    move-result-object p1

    const-string p2, "Completable.fromObservab\u2026oken, forceFetchService))"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
