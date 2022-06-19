.class public final Ls1/a/a/a/v0/b/h1/q;
.super Ls1/a/a/a/v0/b/f1/b;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/s;


# instance fields
.field public final b:Ls1/a/a/a/v0/b/k0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/b/k0;)V
    .locals 1

    const-string v0, "annotations"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "correspondingProperty"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/b/f1/b;-><init>(Ls1/a/a/a/v0/b/f1/h;)V

    iput-object p2, p0, Ls1/a/a/a/v0/b/h1/q;->b:Ls1/a/a/a/v0/b/k0;

    return-void
.end method
