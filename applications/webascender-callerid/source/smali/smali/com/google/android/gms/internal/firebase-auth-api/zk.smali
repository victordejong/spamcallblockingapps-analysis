.class final Lcom/google/android/gms/internal/firebase-auth-api/zk;
.super Lcom/google/android/gms/internal/firebase-auth-api/ol;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/em;


# instance fields
.field private a:Lcom/google/android/gms/internal/firebase-auth-api/pk;

.field private b:Lcom/google/android/gms/internal/firebase-auth-api/qk;

.field private c:Lcom/google/android/gms/internal/firebase-auth-api/sl;

.field private final d:Lcom/google/android/gms/internal/firebase-auth-api/yk;

.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/String;

.field g:Lcom/google/android/gms/internal/firebase-auth-api/al;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yk;Lcom/google/android/gms/internal/firebase-auth-api/sl;Lcom/google/android/gms/internal/firebase-auth-api/pk;Lcom/google/android/gms/internal/firebase-auth-api/qk;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/ol;-><init>()V

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->e:Landroid/content/Context;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    .line 3
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/google/android/gms/internal/firebase-auth-api/yk;

    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->d:Lcom/google/android/gms/internal/firebase-auth-api/yk;

    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1, p1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zk;->u(Lcom/google/android/gms/internal/firebase-auth-api/sl;Lcom/google/android/gms/internal/firebase-auth-api/pk;Lcom/google/android/gms/internal/firebase-auth-api/qk;)V

    .line 5
    invoke-static {p2, p0}, Lcom/google/android/gms/internal/firebase-auth-api/fm;->b(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/em;)V

    return-void
.end method

.method private final u(Lcom/google/android/gms/internal/firebase-auth-api/sl;Lcom/google/android/gms/internal/firebase-auth-api/pk;Lcom/google/android/gms/internal/firebase-auth-api/qk;)V
    .locals 2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->c:Lcom/google/android/gms/internal/firebase-auth-api/sl;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->a:Lcom/google/android/gms/internal/firebase-auth-api/pk;

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->b:Lcom/google/android/gms/internal/firebase-auth-api/qk;

    const-string p1, "firebear.secureToken"

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/cm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string p3, "LocalClient"

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/fm;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Found hermetic configuration for secureToken URL: "

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->c:Lcom/google/android/gms/internal/firebase-auth-api/sl;

    if-nez p2, :cond_2

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/sl;

    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zk;->v()Lcom/google/android/gms/internal/firebase-auth-api/al;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/sl;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->c:Lcom/google/android/gms/internal/firebase-auth-api/sl;

    :cond_2
    const-string p1, "firebear.identityToolkit"

    .line 7
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/cm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/fm;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    .line 10
    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Found hermetic configuration for identityToolkit URL: "

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_4
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_3
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->a:Lcom/google/android/gms/internal/firebase-auth-api/pk;

    if-nez p2, :cond_5

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/pk;

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zk;->v()Lcom/google/android/gms/internal/firebase-auth-api/al;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/pk;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->a:Lcom/google/android/gms/internal/firebase-auth-api/pk;

    :cond_5
    const-string p1, "firebear.identityToolkitV2"

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/cm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/fm;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    .line 16
    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Found hermetic configuration for identityToolkitV2 URL: "

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    :cond_7
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    :goto_5
    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->b:Lcom/google/android/gms/internal/firebase-auth-api/qk;

    if-nez p2, :cond_8

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/qk;

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zk;->v()Lcom/google/android/gms/internal/firebase-auth-api/al;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/qk;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->b:Lcom/google/android/gms/internal/firebase-auth-api/qk;

    :cond_8
    return-void
.end method

.method private final v()Lcom/google/android/gms/internal/firebase-auth-api/al;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->g:Lcom/google/android/gms/internal/firebase-auth-api/al;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/al;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->d:Lcom/google/android/gms/internal/firebase-auth-api/yk;

    .line 1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/yk;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/al;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->g:Lcom/google/android/gms/internal/firebase-auth-api/al;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->g:Lcom/google/android/gms/internal/firebase-auth-api/al;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/firebase-auth-api/tm;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/tm;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
            "Lcom/google/android/gms/internal/firebase-auth-api/en;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->c:Lcom/google/android/gms/internal/firebase-auth-api/sl;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    const-string v2, "/token"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/hk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/en;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/hk;->b:Lcom/google/android/gms/internal/firebase-auth-api/al;

    .line 4
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/pl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/wk;Lcom/google/android/gms/internal/firebase-auth-api/nl;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/firebase-auth-api/io;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/io;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
            "Lcom/google/android/gms/internal/firebase-auth-api/jo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->a:Lcom/google/android/gms/internal/firebase-auth-api/pk;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    const-string v2, "/verifyCustomToken"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/hk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/jo;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/hk;->b:Lcom/google/android/gms/internal/firebase-auth-api/al;

    .line 4
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/pl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/wk;Lcom/google/android/gms/internal/firebase-auth-api/nl;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    return-void
.end method

.method public final c(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/fo;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/firebase-auth-api/fo;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
            "Lcom/google/android/gms/internal/firebase-auth-api/ho;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->a:Lcom/google/android/gms/internal/firebase-auth-api/pk;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    const-string v1, "/verifyAssertion"

    .line 3
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/hk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/ho;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/hk;->b:Lcom/google/android/gms/internal/firebase-auth-api/al;

    .line 4
    invoke-static {v0, p2, p3, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/pl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/wk;Lcom/google/android/gms/internal/firebase-auth-api/nl;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    return-void
.end method

.method public final d(Lcom/google/android/gms/internal/firebase-auth-api/xn;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/xn;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
            "Lcom/google/android/gms/internal/firebase-auth-api/yn;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->a:Lcom/google/android/gms/internal/firebase-auth-api/pk;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    const-string v2, "/signupNewUser"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/hk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/yn;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/hk;->b:Lcom/google/android/gms/internal/firebase-auth-api/al;

    .line 4
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/pl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/wk;Lcom/google/android/gms/internal/firebase-auth-api/nl;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    return-void
.end method

.method public final e(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/mo;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/firebase-auth-api/mo;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
            "Lcom/google/android/gms/internal/firebase-auth-api/no;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->a:Lcom/google/android/gms/internal/firebase-auth-api/pk;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    const-string v1, "/verifyPassword"

    .line 3
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/hk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/no;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/hk;->b:Lcom/google/android/gms/internal/firebase-auth-api/al;

    .line 4
    invoke-static {v0, p2, p3, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/pl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/wk;Lcom/google/android/gms/internal/firebase-auth-api/nl;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    return-void
.end method

.method public final f(Lcom/google/android/gms/internal/firebase-auth-api/pn;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/pn;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
            "Lcom/google/android/gms/internal/firebase-auth-api/qn;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->a:Lcom/google/android/gms/internal/firebase-auth-api/pk;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    const-string v2, "/resetPassword"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/hk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/qn;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/hk;->b:Lcom/google/android/gms/internal/firebase-auth-api/al;

    .line 4
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/pl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/wk;Lcom/google/android/gms/internal/firebase-auth-api/nl;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    return-void
.end method

.method public final g(Lcom/google/android/gms/internal/firebase-auth-api/um;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/um;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
            "Lcom/google/android/gms/internal/firebase-auth-api/vm;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->a:Lcom/google/android/gms/internal/firebase-auth-api/pk;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    const-string v2, "/getAccountInfo"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/hk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/vm;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/hk;->b:Lcom/google/android/gms/internal/firebase-auth-api/al;

    .line 4
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/pl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/wk;Lcom/google/android/gms/internal/firebase-auth-api/nl;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    return-void
.end method

.method public final h(Lcom/google/android/gms/internal/firebase-auth-api/vn;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/vn;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
            "Lcom/google/android/gms/internal/firebase-auth-api/wn;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->a:Lcom/google/android/gms/internal/firebase-auth-api/pk;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    const-string v2, "/setAccountInfo"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/hk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/wn;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/hk;->b:Lcom/google/android/gms/internal/firebase-auth-api/al;

    .line 4
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/pl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/wk;Lcom/google/android/gms/internal/firebase-auth-api/nl;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    return-void
.end method

.method public final i(Lcom/google/android/gms/internal/firebase-auth-api/im;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/im;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
            "Lcom/google/android/gms/internal/firebase-auth-api/jm;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->a:Lcom/google/android/gms/internal/firebase-auth-api/pk;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    const-string v2, "/createAuthUri"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/hk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/jm;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/hk;->b:Lcom/google/android/gms/internal/firebase-auth-api/al;

    .line 4
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/pl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/wk;Lcom/google/android/gms/internal/firebase-auth-api/nl;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    return-void
.end method

.method public final j(Lcom/google/android/gms/internal/firebase-auth-api/bn;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/bn;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
            "Lcom/google/android/gms/internal/firebase-auth-api/cn;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/bn;->f()Lcom/google/firebase/auth/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zk;->v()Lcom/google/android/gms/internal/firebase-auth-api/al;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/bn;->f()Lcom/google/firebase/auth/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/a;->F1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/al;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->a:Lcom/google/android/gms/internal/firebase-auth-api/pk;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    const-string v2, "/getOobConfirmationCode"

    .line 4
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/hk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/cn;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/hk;->b:Lcom/google/android/gms/internal/firebase-auth-api/al;

    .line 5
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/pl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/wk;Lcom/google/android/gms/internal/firebase-auth-api/nl;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    return-void
.end method

.method public final k(Lcom/google/android/gms/internal/firebase-auth-api/sn;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/sn;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
            "Lcom/google/android/gms/internal/firebase-auth-api/un;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/sn;->B1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zk;->v()Lcom/google/android/gms/internal/firebase-auth-api/al;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/sn;->B1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/al;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->a:Lcom/google/android/gms/internal/firebase-auth-api/pk;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    const-string v2, "/sendVerificationCode"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/hk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/un;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/hk;->b:Lcom/google/android/gms/internal/firebase-auth-api/al;

    .line 6
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/pl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/wk;Lcom/google/android/gms/internal/firebase-auth-api/nl;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    return-void
.end method

.method public final l(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/oo;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/firebase-auth-api/oo;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
            "Lcom/google/android/gms/internal/firebase-auth-api/po;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->a:Lcom/google/android/gms/internal/firebase-auth-api/pk;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    const-string v1, "/verifyPhoneNumber"

    .line 3
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/hk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/po;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/hk;->b:Lcom/google/android/gms/internal/firebase-auth-api/al;

    .line 4
    invoke-static {v0, p2, p3, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/pl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/wk;Lcom/google/android/gms/internal/firebase-auth-api/nl;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    return-void
.end method

.method public final m(Lcom/google/android/gms/internal/firebase-auth-api/lm;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/lm;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->a:Lcom/google/android/gms/internal/firebase-auth-api/pk;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    const-string v2, "/deleteAccount"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/hk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/hk;->b:Lcom/google/android/gms/internal/firebase-auth-api/al;

    .line 4
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/pl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/wk;Lcom/google/android/gms/internal/firebase-auth-api/nl;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    return-void
.end method

.method public final n(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zk;->v()Lcom/google/android/gms/internal/firebase-auth-api/al;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/al;->b(Ljava/lang/String;)V

    check-cast p2, Lcom/google/android/gms/internal/firebase-auth-api/wh;

    iget-object p1, p2, Lcom/google/android/gms/internal/firebase-auth-api/wh;->a:Lcom/google/android/gms/internal/firebase-auth-api/yj;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/yj;->m()V

    return-void
.end method

.method public final o(Lcom/google/android/gms/internal/firebase-auth-api/mm;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/mm;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
            "Lcom/google/android/gms/internal/firebase-auth-api/nm;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->a:Lcom/google/android/gms/internal/firebase-auth-api/pk;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    const-string v2, "/emailLinkSignin"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/hk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/nm;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/hk;->b:Lcom/google/android/gms/internal/firebase-auth-api/al;

    .line 4
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/pl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/wk;Lcom/google/android/gms/internal/firebase-auth-api/nl;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    return-void
.end method

.method public final p(Lcom/google/android/gms/internal/firebase-auth-api/zn;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zn;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
            "Lcom/google/android/gms/internal/firebase-auth-api/ao;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zn;->b()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zk;->v()Lcom/google/android/gms/internal/firebase-auth-api/al;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zn;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/al;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->b:Lcom/google/android/gms/internal/firebase-auth-api/qk;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    const-string v2, "/mfaEnrollment:start"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/hk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/ao;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/hk;->b:Lcom/google/android/gms/internal/firebase-auth-api/al;

    .line 6
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/pl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/wk;Lcom/google/android/gms/internal/firebase-auth-api/nl;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    return-void
.end method

.method public final q(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/om;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/firebase-auth-api/om;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
            "Lcom/google/android/gms/internal/firebase-auth-api/pm;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->b:Lcom/google/android/gms/internal/firebase-auth-api/qk;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    const-string v1, "/mfaEnrollment:finalize"

    .line 3
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/hk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/pm;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/hk;->b:Lcom/google/android/gms/internal/firebase-auth-api/al;

    .line 4
    invoke-static {v0, p2, p3, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/pl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/wk;Lcom/google/android/gms/internal/firebase-auth-api/nl;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    return-void
.end method

.method public final r(Lcom/google/android/gms/internal/firebase-auth-api/qo;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/qo;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
            "Lcom/google/android/gms/internal/firebase-auth-api/ro;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->b:Lcom/google/android/gms/internal/firebase-auth-api/qk;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    const-string v2, "/mfaEnrollment:withdraw"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/hk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/ro;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/hk;->b:Lcom/google/android/gms/internal/firebase-auth-api/al;

    .line 4
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/pl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/wk;Lcom/google/android/gms/internal/firebase-auth-api/nl;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    return-void
.end method

.method public final s(Lcom/google/android/gms/internal/firebase-auth-api/bo;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/bo;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
            "Lcom/google/android/gms/internal/firebase-auth-api/co;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/bo;->b()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zk;->v()Lcom/google/android/gms/internal/firebase-auth-api/al;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/bo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/al;->c(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->b:Lcom/google/android/gms/internal/firebase-auth-api/qk;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    const-string v2, "/mfaSignIn:start"

    .line 5
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/hk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/firebase-auth-api/co;

    iget-object v0, v0, Lcom/google/android/gms/internal/firebase-auth-api/hk;->b:Lcom/google/android/gms/internal/firebase-auth-api/al;

    .line 6
    invoke-static {v1, p1, p2, v2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/pl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/wk;Lcom/google/android/gms/internal/firebase-auth-api/nl;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    return-void
.end method

.method public final t(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/qm;Lcom/google/android/gms/internal/firebase-auth-api/nl;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/internal/firebase-auth-api/qm;",
            "Lcom/google/android/gms/internal/firebase-auth-api/nl<",
            "Lcom/google/android/gms/internal/firebase-auth-api/rm;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p3}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->b:Lcom/google/android/gms/internal/firebase-auth-api/qk;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zk;->f:Ljava/lang/String;

    const-string v1, "/mfaSignIn:finalize"

    .line 3
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/hk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/internal/firebase-auth-api/rm;

    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/hk;->b:Lcom/google/android/gms/internal/firebase-auth-api/al;

    .line 4
    invoke-static {v0, p2, p3, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/pl;->a(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/wk;Lcom/google/android/gms/internal/firebase-auth-api/nl;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/firebase-auth-api/al;)V

    return-void
.end method
