.class public abstract Ls1/a/a/a/v0/k/b/n;
.super Ls1/a/a/a/v0/b/h1/c0;
.source "SourceFile"


# instance fields
.field public final f:Ls1/a/a/a/v0/l/m;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "module"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3, p1}, Ls1/a/a/a/v0/b/h1/c0;-><init>(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/f/b;)V

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/n;->f:Ls1/a/a/a/v0/l/m;

    return-void
.end method


# virtual methods
.method public abstract w0()Ls1/a/a/a/v0/k/b/g;
.end method
