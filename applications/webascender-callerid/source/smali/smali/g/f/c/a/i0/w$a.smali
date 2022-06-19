.class public final Lg/f/c/a/i0/w$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/c/a/i0/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:[B

.field private final b:[B


# direct methods
.method private constructor <init>([B[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/f/c/a/i0/w$a;->a:[B

    .line 3
    iput-object p2, p0, Lg/f/c/a/i0/w$a;->b:[B

    return-void
.end method

.method public static c()Lg/f/c/a/i0/w$a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x20

    .line 1
    invoke-static {v0}, Lg/f/c/a/i0/k0;->c(I)[B

    move-result-object v0

    .line 2
    invoke-static {v0}, Lg/f/c/a/i0/u;->e([B)[B

    move-result-object v1

    invoke-static {v1}, Lg/f/c/a/i0/u;->i([B)[B

    move-result-object v1

    .line 3
    new-instance v2, Lg/f/c/a/i0/w$a;

    invoke-direct {v2, v1, v0}, Lg/f/c/a/i0/w$a;-><init>([B[B)V

    return-object v2
.end method


# virtual methods
.method public a()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lg/f/c/a/i0/w$a;->b:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public b()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lg/f/c/a/i0/w$a;->a:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method
