.class public final Lg/g/b/d/f/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lcom/google/gson/f;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lg/g/b/d/f/g;


# direct methods
.method public constructor <init>(Lg/g/b/d/f/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/b/d/f/h;->a:Lg/g/b/d/f/g;

    return-void
.end method

.method public static a(Lg/g/b/d/f/g;)Lg/g/b/d/f/h;
    .locals 1

    .line 1
    new-instance v0, Lg/g/b/d/f/h;

    invoke-direct {v0, p0}, Lg/g/b/d/f/h;-><init>(Lg/g/b/d/f/g;)V

    return-object v0
.end method

.method public static c(Lg/g/b/d/f/g;)Lcom/google/gson/f;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/d/f/g;->a()Lcom/google/gson/f;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/google/gson/f;

    return-object p0
.end method


# virtual methods
.method public b()Lcom/google/gson/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/d/f/h;->a:Lg/g/b/d/f/g;

    invoke-static {v0}, Lg/g/b/d/f/h;->c(Lg/g/b/d/f/g;)Lcom/google/gson/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/d/f/h;->b()Lcom/google/gson/f;

    move-result-object v0

    return-object v0
.end method
