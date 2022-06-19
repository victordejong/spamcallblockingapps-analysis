.class public abstract Li/a/d/e/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Li/a/d/e/d;

.field private static final b:Li/a/d/e/d;

.field private static final c:Li/a/d/e/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Li/a/a/c/i;->b()Li/a/a/c/j;

    move-result-object v0

    invoke-static {v0}, Li/a/d/e/d;->b(Li/a/a/c/j;)Li/a/d/e/d;

    .line 2
    sget-object v0, Li/a/e/a/a/a;->m0:Li/a/a/c/f;

    const-string v1, "unknown_service:java"

    .line 3
    invoke-static {v0, v1}, Li/a/a/c/i;->c(Li/a/a/c/f;Ljava/lang/Object;)Li/a/a/c/j;

    move-result-object v0

    invoke-static {v0}, Li/a/d/e/d;->b(Li/a/a/c/j;)Li/a/d/e/d;

    move-result-object v0

    sput-object v0, Li/a/d/e/d;->b:Li/a/d/e/d;

    .line 4
    invoke-static {}, Li/a/a/c/i;->a()Li/a/a/c/k;

    move-result-object v1

    sget-object v2, Li/a/e/a/a/a;->q0:Li/a/a/c/f;

    const-string v3, "opentelemetry"

    .line 5
    invoke-interface {v1, v2, v3}, Li/a/a/c/k;->b(Li/a/a/c/f;Ljava/lang/Object;)Li/a/a/c/k;

    sget-object v2, Li/a/e/a/a/a;->r0:Li/a/a/c/f;

    const-string v3, "java"

    .line 6
    invoke-interface {v1, v2, v3}, Li/a/a/c/k;->b(Li/a/a/c/f;Ljava/lang/Object;)Li/a/a/c/k;

    sget-object v2, Li/a/e/a/a/a;->s0:Li/a/a/c/f;

    .line 7
    invoke-static {}, Li/a/d/e/d;->i()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Li/a/a/c/k;->b(Li/a/a/c/f;Ljava/lang/Object;)Li/a/a/c/k;

    .line 8
    invoke-interface {v1}, Li/a/a/c/k;->c()Li/a/a/c/j;

    move-result-object v1

    .line 9
    invoke-static {v1}, Li/a/d/e/d;->b(Li/a/a/c/j;)Li/a/d/e/d;

    move-result-object v1

    sput-object v1, Li/a/d/e/d;->a:Li/a/d/e/d;

    .line 10
    invoke-virtual {v0, v1}, Li/a/d/e/d;->h(Li/a/d/e/d;)Li/a/d/e/d;

    move-result-object v0

    sput-object v0, Li/a/d/e/d;->c:Li/a/d/e/d;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Li/a/a/c/j;)V
    .locals 1

    .line 1
    sget-object v0, Li/a/d/e/b;->f:Li/a/d/e/b;

    invoke-interface {p0, v0}, Li/a/a/c/j;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static b(Li/a/a/c/j;)Li/a/d/e/d;
    .locals 1

    const-string v0, "attributes"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Li/a/a/c/j;

    invoke-static {v0}, Li/a/d/e/d;->a(Li/a/a/c/j;)V

    .line 2
    new-instance v0, Li/a/d/e/c;

    invoke-direct {v0, p0}, Li/a/d/e/c;-><init>(Li/a/a/c/j;)V

    return-object v0
.end method

.method public static d()Li/a/d/e/d;
    .locals 1

    .line 1
    sget-object v0, Li/a/d/e/d;->c:Li/a/d/e/d;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xff

    if-gt v0, v1, :cond_0

    invoke-static {p0}, Li/a/a/d/c;->b(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static f(Li/a/a/c/f;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/a/c/f<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Li/a/a/c/f;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Li/a/a/c/f;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Li/a/d/e/d;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic g(Li/a/a/c/f;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-static {p0}, Li/a/d/e/d;->f(Li/a/a/c/f;)Z

    move-result p0

    const-string v0, "Attribute key should be a ASCII string with a length greater than 0 and not exceed 255 characters."

    .line 2
    invoke-static {p0, v0}, Li/a/a/d/d;->a(ZLjava/lang/String;)V

    const-string p0, "Attribute value should be a ASCII string with a length not exceed 255 characters."

    .line 3
    invoke-static {p1, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method private static i()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 2
    :try_start_0
    const-class v1, Li/a/d/e/d;

    const-string v2, "/io/opentelemetry/sdk/version.properties"

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "sdk.version"

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    const-string v0, "unknown"

    return-object v0
.end method


# virtual methods
.method public abstract c()Li/a/a/c/j;
.end method

.method public h(Li/a/d/e/d;)Li/a/d/e/d;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    invoke-static {}, Li/a/a/c/i;->a()Li/a/a/c/k;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Li/a/d/e/d;->c()Li/a/a/c/j;

    move-result-object v1

    invoke-interface {v0, v1}, Li/a/a/c/k;->a(Li/a/a/c/j;)Li/a/a/c/k;

    .line 3
    invoke-virtual {p1}, Li/a/d/e/d;->c()Li/a/a/c/j;

    move-result-object p1

    invoke-interface {v0, p1}, Li/a/a/c/k;->a(Li/a/a/c/j;)Li/a/a/c/k;

    .line 4
    new-instance p1, Li/a/d/e/c;

    invoke-interface {v0}, Li/a/a/c/k;->c()Li/a/a/c/j;

    move-result-object v0

    invoke-direct {p1, v0}, Li/a/d/e/c;-><init>(Li/a/a/c/j;)V

    return-object p1
.end method
