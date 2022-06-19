.class public final Ls1/a/a/a/v0/d/b/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/b/l$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/b/a;->b(Ls1/a/a/a/v0/k/b/y$a;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/d/b/a;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/b/a;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/d/b/a$c;->a:Ls1/a/a/a/v0/d/b/a;

    iput-object p2, p0, Ls1/a/a/a/v0/d/b/a$c;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/r0;)Ls1/a/a/a/v0/d/b/l$a;
    .locals 2

    const-string v0, "classId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/b/a$c;->a:Ls1/a/a/a/v0/d/b/a;

    iget-object v1, p0, Ls1/a/a/a/v0/d/b/a$c;->b:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2, v1}, Ls1/a/a/a/v0/d/b/a;->k(Ls1/a/a/a/v0/d/b/a;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/b/r0;Ljava/util/List;)Ls1/a/a/a/v0/d/b/l$a;

    move-result-object p1

    return-object p1
.end method
