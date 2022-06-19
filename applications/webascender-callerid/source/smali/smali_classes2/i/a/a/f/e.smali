.class final Li/a/a/f/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/a/f/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a/a/f/e$a;
    }
.end annotation


# static fields
.field private static final a:Li/a/a/f/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/a/a/f/e;

    invoke-direct {v0}, Li/a/a/f/e;-><init>()V

    sput-object v0, Li/a/a/f/e;->a:Li/a/a/f/x;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b()Li/a/a/f/x;
    .locals 1

    .line 1
    sget-object v0, Li/a/a/f/e;->a:Li/a/a/f/x;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Li/a/a/f/l;
    .locals 0

    .line 1
    invoke-static {}, Li/a/a/f/e$a;->d()Li/a/a/f/e$a;

    move-result-object p1

    return-object p1
.end method
