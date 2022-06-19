.class abstract Li/a/d/f/y/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/d/f/y/j;


# static fields
.field static final a:Li/a/d/f/y/j;

.field static final b:Li/a/d/f/y/j;

.field static final c:Li/a/d/f/y/j;

.field static final d:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Li/a/a/f/r;",
            "Li/a/d/f/y/j;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v0, Li/a/a/f/r;->OK:Li/a/a/f/r;

    const-string v1, ""

    invoke-static {v0, v1}, Li/a/d/f/y/f;->c(Li/a/a/f/r;Ljava/lang/String;)Li/a/d/f/y/j;

    move-result-object v2

    sput-object v2, Li/a/d/f/y/f;->a:Li/a/d/f/y/j;

    .line 2
    sget-object v2, Li/a/a/f/r;->UNSET:Li/a/a/f/r;

    invoke-static {v2, v1}, Li/a/d/f/y/f;->c(Li/a/a/f/r;Ljava/lang/String;)Li/a/d/f/y/j;

    move-result-object v3

    sput-object v3, Li/a/d/f/y/f;->b:Li/a/d/f/y/j;

    .line 3
    sget-object v3, Li/a/a/f/r;->ERROR:Li/a/a/f/r;

    invoke-static {v3, v1}, Li/a/d/f/y/f;->c(Li/a/a/f/r;Ljava/lang/String;)Li/a/d/f/y/j;

    move-result-object v4

    sput-object v4, Li/a/d/f/y/f;->c:Li/a/d/f/y/j;

    .line 4
    new-instance v4, Ljava/util/EnumMap;

    const-class v5, Li/a/a/f/r;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sput-object v4, Li/a/d/f/y/f;->d:Ljava/util/EnumMap;

    .line 5
    invoke-static {}, Li/a/d/f/y/i;->d()Li/a/d/f/y/j;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Li/a/d/f/y/i;->c()Li/a/d/f/y/j;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-static {}, Li/a/d/f/y/i;->b()Li/a/d/f/y/j;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Li/a/a/f/r;->values()[Li/a/a/f/r;

    move-result-object v0

    .line 9
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 10
    sget-object v5, Li/a/d/f/y/f;->d:Ljava/util/EnumMap;

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Li/a/d/f/y/j;

    if-nez v6, :cond_0

    .line 11
    invoke-static {v4, v1}, Li/a/d/f/y/f;->c(Li/a/a/f/r;Ljava/lang/String;)Li/a/d/f/y/j;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(Li/a/a/f/r;Ljava/lang/String;)Li/a/d/f/y/j;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p0, p1}, Li/a/d/f/y/f;->c(Li/a/a/f/r;Ljava/lang/String;)Li/a/d/f/y/j;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    :goto_0
    sget-object p1, Li/a/d/f/y/f;->d:Ljava/util/EnumMap;

    invoke-virtual {p1, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li/a/d/f/y/j;

    return-object p0
.end method

.method private static c(Li/a/a/f/r;Ljava/lang/String;)Li/a/d/f/y/j;
    .locals 1

    .line 1
    new-instance v0, Li/a/d/f/y/b;

    invoke-direct {v0, p0, p1}, Li/a/d/f/y/b;-><init>(Li/a/a/f/r;Ljava/lang/String;)V

    return-object v0
.end method
