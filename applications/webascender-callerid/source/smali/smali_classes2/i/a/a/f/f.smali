.class Li/a/a/f/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/a/f/z;


# static fields
.field private static final f:Li/a/a/f/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/a/a/f/f;

    invoke-direct {v0}, Li/a/a/f/f;-><init>()V

    sput-object v0, Li/a/a/f/f;->f:Li/a/a/f/z;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b()Li/a/a/f/z;
    .locals 1

    .line 1
    sget-object v0, Li/a/a/f/f;->f:Li/a/a/f/z;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/x;
    .locals 0

    .line 1
    invoke-static {}, Li/a/a/f/e;->b()Li/a/a/f/x;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Li/a/a/f/x;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Li/a/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)Li/a/a/f/x;

    move-result-object p1

    return-object p1
.end method
