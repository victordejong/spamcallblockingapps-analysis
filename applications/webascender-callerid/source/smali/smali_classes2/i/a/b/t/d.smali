.class final Li/a/b/t/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/b/t/e;


# static fields
.field private static final a:Li/a/b/t/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/a/b/t/d;

    invoke-direct {v0}, Li/a/b/t/d;-><init>()V

    sput-object v0, Li/a/b/t/d;->a:Li/a/b/t/d;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Li/a/b/t/e;
    .locals 1

    .line 1
    sget-object v0, Li/a/b/t/d;->a:Li/a/b/t/d;

    return-object v0
.end method
