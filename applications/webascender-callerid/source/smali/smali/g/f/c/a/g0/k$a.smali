.class synthetic Lg/f/c/a/g0/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/f/c/a/g0/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lg/f/c/a/f0/o0;->values()[Lg/f/c/a/f0/o0;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lg/f/c/a/g0/k$a;->c:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lg/f/c/a/f0/o0;->SHA256:Lg/f/c/a/f0/o0;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lg/f/c/a/g0/k$a;->c:[I

    sget-object v3, Lg/f/c/a/f0/o0;->SHA384:Lg/f/c/a/f0/o0;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lg/f/c/a/g0/k$a;->c:[I

    sget-object v4, Lg/f/c/a/f0/o0;->SHA512:Lg/f/c/a/f0/o0;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 2
    :catch_2
    invoke-static {}, Lg/f/c/a/f0/m0;->values()[Lg/f/c/a/f0/m0;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lg/f/c/a/g0/k$a;->b:[I

    :try_start_3
    sget-object v4, Lg/f/c/a/f0/m0;->NIST_P256:Lg/f/c/a/f0/m0;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v3, Lg/f/c/a/g0/k$a;->b:[I

    sget-object v4, Lg/f/c/a/f0/m0;->NIST_P384:Lg/f/c/a/f0/m0;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v3, Lg/f/c/a/g0/k$a;->b:[I

    sget-object v4, Lg/f/c/a/f0/m0;->NIST_P521:Lg/f/c/a/f0/m0;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    .line 3
    :catch_5
    invoke-static {}, Lg/f/c/a/f0/c0;->values()[Lg/f/c/a/f0/c0;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lg/f/c/a/g0/k$a;->a:[I

    :try_start_6
    sget-object v3, Lg/f/c/a/f0/c0;->DER:Lg/f/c/a/f0/c0;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v1, Lg/f/c/a/g0/k$a;->a:[I

    sget-object v2, Lg/f/c/a/f0/c0;->IEEE_P1363:Lg/f/c/a/f0/c0;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method
