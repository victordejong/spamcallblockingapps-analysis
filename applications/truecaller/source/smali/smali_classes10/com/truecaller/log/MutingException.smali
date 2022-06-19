.class public abstract Lcom/truecaller/log/MutingException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/log/MutingException$MutingInitException;,
        Lcom/truecaller/log/MutingException$CloningException;,
        Lcom/truecaller/log/MutingException$MessageModificationException;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00081\u0018\u00002\u00060\u0001j\u0002`\u0002:\u0003\u0012\u0013\u0014B\u001b\u0008\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J,\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0004\u001a\u00020\u00032\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0082\u0010\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001f\u0010\u000c\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u00032\u0006\u0010\u000b\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\r\u0082\u0001\u0003\u0015\u0016\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/truecaller/log/MutingException;",
        "Ljava/lang/RuntimeException;",
        "Lkotlin/RuntimeException;",
        "",
        "original",
        "",
        "Ljava/lang/StackTraceElement;",
        "parentStackTrace",
        "mergeStackTrace",
        "(Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;",
        "throwable",
        "topStackTraceElement",
        "buildStackTraceSeparator",
        "(Ljava/lang/Throwable;Ljava/lang/StackTraceElement;)Ljava/lang/StackTraceElement;",
        "",
        "message",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/Throwable;)V",
        "CloningException",
        "MessageModificationException",
        "MutingInitException",
        "Lcom/truecaller/log/MutingException$MutingInitException;",
        "Lcom/truecaller/log/MutingException$CloningException;",
        "Lcom/truecaller/log/MutingException$MessageModificationException;",
        "log_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, p1, v0, v1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V

    .line 2
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 3
    array-length v2, p1

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    .line 4
    invoke-direct {p0, p2, p1}, Lcom/truecaller/log/MutingException;->mergeStackTrace(Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/RuntimeException;->setStackTrace([Ljava/lang/StackTraceElement;)V

    :cond_3
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ls1/z/c/f;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/truecaller/log/MutingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final buildStackTraceSeparator(Ljava/lang/Throwable;Ljava/lang/StackTraceElement;)Ljava/lang/StackTraceElement;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/lang/StackTraceElement;

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p2

    const-string v2, "<<<ORIGINAL_CAUSE>>>"

    invoke-direct {v0, v2, p1, v1, p2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private final mergeStackTrace(Ljava/lang/Throwable;[Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 7

    .line 1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-string v1, "original.stackTrace"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_2

    :cond_1
    move v1, v2

    :goto_2
    if-nez v1, :cond_5

    .line 3
    array-length v1, p2

    .line 4
    array-length v4, v0

    add-int/2addr v4, v1

    add-int/2addr v4, v3

    .line 5
    new-array v5, v4, [Ljava/lang/StackTraceElement;

    :goto_3
    if-ge v2, v4, :cond_4

    if-ge v2, v1, :cond_2

    .line 6
    aget-object v6, p2, v2

    goto :goto_4

    :cond_2
    if-ne v2, v1, :cond_3

    .line 7
    invoke-static {v0}, Le/q/f/a/d/a;->s0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/StackTraceElement;

    invoke-direct {p0, p1, v6}, Lcom/truecaller/log/MutingException;->buildStackTraceSeparator(Ljava/lang/Throwable;Ljava/lang/StackTraceElement;)Ljava/lang/StackTraceElement;

    move-result-object v6

    goto :goto_4

    :cond_3
    sub-int v6, v2, v1

    sub-int/2addr v6, v3

    .line 8
    aget-object v6, v0, v6

    .line 9
    :goto_4
    aput-object v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    move-object p2, v5

    goto :goto_5

    :cond_5
    new-array p2, v2, [Ljava/lang/StackTraceElement;

    .line 10
    :goto_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    goto :goto_0

    :cond_6
    return-object p2
.end method
