.class final Lg/g/b/a/j/o$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/j/o;->a(Ljava/lang/String;Ljava/lang/String;ILg/g/b/a/j/m;Lg/g/b/c/n;Lg/g/a/a/i/o/u;)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/p<",
        "Li/c/b0/b/u<",
        "Lg/g/b/c/f;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final f:Lg/g/b/a/j/o$e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/g/b/a/j/o$e;

    invoke-direct {v0}, Lg/g/b/a/j/o$e;-><init>()V

    sput-object v0, Lg/g/b/a/j/o$e;->f:Lg/g/b/a/j/o$e;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/u;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/u<",
            "Lg/g/b/c/f;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Li/c/b0/b/u;->f()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Li/c/b0/b/u;

    invoke-virtual {p0, p1}, Lg/g/b/a/j/o$e;->a(Li/c/b0/b/u;)Z

    move-result p1

    return p1
.end method
