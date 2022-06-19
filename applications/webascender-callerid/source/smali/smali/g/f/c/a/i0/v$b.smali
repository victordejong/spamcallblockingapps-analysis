.class Lg/f/c/a/i0/v$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/c/a/i0/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/math/BigInteger;

.field private b:Ljava/math/BigInteger;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lg/f/c/a/i0/v$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lg/f/c/a/i0/v$b;-><init>()V

    return-void
.end method

.method static synthetic a(Lg/f/c/a/i0/v$b;)Ljava/math/BigInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/f/c/a/i0/v$b;->b:Ljava/math/BigInteger;

    return-object p0
.end method

.method static synthetic b(Lg/f/c/a/i0/v$b;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/f/c/a/i0/v$b;->b:Ljava/math/BigInteger;

    return-object p1
.end method

.method static synthetic c(Lg/f/c/a/i0/v$b;)Ljava/math/BigInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lg/f/c/a/i0/v$b;->a:Ljava/math/BigInteger;

    return-object p0
.end method

.method static synthetic d(Lg/f/c/a/i0/v$b;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 0

    .line 1
    iput-object p1, p0, Lg/f/c/a/i0/v$b;->a:Ljava/math/BigInteger;

    return-object p1
.end method
