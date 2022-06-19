.class public final Lg/g/b/a/g/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/b/a/g/a/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/b/a/g/a/b;",
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

.method public static a()Lg/g/b/a/g/a/d;
    .locals 1

    .line 1
    invoke-static {}, Lg/g/b/a/g/a/d$a;->a()Lg/g/b/a/g/a/d;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lg/g/b/a/g/a/b;
    .locals 1

    .line 1
    new-instance v0, Lg/g/b/a/g/a/b;

    invoke-direct {v0}, Lg/g/b/a/g/a/b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public b()Lg/g/b/a/g/a/b;
    .locals 1

    .line 1
    invoke-static {}, Lg/g/b/a/g/a/d;->c()Lg/g/b/a/g/a/b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/a/g/a/d;->b()Lg/g/b/a/g/a/b;

    move-result-object v0

    return-object v0
.end method
