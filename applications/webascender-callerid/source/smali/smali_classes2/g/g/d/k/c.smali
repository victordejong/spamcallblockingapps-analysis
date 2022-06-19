.class public final Lg/g/d/k/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/d/k/a;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lg/g/d/k/b;)Lg/g/d/k/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/d/k/b;->a()Lg/g/d/k/a;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lg/g/d/k/a;

    return-object p0
.end method
