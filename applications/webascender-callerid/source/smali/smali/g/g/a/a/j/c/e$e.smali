.class public final Lg/g/a/a/j/c/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/g/a/b/j1/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/a/a/j/c/e;->a()Lg/g/a/b/j1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg/g/a/a/j/c/e;


# direct methods
.method constructor <init>(Lg/g/a/a/j/c/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lg/g/a/a/j/c/e$e;->a:Lg/g/a/a/j/c/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lg/g/a/b/j1/l;->a(Lg/g/a/b/j1/m;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/j/c/e$e;->a:Lg/g/a/a/j/c/e;

    invoke-static {v0}, Lg/g/a/a/j/c/e;->h(Lg/g/a/a/j/c/e;)Lg/g/a/a/j/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/a/a/j/c/d;->f()Lg/g/a/a/j/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/a/a/j/c/f;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/j/c/e$e;->a:Lg/g/a/a/j/c/e;

    invoke-static {v0}, Lg/g/a/a/j/c/e;->h(Lg/g/a/a/j/c/e;)Lg/g/a/a/j/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/a/a/j/c/d;->f()Lg/g/a/a/j/c/f;

    move-result-object v0

    invoke-virtual {v0}, Lg/g/a/a/j/c/f;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
