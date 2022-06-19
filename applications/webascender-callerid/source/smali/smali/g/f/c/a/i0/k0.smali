.class public final Lg/f/c/a/i0/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/security/SecureRandom;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg/f/c/a/i0/k0$a;

    invoke-direct {v0}, Lg/f/c/a/i0/k0$a;-><init>()V

    sput-object v0, Lg/f/c/a/i0/k0;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method static synthetic a()Ljava/security/SecureRandom;
    .locals 1

    .line 1
    invoke-static {}, Lg/f/c/a/i0/k0;->b()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method private static b()Ljava/security/SecureRandom;
    .locals 1

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 2
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    return-object v0
.end method

.method public static c(I)[B
    .locals 1

    .line 1
    new-array p0, p0, [B

    .line 2
    sget-object v0, Lg/f/c/a/i0/k0;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/SecureRandom;

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method
