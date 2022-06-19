.class final Lg/g/b/a/j/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/j/d;->e(Li/c/b0/b/p;Li/c/b0/b/p;)Li/c/b0/b/p;
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
        "Lg/g/b/c/f;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lg/g/b/a/j/d$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/g/b/a/j/d$c;

    invoke-direct {v0}, Lg/g/b/a/j/d$c;-><init>()V

    sput-object v0, Lg/g/b/a/j/d$c;->f:Lg/g/b/a/j/d$c;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/b/c/f;)Z
    .locals 1

    .line 1
    invoke-static {}, Lg/g/b/a/j/f;->a()Lg/g/b/c/f;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lg/g/b/c/f;

    invoke-virtual {p0, p1}, Lg/g/b/a/j/d$c;->a(Lg/g/b/c/f;)Z

    move-result p1

    return p1
.end method
