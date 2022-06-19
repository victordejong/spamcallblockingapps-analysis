.class public final Lg/f/a/b/i/y/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/a/b/i/u/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/f/a/b/i/y/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg/f/a/b/i/u/a/b<",
        "Lg/f/a/b/i/y/a;",
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

.method public static a()Lg/f/a/b/i/y/c;
    .locals 1

    .line 1
    invoke-static {}, Lg/f/a/b/i/y/c$a;->a()Lg/f/a/b/i/y/c;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lg/f/a/b/i/y/a;
    .locals 2

    .line 1
    invoke-static {}, Lg/f/a/b/i/y/b;->a()Lg/f/a/b/i/y/a;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lg/f/a/b/i/u/a/d;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lg/f/a/b/i/y/a;

    return-object v0
.end method


# virtual methods
.method public c()Lg/f/a/b/i/y/a;
    .locals 1

    .line 1
    invoke-static {}, Lg/f/a/b/i/y/c;->b()Lg/f/a/b/i/y/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/f/a/b/i/y/c;->c()Lg/f/a/b/i/y/a;

    move-result-object v0

    return-object v0
.end method
