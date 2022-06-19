.class public final Lg/g/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Landroid/content/Context;",
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
    iput-object p1, p0, Lg/g/a/b/b;->a:Lg/g/a/b/a;

    return-void
.end method

.method public static a(Lg/g/a/b/a;)Lg/g/a/b/b;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/b/b;

    invoke-direct {v0, p0}, Lg/g/a/b/b;-><init>(Lg/g/a/b/a;)V

    return-object v0
.end method

.method public static c(Lg/g/a/b/a;)Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/a/b/a;->a()Landroid/content/Context;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/b/b;->a:Lg/g/a/b/a;

    invoke-static {v0}, Lg/g/a/b/b;->c(Lg/g/a/b/a;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/a/b/b;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
