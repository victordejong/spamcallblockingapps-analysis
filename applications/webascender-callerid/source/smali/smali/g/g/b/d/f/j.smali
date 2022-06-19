.class public final Lg/g/b/d/f/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/a/e/e/m;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lg/g/b/d/f/i;


# direct methods
.method public constructor <init>(Lg/g/b/d/f/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/b/d/f/j;->a:Lg/g/b/d/f/i;

    return-void
.end method

.method public static a(Lg/g/b/d/f/i;)Lg/g/b/d/f/j;
    .locals 1

    .line 1
    new-instance v0, Lg/g/b/d/f/j;

    invoke-direct {v0, p0}, Lg/g/b/d/f/j;-><init>(Lg/g/b/d/f/i;)V

    return-object v0
.end method

.method public static c(Lg/g/b/d/f/i;)Lg/g/a/e/e/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/d/f/i;->a()Lg/g/a/e/e/m;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lg/g/a/e/e/m;

    return-object p0
.end method


# virtual methods
.method public b()Lg/g/a/e/e/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/b/d/f/j;->a:Lg/g/b/d/f/i;

    invoke-static {v0}, Lg/g/b/d/f/j;->c(Lg/g/b/d/f/i;)Lg/g/a/e/e/m;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/d/f/j;->b()Lg/g/a/e/e/m;

    move-result-object v0

    return-object v0
.end method
