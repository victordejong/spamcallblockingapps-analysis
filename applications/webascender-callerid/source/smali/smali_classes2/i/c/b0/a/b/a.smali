.class public final synthetic Li/c/b0/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic f:Li/c/b0/a/b/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Li/c/b0/a/b/a;

    invoke-direct {v0}, Li/c/b0/a/b/a;-><init>()V

    sput-object v0, Li/c/b0/a/b/a;->f:Li/c/b0/a/b/a;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Li/c/b0/a/b/b;->a()Li/c/b0/b/d0;

    move-result-object v0

    return-object v0
.end method
