.class final Li/a/a/e/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/a/e/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a/a/e/c$b;,
        Li/a/a/e/c$d;,
        Li/a/a/e/c$c;
    }
.end annotation


# static fields
.field private static final a:Li/a/a/e/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/a/a/e/c;

    invoke-direct {v0}, Li/a/a/e/c;-><init>()V

    sput-object v0, Li/a/a/e/c;->a:Li/a/a/e/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static c()Li/a/a/e/j;
    .locals 1

    .line 1
    sget-object v0, Li/a/a/e/c;->a:Li/a/a/e/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Li/a/a/e/i;
    .locals 1

    const-string v0, "name"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Li/a/a/e/n/a;->a(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "Name should be a ASCII string with a length no greater than 255 characters."

    invoke-static {p1, v0}, Li/a/a/d/d;->a(ZLjava/lang/String;)V

    .line 3
    new-instance p1, Li/a/a/e/c$d$a;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Li/a/a/e/c$d$a;-><init>(Li/a/a/e/c$a;)V

    return-object p1
.end method

.method public b(Ljava/lang/String;)Li/a/a/e/g;
    .locals 1

    const-string v0, "name"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Li/a/a/e/n/a;->a(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "Name should be a ASCII string with a length no greater than 255 characters."

    invoke-static {p1, v0}, Li/a/a/d/d;->a(ZLjava/lang/String;)V

    .line 3
    new-instance p1, Li/a/a/e/c$c$b;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Li/a/a/e/c$c$b;-><init>(Li/a/a/e/c$a;)V

    return-object p1
.end method
