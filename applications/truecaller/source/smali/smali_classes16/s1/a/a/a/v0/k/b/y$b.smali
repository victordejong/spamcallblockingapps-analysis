.class public final Ls1/a/a/a/v0/k/b/y$b;
.super Ls1/a/a/a/v0/k/b/y;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/k/b/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final d:Ls1/a/a/a/v0/f/b;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/b/r0;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p2, p3, p4, v0}, Ls1/a/a/a/v0/k/b/y;-><init>(Ls1/a/a/a/v0/e/z/c;Ls1/a/a/a/v0/e/z/e;Ls1/a/a/a/v0/b/r0;Ls1/z/c/f;)V

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/y$b;->d:Ls1/a/a/a/v0/f/b;

    return-void
.end method


# virtual methods
.method public a()Ls1/a/a/a/v0/f/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/y$b;->d:Ls1/a/a/a/v0/f/b;

    return-object v0
.end method
