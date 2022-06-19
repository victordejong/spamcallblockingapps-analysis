.class public final Lg/g/a/b/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/a/a/k/k/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lg/g/a/b/c0;

.field private final b:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/g/a/b/c0;Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/b/c0;",
            "Lj/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/b/w0;->a:Lg/g/a/b/c0;

    .line 3
    iput-object p2, p0, Lg/g/a/b/w0;->b:Lj/a/a;

    return-void
.end method

.method public static a(Lg/g/a/b/c0;Lj/a/a;)Lg/g/a/b/w0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/b/c0;",
            "Lj/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;)",
            "Lg/g/a/b/w0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/a/b/w0;

    invoke-direct {v0, p0, p1}, Lg/g/a/b/w0;-><init>(Lg/g/a/b/c0;Lj/a/a;)V

    return-object v0
.end method

.method public static c(Lg/g/a/b/c0;Landroid/content/SharedPreferences;)Lg/g/a/a/k/k/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg/g/a/b/c0;->v(Landroid/content/SharedPreferences;)Lg/g/a/a/k/k/c;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, p1}, Lh/b/b;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lg/g/a/a/k/k/c;

    return-object p0
.end method


# virtual methods
.method public b()Lg/g/a/a/k/k/c;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/a/b/w0;->a:Lg/g/a/b/c0;

    iget-object v1, p0, Lg/g/a/b/w0;->b:Lj/a/a;

    invoke-interface {v1}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lg/g/a/b/w0;->c(Lg/g/a/b/c0;Landroid/content/SharedPreferences;)Lg/g/a/a/k/k/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/a/b/w0;->b()Lg/g/a/a/k/k/c;

    move-result-object v0

    return-object v0
.end method
