.class public final Ls1/a/a/a/a$a$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/a$a;-><init>(Ls1/a/a/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/annotation/Annotation;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/a$a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/a$a;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/a$a$d;->b:Ls1/a/a/a/a$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/a$a$d;->b:Ls1/a/a/a/a$a;

    invoke-virtual {v0}, Ls1/a/a/a/a$a;->a()Ls1/a/a/a/v0/b/e;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/s0;->b(Ls1/a/a/a/v0/b/f1/a;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
