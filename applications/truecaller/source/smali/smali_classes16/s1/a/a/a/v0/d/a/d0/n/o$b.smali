.class public final Ls1/a/a/a/v0/d/a/d0/n/o$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/n/o;->n(Ls1/a/a/a/v0/j/y/d;Ls1/z/b/l;)Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/j/y/i;",
        "Ljava/util/Collection<",
        "+",
        "Ls1/a/a/a/v0/f/e;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/d/a/d0/n/o$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/o$b;

    invoke-direct {v0}, Ls1/a/a/a/v0/d/a/d0/n/o$b;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/d/a/d0/n/o$b;->b:Ls1/a/a/a/v0/d/a/d0/n/o$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ls1/a/a/a/v0/j/y/i;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ls1/a/a/a/v0/j/y/i;->d()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
