.class public final Lg/g/b/a/h/c;
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
.field private final a:Lg/g/b/a/h/b;


# direct methods
.method public constructor <init>(Lg/g/b/a/h/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/b/a/h/c;->a:Lg/g/b/a/h/b;

    return-void
.end method

.method public static a(Lg/g/b/a/h/b;)Lg/g/b/a/h/c;
    .locals 1

    .line 1
    new-instance v0, Lg/g/b/a/h/c;

    invoke-direct {v0, p0}, Lg/g/b/a/h/c;-><init>(Lg/g/b/a/h/b;)V

    return-object v0
.end method

.method public static c(Lg/g/b/a/h/b;)Landroid/content/Context;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/a/h/b;->a()Landroid/content/Context;

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
    iget-object v0, p0, Lg/g/b/a/h/c;->a:Lg/g/b/a/h/b;

    invoke-static {v0}, Lg/g/b/a/h/c;->c(Lg/g/b/a/h/b;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/b/a/h/c;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method
