.class public final Lg/g/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/a/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lg/g/a/b/a;


# direct methods
.method public constructor <init>(Lg/g/a/b/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/b/c;->a:Lg/g/a/b/a;

    return-void
.end method

.method public static a(Lg/g/a/b/a;)Lg/g/a/b/c;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/b/c;

    invoke-direct {v0, p0}, Lg/g/a/b/c;-><init>(Lg/g/a/b/a;)V

    return-object v0
.end method

.method public static c(Lg/g/a/b/a;)Lg/g/a/a/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/a/b/a;->b()Lg/g/a/a/a;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lg/g/a/a/a;

    return-object p0
.end method


# virtual methods
.method public b()Lg/g/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/b/c;->a:Lg/g/a/b/a;

    invoke-static {v0}, Lg/g/a/b/c;->c(Lg/g/a/b/a;)Lg/g/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/a/b/c;->b()Lg/g/a/a/a;

    move-result-object v0

    return-object v0
.end method
