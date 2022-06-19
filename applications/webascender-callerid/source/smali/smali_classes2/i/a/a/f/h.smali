.class final Li/a/a/f/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/a/f/t;


# static fields
.field private static final c:[Li/a/a/f/h;

.field static final d:Li/a/a/f/h;

.field static final e:Li/a/a/f/h;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Li/a/a/f/h;->c()[Li/a/a/f/h;

    move-result-object v0

    sput-object v0, Li/a/a/f/h;->c:[Li/a/a/f/h;

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Li/a/a/f/h;->d(B)Li/a/a/f/h;

    move-result-object v0

    sput-object v0, Li/a/a/f/h;->d:Li/a/a/f/h;

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Li/a/a/f/h;->d(B)Li/a/a/f/h;

    move-result-object v0

    sput-object v0, Li/a/a/f/h;->e:Li/a/a/f/h;

    return-void
.end method

.method private constructor <init>(B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [C

    const/4 v1, 0x0

    .line 2
    invoke-static {p1, v0, v1}, Li/a/a/d/b;->c(B[CI)V

    .line 3
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v1, p0, Li/a/a/f/h;->a:Ljava/lang/String;

    .line 4
    iput-byte p1, p0, Li/a/a/f/h;->b:B

    return-void
.end method

.method private static c()[Li/a/a/f/h;
    .locals 5

    const/16 v0, 0x100

    new-array v1, v0, [Li/a/a/f/h;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1
    new-instance v3, Li/a/a/f/h;

    int-to-byte v4, v2

    invoke-direct {v3, v4}, Li/a/a/f/h;-><init>(B)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static d(B)Li/a/a/f/h;
    .locals 1

    .line 1
    sget-object v0, Li/a/a/f/h;->c:[Li/a/a/f/h;

    and-int/lit16 p0, p0, 0xff

    aget-object p0, v0, p0

    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Li/a/a/f/h;->b:B

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/a/f/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/a/f/h;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
