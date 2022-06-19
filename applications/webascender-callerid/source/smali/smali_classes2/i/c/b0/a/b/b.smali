.class public final Li/c/b0/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/a/b/b$a;
    }
.end annotation


# static fields
.field private static final a:Li/c/b0/b/d0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/a/b/a;->f:Li/c/b0/a/b/a;

    .line 2
    invoke-static {v0}, Li/c/b0/a/a/a;->d(Ljava/util/concurrent/Callable;)Li/c/b0/b/d0;

    move-result-object v0

    sput-object v0, Li/c/b0/a/b/b;->a:Li/c/b0/b/d0;

    return-void
.end method

.method static synthetic a()Li/c/b0/b/d0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Li/c/b0/a/b/b$a;->a:Li/c/b0/b/d0;

    return-object v0
.end method

.method public static b()Li/c/b0/b/d0;
    .locals 1

    .line 1
    sget-object v0, Li/c/b0/a/b/b;->a:Li/c/b0/b/d0;

    invoke-static {v0}, Li/c/b0/a/a/a;->e(Li/c/b0/b/d0;)Li/c/b0/b/d0;

    move-result-object v0

    return-object v0
.end method
