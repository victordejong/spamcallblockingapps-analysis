.class public final Lp3/a/n1/a1$h;
.super Lp3/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "h"
.end annotation


# instance fields
.field public a:Lp3/a/e0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/e$a;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/a1$h;->a:Lp3/a/e0;

    .line 2
    invoke-static {p1}, Lp3/a/n1/o;->d(Lp3/a/e$a;)Ljava/util/logging/Level;

    move-result-object p1

    .line 3
    sget-object v1, Lp3/a/n1/p;->e:Ljava/util/logging/Logger;

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {v0, p1, p2}, Lp3/a/n1/p;->a(Lp3/a/e0;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs b(Lp3/a/e$a;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/a1$h;->a:Lp3/a/e0;

    .line 2
    invoke-static {p1}, Lp3/a/n1/o;->d(Lp3/a/e$a;)Ljava/util/logging/Level;

    move-result-object p1

    .line 3
    sget-object v1, Lp3/a/n1/p;->e:Ljava/util/logging/Logger;

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {v0, p1, p2}, Lp3/a/n1/p;->a(Lp3/a/e0;Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
