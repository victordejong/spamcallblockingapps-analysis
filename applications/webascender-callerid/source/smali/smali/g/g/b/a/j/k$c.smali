.class final Lg/g/b/a/j/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/j/k;->a(Lg/g/b/c/n;Ljava/util/Map;)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/a/j/k;

.field final synthetic g:Lg/g/b/c/n;


# direct methods
.method constructor <init>(Lg/g/b/a/j/k;Lg/g/b/c/n;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/j/k$c;->f:Lg/g/b/a/j/k;

    iput-object p2, p0, Lg/g/b/a/j/k$c;->g:Lg/g/b/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/a/j/k$c;->f:Lg/g/b/a/j/k;

    invoke-static {v0}, Lg/g/b/a/j/k;->c(Lg/g/b/a/j/k;)Lg/g/b/b/d/e;

    move-result-object v0

    iget-object v1, p0, Lg/g/b/a/j/k$c;->g:Lg/g/b/c/n;

    invoke-virtual {v0, v1}, Lg/g/b/b/d/e;->b(Lg/g/b/c/n;)V

    return-void
.end method
