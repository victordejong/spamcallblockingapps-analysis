.class public final Li/c/z/e/a/b;
.super Li/c/b;
.source "SourceFile"


# static fields
.field public static final a:Li/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/c/z/e/a/b;

    invoke-direct {v0}, Li/c/z/e/a/b;-><init>()V

    sput-object v0, Li/c/z/e/a/b;->a:Li/c/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b;-><init>()V

    return-void
.end method


# virtual methods
.method public m(Li/c/c;)V
    .locals 0

    .line 1
    invoke-static {p1}, Li/c/z/a/c;->complete(Li/c/c;)V

    return-void
.end method
