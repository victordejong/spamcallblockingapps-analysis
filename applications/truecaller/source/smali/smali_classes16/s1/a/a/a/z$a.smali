.class public abstract Ls1/a/a/a/z$a;
.super Ls1/a/a/a/g;
.source "SourceFile"

# interfaces
.implements Ls1/a/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PropertyType:",
        "Ljava/lang/Object;",
        "ReturnType:",
        "Ljava/lang/Object;",
        ">",
        "Ls1/a/a/a/g<",
        "TReturnType;>;",
        "Ls1/a/f<",
        "TReturnType;>;",
        "Ljava/lang/Object<",
        "TPropertyType;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ls1/a/a/a/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/z$a;->j()Ls1/a/a/a/z;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ls1/a/a/a/z;->d:Ls1/a/a/a/n;

    return-object v0
.end method

.method public g()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/z$a;->j()Ls1/a/a/a/z;

    move-result-object v0

    .line 2
    iget-object v0, v0, Ls1/a/a/a/z;->g:Ljava/lang/Object;

    sget v1, Ls1/z/c/b;->g:I

    sget-object v1, Ls1/z/c/b$a;->a:Ls1/z/c/b$a;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public abstract i()Ls1/a/a/a/v0/b/j0;
.end method

.method public abstract j()Ls1/a/a/a/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ls1/a/a/a/z<",
            "TPropertyType;>;"
        }
    .end annotation
.end method
