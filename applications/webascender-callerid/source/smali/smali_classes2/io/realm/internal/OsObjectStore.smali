.class public Lio/realm/internal/OsObjectStore;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lio/realm/b0;Ljava/lang/Runnable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/realm/b0;->k()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lio/realm/internal/OsObjectStore;->nativeCallWithLock(Ljava/lang/String;Ljava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method public static b(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lio/realm/internal/OsObjectStore;->nativeGetPrimaryKeyForObject(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lio/realm/internal/OsSharedRealm;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    invoke-static {v0, v1}, Lio/realm/internal/OsObjectStore;->nativeGetSchemaVersion(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static d(Lio/realm/internal/OsSharedRealm;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsObjectStore;->nativeSetPrimaryKeyForObject(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Lio/realm/internal/OsSharedRealm;J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/realm/internal/OsSharedRealm;->getNativePtr()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lio/realm/internal/OsObjectStore;->nativeSetSchemaVersion(JJ)V

    return-void
.end method

.method private static native nativeCallWithLock(Ljava/lang/String;Ljava/lang/Runnable;)Z
.end method

.method private static native nativeGetPrimaryKeyForObject(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeGetSchemaVersion(J)J
.end method

.method private static native nativeSetPrimaryKeyForObject(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native nativeSetSchemaVersion(JJ)V
.end method
