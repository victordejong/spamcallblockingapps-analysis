.class public final Lg/g/b/d/f/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/b/d/c/c;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lg/g/b/d/f/a;Lcom/google/gson/f;Lg/g/a/a/g/d;)Lg/g/b/d/c/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lg/g/b/d/f/a;->d(Lcom/google/gson/f;Lg/g/a/a/g/d;)Lg/g/b/d/c/c;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lg/g/b/d/c/c;

    return-object p0
.end method
