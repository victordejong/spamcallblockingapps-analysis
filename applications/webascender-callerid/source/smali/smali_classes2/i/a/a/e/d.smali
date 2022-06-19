.class final Li/a/a/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/a/e/l;


# static fields
.field private static final a:Li/a/a/e/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/a/a/e/d;

    invoke-direct {v0}, Li/a/a/e/d;-><init>()V

    sput-object v0, Li/a/a/e/d;->a:Li/a/a/e/l;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b()Li/a/a/e/l;
    .locals 1

    .line 1
    sget-object v0, Li/a/a/e/d;->a:Li/a/a/e/l;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Li/a/a/e/j;
    .locals 0

    .line 1
    invoke-static {}, Li/a/a/e/c;->c()Li/a/a/e/j;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Li/a/a/e/j;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Li/a/a/e/d;->a(Ljava/lang/String;Ljava/lang/String;)Li/a/a/e/j;

    move-result-object p1

    return-object p1
.end method
