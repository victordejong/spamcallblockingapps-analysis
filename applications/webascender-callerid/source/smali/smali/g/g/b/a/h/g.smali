.class public final Lg/g/b/a/h/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lg/g/b/a/h/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/google/gson/f;",
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

.method public static a()Lg/g/b/a/h/g;
    .locals 1

    .line 1
    invoke-static {}, Lg/g/b/a/h/g$a;->a()Lg/g/b/a/h/g;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/google/gson/f;
    .locals 2

    .line 1
    invoke-static {}, Lg/g/b/a/h/f;->a()Lcom/google/gson/f;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/google/gson/f;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/google/gson/f;
    .locals 1

    .line 1
    invoke-static {}, Lg/g/b/a/h/g;->c()Lcom/google/gson/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/a/h/g;->b()Lcom/google/gson/f;

    move-result-object v0

    return-object v0
.end method
