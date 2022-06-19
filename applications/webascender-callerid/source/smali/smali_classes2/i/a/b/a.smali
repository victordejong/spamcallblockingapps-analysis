.class public final synthetic Li/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Li/a/b/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Li/a/b/a;

    invoke-direct {v0}, Li/a/b/a;-><init>()V

    sput-object v0, Li/a/b/a;->a:Li/a/b/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Li/a/b/q$a;

    invoke-static {p1}, Li/a/b/q$b;->p(Li/a/b/q$a;)Z

    move-result p1

    return p1
.end method
