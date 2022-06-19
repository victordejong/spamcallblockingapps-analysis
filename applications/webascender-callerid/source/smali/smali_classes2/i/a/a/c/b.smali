.class public final synthetic Li/a/a/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic a:Li/a/a/c/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Li/a/a/c/b;

    invoke-direct {v0}, Li/a/a/c/b;-><init>()V

    sput-object v0, Li/a/a/c/b;->a:Li/a/a/c/b;

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

    check-cast p1, Li/a/a/c/f;

    invoke-interface {p1}, Li/a/a/c/f;->getKey()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
