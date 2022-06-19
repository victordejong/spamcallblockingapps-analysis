.class public final Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;
.super Lcom/bumptech/glide/GeneratedAppGlideModule;
.source "SourceFile"


# instance fields
.field public final a:Lcom/truecaller/glide/TruecallerGlideModule;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/GeneratedAppGlideModule;-><init>()V

    .line 2
    new-instance p1, Lcom/truecaller/glide/TruecallerGlideModule;

    invoke-direct {p1}, Lcom/truecaller/glide/TruecallerGlideModule;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->a:Lcom/truecaller/glide/TruecallerGlideModule;

    const-string p1, "Glide"

    const/4 v0, 0x3

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Le/f/a/d;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->a:Lcom/truecaller/glide/TruecallerGlideModule;

    invoke-virtual {v0, p1, p2}, Lcom/truecaller/glide/TruecallerGlideModule;->a(Landroid/content/Context;Le/f/a/d;)V

    return-void
.end method

.method public b(Landroid/content/Context;Le/f/a/c;Le/f/a/g;)V
    .locals 1

    .line 1
    new-instance v0, Le/f/a/m/a/a;

    invoke-direct {v0}, Le/f/a/m/a/a;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Le/f/a/m/a/a;->b(Landroid/content/Context;Le/f/a/c;Le/f/a/g;)V

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->a:Lcom/truecaller/glide/TruecallerGlideModule;

    invoke-virtual {v0, p1, p2, p3}, Lcom/truecaller/glide/TruecallerGlideModule;->b(Landroid/content/Context;Le/f/a/c;Le/f/a/g;)V

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->a:Lcom/truecaller/glide/TruecallerGlideModule;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public d()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e()Le/f/a/o/l$b;
    .locals 1

    .line 1
    new-instance v0, Le/f/a/a;

    invoke-direct {v0}, Le/f/a/a;-><init>()V

    return-object v0
.end method
