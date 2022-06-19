.class public final synthetic Lcom/google/android/gms/common/zzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Le/m/a/f/e/i;


# direct methods
.method public synthetic constructor <init>(ZLjava/lang/String;Le/m/a/f/e/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/common/zzd;->a:Z

    iput-object p2, p0, Lcom/google/android/gms/common/zzd;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/zzd;->c:Le/m/a/f/e/i;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 7

    iget-boolean v0, p0, Lcom/google/android/gms/common/zzd;->a:Z

    iget-object v1, p0, Lcom/google/android/gms/common/zzd;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/common/zzd;->c:Le/m/a/f/e/i;

    .line 1
    sget-object v3, Le/m/a/f/e/m;->a:Le/m/a/f/e/k;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {v1, v2, v3, v4}, Le/m/a/f/e/m;->a(Ljava/lang/String;Le/m/a/f/e/i;ZZ)Le/m/a/f/e/o;

    move-result-object v5

    iget-boolean v5, v5, Le/m/a/f/e/o;->a:Z

    if-eqz v5, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    if-eq v3, v5, :cond_1

    const-string v5, "not allowed"

    goto :goto_1

    :cond_1
    const-string v5, "debug cert rejected"

    :goto_1
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v4

    aput-object v1, v6, v3

    const-string v1, "SHA-1"

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/common/util/AndroidUtilsLight;->b(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    const-string v3, "null reference"

    .line 4
    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v3, 0x2

    .line 5
    invoke-virtual {v2}, Le/m/a/f/e/i;->B1()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcom/google/android/gms/common/util/Hex;->a([B)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    const/4 v1, 0x3

    .line 7
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v0, 0x4

    const-string v1, "12451000.false"

    aput-object v1, v6, v0

    const-string v0, "%s: pkg=%s, sha1=%s, atk=%s, ver=%s"

    .line 8
    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
