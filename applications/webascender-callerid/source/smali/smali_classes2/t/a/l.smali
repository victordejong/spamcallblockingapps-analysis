.class Lt/a/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt/a/l$b;,
        Lt/a/l$d;,
        Lt/a/l$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Suas"

    .line 1
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lt/a/l;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method static synthetic a(Ljava/lang/Object;Ljava/lang/Object;Lt/a/h;Lt/a/k;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lt/a/l;->d(Ljava/lang/Object;Ljava/lang/Object;Lt/a/h;Lt/a/k;Z)V

    return-void
.end method

.method static b(Ljava/lang/Class;Lt/a/h;Lt/a/k;)Lt/a/l$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lt/a/h<",
            "TE;>;",
            "Lt/a/k<",
            "TE;>;)",
            "Lt/a/l$c;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt/a/l$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lt/a/l$b;-><init>(Ljava/lang/Class;Lt/a/k;Lt/a/h;Lt/a/l$a;)V

    return-object v0
.end method

.method static c(Lt/a/p;Lt/a/h;Lt/a/k;)Lt/a/l$c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lt/a/p<",
            "TE;>;",
            "Lt/a/h<",
            "Lt/a/o;",
            ">;",
            "Lt/a/k<",
            "TE;>;)",
            "Lt/a/l$c;"
        }
    .end annotation

    .line 1
    new-instance v0, Lt/a/l$d;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p0, p1, v1}, Lt/a/l$d;-><init>(Lt/a/k;Lt/a/p;Lt/a/h;Lt/a/l$a;)V

    return-object v0
.end method

.method private static d(Ljava/lang/Object;Ljava/lang/Object;Lt/a/h;Lt/a/k;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;",
            "Lt/a/h<",
            "TE;>;",
            "Lt/a/k<",
            "TE;>;Z)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p4, :cond_0

    .line 1
    invoke-interface {p3, p0}, Lt/a/k;->update(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p2, p1, p0}, Lt/a/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p3, p0}, Lt/a/k;->update(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_1
    sget-object p0, Lt/a/l;->a:Ljava/util/logging/Logger;

    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string p2, "Requested stateKey not found in store"

    invoke-virtual {p0, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
