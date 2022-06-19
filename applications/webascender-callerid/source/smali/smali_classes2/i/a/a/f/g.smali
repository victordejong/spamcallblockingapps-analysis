.class abstract Li/a/a/f/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/a/f/n;


# static fields
.field static final a:Li/a/a/f/n;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Li/a/a/f/u;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Li/a/a/f/p;->b()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {}, Li/a/a/f/s;->a()Li/a/a/f/t;

    move-result-object v2

    .line 4
    invoke-static {}, Li/a/a/f/v;->a()Li/a/a/f/w;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    invoke-static/range {v0 .. v5}, Li/a/a/f/g;->h(Ljava/lang/String;Ljava/lang/String;Li/a/a/f/t;Li/a/a/f/w;ZZ)Li/a/a/f/d;

    move-result-object v0

    sput-object v0, Li/a/a/f/g;->a:Li/a/a/f/n;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static b(Ljava/lang/String;Ljava/lang/String;Li/a/a/f/t;Li/a/a/f/w;Z)Li/a/a/f/n;
    .locals 7

    .line 1
    invoke-static {p1}, Li/a/a/f/p;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Li/a/a/f/u;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 2
    invoke-static/range {v1 .. v6}, Li/a/a/f/g;->h(Ljava/lang/String;Ljava/lang/String;Li/a/a/f/t;Li/a/a/f/w;ZZ)Li/a/a/f/d;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-static {}, Li/a/a/f/u;->b()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {}, Li/a/a/f/p;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 5
    invoke-static/range {v0 .. v5}, Li/a/a/f/g;->h(Ljava/lang/String;Ljava/lang/String;Li/a/a/f/t;Li/a/a/f/w;ZZ)Li/a/a/f/d;

    move-result-object p0

    return-object p0
.end method

.method private static h(Ljava/lang/String;Ljava/lang/String;Li/a/a/f/t;Li/a/a/f/w;ZZ)Li/a/a/f/d;
    .locals 8

    .line 1
    new-instance v7, Li/a/a/f/d;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Li/a/a/f/d;-><init>(Ljava/lang/String;Ljava/lang/String;Li/a/a/f/t;Li/a/a/f/w;ZZ)V

    return-object v7
.end method


# virtual methods
.method public synthetic a()Z
    .locals 1

    invoke-static {p0}, Li/a/a/f/m;->a(Li/a/a/f/n;)Z

    move-result v0

    return v0
.end method

.method public abstract isValid()Z
.end method
