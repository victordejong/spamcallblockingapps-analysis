.class final Lu/i/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/i/g$d;,
        Lu/i/g$e;,
        Lu/i/g$a;,
        Lu/i/g$c;,
        Lu/i/g$b;
    }
.end annotation


# static fields
.field static final a:Ljava/util/logging/Logger;

.field static final b:Lu/i/g$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lu/i/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lu/i/g;->a:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Lu/i/g$d;

    invoke-direct {v0}, Lu/i/g$d;-><init>()V

    sput-object v0, Lu/i/g;->b:Lu/i/g$d;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lu/i/h;I)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lu/i/h;->c()I

    move-result v0

    invoke-static {p1, v0}, Lu/i/e$c;->c(II)I

    move-result v0

    .line 2
    sget-object v1, Lu/i/g;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lu/i/h;->c()I

    move-result v2

    invoke-static {p1, v2}, Lu/i/e$c;->a(II)I

    move-result p1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p0}, Lu/i/h;->c()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p1

    const-string p1, "Skipping field: byte=%s, fieldNumber=%s, wireType=%s"

    .line 5
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-static {p0, v0}, Lu/i/e$c;->b(Lu/i/h;I)Z

    return-void
.end method
