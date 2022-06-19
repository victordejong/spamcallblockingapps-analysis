.class public final Lcom/facebook/internal/u0/l/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/u0/l/c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0011\u0008\u0002\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/facebook/internal/instrument/crashreport/CrashHandler;",
        "Ljava/lang/Thread$UncaughtExceptionHandler;",
        "previousHandler",
        "(Ljava/lang/Thread$UncaughtExceptionHandler;)V",
        "uncaughtException",
        "",
        "t",
        "Ljava/lang/Thread;",
        "e",
        "",
        "Companion",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final b:Lcom/facebook/internal/u0/l/c$a;

.field public static final c:Ljava/lang/String;

.field public static d:Lcom/facebook/internal/u0/l/c;


# instance fields
.field public final a:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/facebook/internal/u0/l/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/u0/l/c$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/facebook/internal/u0/l/c;->b:Lcom/facebook/internal/u0/l/c$a;

    .line 1
    const-class v0, Lcom/facebook/internal/u0/l/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/u0/l/c;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/facebook/internal/u0/l/c;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 11

    const-string v0, "t"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "e"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object v2, p2

    move-object v3, v1

    :goto_0
    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_2

    .line 1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const-string v5, "t.stackTrace"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v5, v3

    move v6, v4

    :cond_0
    if-ge v6, v5, :cond_1

    aget-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    .line 2
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "element.className"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x2

    const-string v9, "com.facebook"

    invoke-static {v7, v9, v4, v8}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    .line 3
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 4
    invoke-static {p2}, Lcom/facebook/internal/u0/h;->a(Ljava/lang/Throwable;)V

    .line 5
    sget-object v2, Lcom/facebook/internal/u0/i$c;->d:Lcom/facebook/internal/u0/i$c;

    .line 6
    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lcom/facebook/internal/u0/i;

    invoke-direct {v0, p2, v2, v1}, Lcom/facebook/internal/u0/i;-><init>(Ljava/lang/Throwable;Lcom/facebook/internal/u0/i$c;Ls1/z/c/f;)V

    .line 8
    invoke-virtual {v0}, Lcom/facebook/internal/u0/i;->c()V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/facebook/internal/u0/l/c;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method
