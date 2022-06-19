.class public final Lg/g/a/a/k/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/a/a/k/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/a/a/k/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lg/g/a/a/k/f;
    .locals 1

    .line 1
    invoke-static {}, Lg/g/a/a/k/f$a;->a()Lg/g/a/a/k/f;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lg/g/a/a/k/e;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/a/k/e;

    invoke-direct {v0}, Lg/g/a/a/k/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Lg/g/a/a/k/e;
    .locals 1

    .line 1
    invoke-static {}, Lg/g/a/a/k/f;->c()Lg/g/a/a/k/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/a/a/k/f;->b()Lg/g/a/a/k/e;

    move-result-object v0

    return-object v0
.end method
