.class public final Lg/g/a/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "Lg/g/a/d/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lj/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lg/g/a/d/b;->a:Lj/a/a;

    return-void
.end method

.method public static a(Lj/a/a;)Lg/g/a/d/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj/a/a<",
            "Landroid/content/SharedPreferences;",
            ">;)",
            "Lg/g/a/d/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg/g/a/d/b;

    invoke-direct {v0, p0}, Lg/g/a/d/b;-><init>(Lj/a/a;)V

    return-object v0
.end method

.method public static c(Landroid/content/SharedPreferences;)Lg/g/a/d/a;
    .locals 1

    .line 1
    new-instance v0, Lg/g/a/d/a;

    invoke-direct {v0, p0}, Lg/g/a/d/a;-><init>(Landroid/content/SharedPreferences;)V

    return-object v0
.end method


# virtual methods
.method public b()Lg/g/a/d/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/d/b;->a:Lj/a/a;

    invoke-interface {v0}, Lj/a/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    invoke-static {v0}, Lg/g/a/d/b;->c(Landroid/content/SharedPreferences;)Lg/g/a/d/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lg/g/a/d/b;->b()Lg/g/a/d/a;

    move-result-object v0

    return-object v0
.end method
