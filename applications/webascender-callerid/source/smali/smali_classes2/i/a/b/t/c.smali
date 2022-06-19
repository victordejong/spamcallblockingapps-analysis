.class final Li/a/b/t/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/b/t/b;


# static fields
.field private static final a:Li/a/b/t/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li/a/b/t/c;

    .line 2
    invoke-static {}, Li/a/b/t/d;->a()Li/a/b/t/e;

    move-result-object v1

    invoke-direct {v0, v1}, Li/a/b/t/c;-><init>(Li/a/b/t/e;)V

    sput-object v0, Li/a/b/t/c;->a:Li/a/b/t/b;

    return-void
.end method

.method constructor <init>(Li/a/b/t/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Li/a/b/t/b;
    .locals 1

    .line 1
    sget-object v0, Li/a/b/t/c;->a:Li/a/b/t/b;

    return-object v0
.end method
