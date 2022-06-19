.class public abstract Ls1/a/a/a/v0/k/b/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/k/b/y$a;,
        Ls1/a/a/a/v0/k/b/y$b;
    }
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/e/z/c;

.field public final b:Ls1/a/a/a/v0/e/z/e;

.field public final c:Ls1/a/a/a/v0/b/r0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/b/r0;Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/y;->a:Ls1/a/a/a/v0/e/z/c;

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/y;->b:Ls1/a/a/a/v0/e/z/e;

    iput-object p3, p0, Ls1/a/a/a/v0/k/b/y;->c:Ls1/a/a/a/v0/b/r0;

    return-void
.end method


# virtual methods
.method public abstract a()Ls1/a/a/a/v0/f/b;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ls1/a/a/a/v0/k/b/y;->a()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
