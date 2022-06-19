.class public final Le/a/c/o/a$a;
.super Ls1/w/a;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/CoroutineExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/o/a;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/CoroutineExceptionHandler$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls1/w/a;-><init>(Ls1/w/f$b;)V

    return-void
.end method


# virtual methods
.method public handleException(Ls1/w/f;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object p1, Le/a/c/h/l/b;->d:Le/a/c/h/l/b;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p2, v0}, Le/a/c/h/l/b;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method
