.class public final Ls1/a/a/a/v0/b/j1/b/e;
.super Ls1/a/a/a/v0/b/j1/b/d;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/a/f0/c;


# instance fields
.field public final b:Ljava/lang/annotation/Annotation;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/f/e;Ljava/lang/annotation/Annotation;)V
    .locals 1

    const-string v0, "annotation"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/b/j1/b/d;-><init>(Ls1/a/a/a/v0/f/e;)V

    iput-object p2, p0, Ls1/a/a/a/v0/b/j1/b/e;->b:Ljava/lang/annotation/Annotation;

    return-void
.end method


# virtual methods
.method public a()Ls1/a/a/a/v0/d/a/f0/a;
    .locals 2

    .line 1
    new-instance v0, Ls1/a/a/a/v0/b/j1/b/c;

    iget-object v1, p0, Ls1/a/a/a/v0/b/j1/b/e;->b:Ljava/lang/annotation/Annotation;

    invoke-direct {v0, v1}, Ls1/a/a/a/v0/b/j1/b/c;-><init>(Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method
