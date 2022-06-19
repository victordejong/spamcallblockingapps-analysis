.class public final Li/c/v/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/v/b/a$b;
    }
.end annotation


# static fields
.field private static final a:Li/c/r;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/c/v/b/a$a;

    invoke-direct {v0}, Li/c/v/b/a$a;-><init>()V

    invoke-static {v0}, Li/c/v/a/a;->d(Ljava/util/concurrent/Callable;)Li/c/r;

    move-result-object v0

    sput-object v0, Li/c/v/b/a;->a:Li/c/r;

    return-void
.end method

.method public static a()Li/c/r;
    .locals 1

    .line 1
    sget-object v0, Li/c/v/b/a;->a:Li/c/r;

    invoke-static {v0}, Li/c/v/a/a;->e(Li/c/r;)Li/c/r;

    move-result-object v0

    return-object v0
.end method
