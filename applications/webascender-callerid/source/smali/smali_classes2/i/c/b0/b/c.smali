.class public final synthetic Li/c/b0/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Li/c/b0/b/c;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Li/c/b0/b/c;

    invoke-direct {v0}, Li/c/b0/b/c;-><init>()V

    sput-object v0, Li/c/b0/b/c;->a:Li/c/b0/b/c;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
