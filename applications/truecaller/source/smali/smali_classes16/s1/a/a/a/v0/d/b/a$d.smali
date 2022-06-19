.class public final Ls1/a/a/a/v0/d/b/a$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/b/a;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/d/b/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/d/b/l;",
        "Ls1/a/a/a/v0/d/b/a$b<",
        "+TA;+TC;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/b/a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/b/a;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/b/a$d;->b:Ls1/a/a/a/v0/d/b/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ls1/a/a/a/v0/d/b/l;

    const-string v0, "kotlinClass"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Ls1/a/a/a/v0/d/b/a$d;->b:Ls1/a/a/a/v0/d/b/a;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 7
    new-instance v4, Ls1/a/a/a/v0/d/b/b;

    invoke-direct {v4, v1, v2, v3}, Ls1/a/a/a/v0/d/b/b;-><init>(Ls1/a/a/a/v0/d/b/a;Ljava/util/HashMap;Ljava/util/HashMap;)V

    .line 8
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v4, v0}, Ls1/a/a/a/v0/d/b/l;->a(Ls1/a/a/a/v0/d/b/l$d;[B)V

    .line 10
    new-instance p1, Ls1/a/a/a/v0/d/b/a$b;

    invoke-direct {p1, v2, v3}, Ls1/a/a/a/v0/d/b/a$b;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object p1
.end method
