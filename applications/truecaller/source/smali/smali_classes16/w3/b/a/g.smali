.class public abstract Lw3/b/a/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/b/a/g$a;,
        Lw3/b/a/g$b;
    }
.end annotation


# static fields
.field public static final b:Lw3/b/a/g;

.field public static final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lw3/b/a/j0/i;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lw3/b/a/j0/h;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lw3/b/a/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/d0;->f:Lw3/b/a/g;

    sput-object v0, Lw3/b/a/g;->b:Lw3/b/a/g;

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lw3/b/a/g;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lw3/b/a/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lw3/b/a/g;->e:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lw3/b/a/g;->a:Ljava/lang/String;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Id must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static d(Ljava/lang/String;I)Lw3/b/a/g;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lw3/b/a/g;->b:Lw3/b/a/g;

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lw3/b/a/j0/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p1}, Lw3/b/a/j0/g;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-object v0
.end method

.method public static e(Ljava/lang/String;)Lw3/b/a/g;
    .locals 4
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lw3/b/a/g;->h()Lw3/b/a/g;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "UTC"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object p0, Lw3/b/a/g;->b:Lw3/b/a/g;

    return-object p0

    .line 4
    :cond_1
    invoke-static {}, Lw3/b/a/g;->o()Lw3/b/a/j0/i;

    move-result-object v0

    invoke-interface {v0, p0}, Lw3/b/a/j0/i;->a(Ljava/lang/String;)Lw3/b/a/g;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    const-string v0, "+"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 6
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The datetime zone id \'"

    const-string v2, "\' is not recognised"

    invoke-static {v1, p0, v2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_4
    :goto_0
    sget-object v0, Lw3/b/a/g$a;->b:Lw3/b/a/i0/b;

    invoke-virtual {v0, p0}, Lw3/b/a/i0/b;->d(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p0, v0

    neg-int p0, p0

    int-to-long v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    .line 8
    sget-object p0, Lw3/b/a/g;->b:Lw3/b/a/g;

    return-object p0

    .line 9
    :cond_5
    invoke-static {p0}, Lw3/b/a/g;->t(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0, p0}, Lw3/b/a/g;->d(Ljava/lang/String;I)Lw3/b/a/g;

    move-result-object p0

    return-object p0
.end method

.method public static f(I)Lw3/b/a/g;
    .locals 2

    const v0, -0x5265bff

    if-lt p0, v0, :cond_0

    const v0, 0x5265bff

    if-gt p0, v0, :cond_0

    .line 1
    invoke-static {p0}, Lw3/b/a/g;->t(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0, p0}, Lw3/b/a/g;->d(Ljava/lang/String;I)Lw3/b/a/g;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Millis out of range: "

    invoke-static {v1, p0}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static g(Ljava/util/TimeZone;)Lw3/b/a/g;
    .locals 4

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lw3/b/a/g;->h()Lw3/b/a/g;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    const-string v0, "UTC"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object p0, Lw3/b/a/g;->b:Lw3/b/a/g;

    return-object p0

    :cond_1
    const/4 v0, 0x0

    .line 5
    sget-object v1, Lw3/b/a/g$a;->a:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-static {}, Lw3/b/a/g;->o()Lw3/b/a/j0/i;

    move-result-object v2

    if-eqz v1, :cond_2

    .line 7
    invoke-interface {v2, v1}, Lw3/b/a/j0/i;->a(Ljava/lang/String;)Lw3/b/a/g;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    .line 8
    invoke-interface {v2, p0}, Lw3/b/a/j0/i;->a(Ljava/lang/String;)Lw3/b/a/g;

    move-result-object v0

    :cond_3
    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    if-nez v1, :cond_a

    const-string v0, "GMT+"

    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "GMT-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_5
    const/4 v0, 0x3

    .line 10
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x39

    if-le v0, v1, :cond_8

    .line 13
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    .line 15
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-ge p0, v1, :cond_7

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    .line 17
    invoke-static {v1, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    if-ltz v1, :cond_6

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 18
    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 19
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 20
    :cond_8
    sget-object v0, Lw3/b/a/g$a;->b:Lw3/b/a/i0/b;

    invoke-virtual {v0, p0}, Lw3/b/a/i0/b;->d(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int p0, v0

    neg-int p0, p0

    int-to-long v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_9

    .line 21
    sget-object p0, Lw3/b/a/g;->b:Lw3/b/a/g;

    return-object p0

    .line 22
    :cond_9
    invoke-static {p0}, Lw3/b/a/g;->t(I)Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v0, p0}, Lw3/b/a/g;->d(Ljava/lang/String;I)Lw3/b/a/g;

    move-result-object p0

    return-object p0

    .line 24
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The datetime zone id \'"

    const-string v2, "\' is not recognised"

    invoke-static {v1, p0, v2}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The TimeZone id must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static h()Lw3/b/a/g;
    .locals 3

    .line 1
    sget-object v0, Lw3/b/a/g;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/b/a/g;

    if-nez v0, :cond_3

    :try_start_0
    const-string v1, "user.timezone"

    .line 2
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v1}, Lw3/b/a/g;->e(Ljava/lang/String;)Lw3/b/a/g;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-nez v0, :cond_1

    .line 4
    :try_start_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Lw3/b/a/g;->g(Ljava/util/TimeZone;)Lw3/b/a/g;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    if-nez v0, :cond_2

    .line 5
    sget-object v0, Lw3/b/a/g;->b:Lw3/b/a/g;

    .line 6
    :cond_2
    sget-object v1, Lw3/b/a/g;->e:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/b/a/g;

    :cond_3
    return-object v0
.end method

.method public static i()Lw3/b/a/j0/i;
    .locals 3

    :try_start_0
    const-string v0, "org.joda.time.DateTimeZone.Provider"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 2
    :try_start_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/b/a/j0/i;

    .line 3
    invoke-static {v0}, Lw3/b/a/g;->u(Lw3/b/a/j0/i;)Lw3/b/a/j0/i;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 4
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_0
    :try_start_3
    const-string v0, "org.joda.time.DateTimeZone.Folder"

    .line 5
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    if-eqz v0, :cond_1

    .line 6
    :try_start_4
    new-instance v1, Lw3/b/a/j0/k;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lw3/b/a/j0/k;-><init>(Ljava/io/File;)V

    .line 7
    invoke-static {v1}, Lw3/b/a/g;->u(Lw3/b/a/j0/i;)Lw3/b/a/j0/i;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    return-object v1

    :catch_2
    move-exception v0

    .line 8
    :try_start_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3

    .line 9
    :catch_3
    :cond_1
    :try_start_6
    new-instance v0, Lw3/b/a/j0/k;

    const-string v1, "org/joda/time/tz/data"

    invoke-direct {v0, v1}, Lw3/b/a/j0/k;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {v0}, Lw3/b/a/g;->u(Lw3/b/a/j0/i;)Lw3/b/a/j0/i;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    return-object v0

    :catch_4
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    new-instance v0, Lw3/b/a/j0/j;

    invoke-direct {v0}, Lw3/b/a/j0/j;-><init>()V

    return-object v0
.end method

.method public static l()Lw3/b/a/j0/h;
    .locals 3

    .line 1
    sget-object v0, Lw3/b/a/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/b/a/j0/h;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "org.joda.time.DateTimeZone.NameProvider"

    .line 2
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw3/b/a/j0/h;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lw3/b/a/j0/f;

    invoke-direct {v1}, Lw3/b/a/j0/f;-><init>()V

    .line 6
    :cond_1
    sget-object v2, Lw3/b/a/g;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw3/b/a/j0/h;

    goto :goto_1

    :cond_2
    move-object v0, v1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static o()Lw3/b/a/j0/i;
    .locals 3

    .line 1
    sget-object v0, Lw3/b/a/g;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw3/b/a/j0/i;

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lw3/b/a/g;->i()Lw3/b/a/j0/i;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lw3/b/a/j0/i;

    :cond_0
    return-object v1
.end method

.method public static t(I)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-ltz p0, :cond_0

    const/16 v1, 0x2b

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/16 v1, 0x2d

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    neg-int p0, p0

    :goto_0
    const v1, 0x36ee80

    .line 4
    div-int v2, p0, v1

    .line 5
    sget v3, Lw3/b/a/i0/h;->b:I

    const/4 v3, 0x2

    .line 6
    :try_start_0
    invoke-static {v0, v2, v3}, Lw3/b/a/i0/h;->a(Ljava/lang/Appendable;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    mul-int/2addr v2, v1

    sub-int/2addr p0, v2

    const v1, 0xea60

    .line 7
    div-int v2, p0, v1

    const/16 v4, 0x3a

    .line 8
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 9
    :try_start_1
    invoke-static {v0, v2, v3}, Lw3/b/a/i0/h;->a(Ljava/lang/Appendable;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    mul-int/2addr v2, v1

    sub-int/2addr p0, v2

    if-nez p0, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_1
    div-int/lit16 v1, p0, 0x3e8

    .line 12
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 13
    :try_start_2
    invoke-static {v0, v1, v3}, Lw3/b/a/i0/h;->a(Ljava/lang/Appendable;II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    mul-int/lit16 v1, v1, 0x3e8

    sub-int/2addr p0, v1

    if-nez p0, :cond_2

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 v1, 0x2e

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v1, 0x3

    .line 16
    :try_start_3
    invoke-static {v0, p0, v1}, Lw3/b/a/i0/h;->a(Ljava/lang/Appendable;II)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 17
    :catch_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static u(Lw3/b/a/j0/i;)Lw3/b/a/j0/i;
    .locals 2

    .line 1
    invoke-interface {p0}, Lw3/b/a/j0/i;->b()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "UTC"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lw3/b/a/g;->b:Lw3/b/a/g;

    invoke-interface {p0, v1}, Lw3/b/a/j0/i;->a(Ljava/lang/String;)Lw3/b/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lw3/b/a/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid UTC zone provided"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provider doesn\'t support UTC"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The provider doesn\'t have any available ids"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(JZ)J
    .locals 10

    .line 1
    invoke-virtual {p0, p1, p2}, Lw3/b/a/g;->m(J)I

    move-result v0

    int-to-long v1, v0

    sub-long v1, p1, v1

    .line 2
    invoke-virtual {p0, v1, v2}, Lw3/b/a/g;->m(J)I

    move-result v3

    if-eq v0, v3, :cond_4

    if-nez p3, :cond_0

    if-gez v0, :cond_4

    .line 3
    :cond_0
    invoke-virtual {p0, v1, v2}, Lw3/b/a/g;->r(J)J

    move-result-wide v4

    cmp-long v1, v4, v1

    const-wide v6, 0x7fffffffffffffffL

    if-nez v1, :cond_1

    move-wide v4, v6

    :cond_1
    int-to-long v1, v3

    sub-long v1, p1, v1

    .line 4
    invoke-virtual {p0, v1, v2}, Lw3/b/a/g;->r(J)J

    move-result-wide v8

    cmp-long v1, v8, v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v6, v8

    :goto_0
    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    if-nez p3, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    new-instance p3, Lw3/b/a/m;

    .line 6
    iget-object v0, p0, Lw3/b/a/g;->a:Ljava/lang/String;

    .line 7
    invoke-direct {p3, p1, p2, v0}, Lw3/b/a/m;-><init>(JLjava/lang/String;)V

    throw p3

    :cond_4
    move v0, v3

    :goto_1
    int-to-long v0, v0

    sub-long v2, p1, v0

    xor-long v4, p1, v2

    const-wide/16 v6, 0x0

    cmp-long p3, v4, v6

    if-gez p3, :cond_6

    xor-long/2addr p1, v0

    cmp-long p1, p1, v6

    if-ltz p1, :cond_5

    goto :goto_2

    .line 8
    :cond_5
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Subtracting time zone offset caused overflow"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    return-wide v2
.end method

.method public b(JZJ)J
    .locals 2

    .line 1
    invoke-virtual {p0, p4, p5}, Lw3/b/a/g;->m(J)I

    move-result p4

    int-to-long v0, p4

    sub-long v0, p1, v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lw3/b/a/g;->m(J)I

    move-result p5

    if-ne p5, p4, :cond_0

    return-wide v0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lw3/b/a/g;->a(JZ)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(J)J
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p2}, Lw3/b/a/g;->m(J)I

    move-result v0

    int-to-long v0, v0

    add-long v2, p1, v0

    xor-long v4, p1, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    xor-long/2addr p1, v0

    cmp-long p1, p1, v6

    if-gez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "Adding time zone offset caused overflow"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-wide v2
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/g;->a:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x39

    return v0
.end method

.method public j(Lw3/b/a/g;J)J
    .locals 6

    if-nez p1, :cond_0

    .line 1
    invoke-static {}, Lw3/b/a/g;->h()Lw3/b/a/g;

    move-result-object p1

    :cond_0
    move-object v0, p1

    if-ne v0, p0, :cond_1

    return-wide p2

    .line 2
    :cond_1
    invoke-virtual {p0, p2, p3}, Lw3/b/a/g;->c(J)J

    move-result-wide v1

    const/4 v3, 0x0

    move-wide v4, p2

    .line 3
    invoke-virtual/range {v0 .. v5}, Lw3/b/a/g;->b(JZJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public abstract k(J)Ljava/lang/String;
.end method

.method public abstract m(J)I
.end method

.method public n(J)I
    .locals 8

    .line 1
    invoke-virtual {p0, p1, p2}, Lw3/b/a/g;->m(J)I

    move-result v0

    int-to-long v1, v0

    sub-long v1, p1, v1

    .line 2
    invoke-virtual {p0, v1, v2}, Lw3/b/a/g;->m(J)I

    move-result v3

    if-eq v0, v3, :cond_2

    sub-int v4, v0, v3

    if-gez v4, :cond_3

    .line 3
    invoke-virtual {p0, v1, v2}, Lw3/b/a/g;->r(J)J

    move-result-wide v4

    cmp-long v1, v4, v1

    const-wide v6, 0x7fffffffffffffffL

    if-nez v1, :cond_0

    move-wide v4, v6

    :cond_0
    int-to-long v1, v3

    sub-long/2addr p1, v1

    .line 4
    invoke-virtual {p0, p1, p2}, Lw3/b/a/g;->r(J)J

    move-result-wide v1

    cmp-long p1, v1, p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v6, v1

    :goto_0
    cmp-long p1, v4, v6

    if-eqz p1, :cond_3

    return v0

    :cond_2
    if-ltz v0, :cond_3

    .line 5
    invoke-virtual {p0, v1, v2}, Lw3/b/a/g;->s(J)J

    move-result-wide p1

    cmp-long v4, p1, v1

    if-gez v4, :cond_3

    .line 6
    invoke-virtual {p0, p1, p2}, Lw3/b/a/g;->m(J)I

    move-result v4

    sub-int v0, v4, v0

    sub-long/2addr v1, p1

    int-to-long p1, v0

    cmp-long p1, v1, p1

    if-gtz p1, :cond_3

    return v4

    :cond_3
    return v3
.end method

.method public abstract p(J)I
.end method

.method public abstract q()Z
.end method

.method public abstract r(J)J
.end method

.method public abstract s(J)J
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public writeReplace()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    new-instance v0, Lw3/b/a/g$b;

    iget-object v1, p0, Lw3/b/a/g;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lw3/b/a/g$b;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
