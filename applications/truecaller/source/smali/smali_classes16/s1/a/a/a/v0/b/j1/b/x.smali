.class public final Ls1/a/a/a/v0/b/j1/b/x;
.super Ls1/a/a/a/v0/b/j1/b/d;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/a/f0/o;


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/f/e;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Ls1/a/a/a/v0/b/j1/b/d;-><init>(Ls1/a/a/a/v0/f/e;)V

    iput-object p2, p0, Ls1/a/a/a/v0/b/j1/b/x;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/b/x;->b:Ljava/lang/Object;

    return-object v0
.end method
