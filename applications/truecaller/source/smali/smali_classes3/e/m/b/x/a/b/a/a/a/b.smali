.class public Le/m/b/x/a/b/a/a/a/b;
.super Ljava/io/IOException;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/GoogleAuthException;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/auth/GoogleAuthException;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/GoogleAuthException;

    return-object v0
.end method

.method public bridge synthetic getCause()Ljava/lang/Throwable;
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/m/b/x/a/b/a/a/a/b;->a()Lcom/google/android/gms/auth/GoogleAuthException;

    move-result-object v0

    return-object v0
.end method
