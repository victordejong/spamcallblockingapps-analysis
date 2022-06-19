.class public final Ls1/a/a/a/v0/j/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/b/b;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/j/k;

.field public final synthetic b:Ls1/a/a/a/v0/b/b;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/j/k;Ls1/a/a/a/v0/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/j/o;->a:Ls1/a/a/a/v0/j/k;

    iput-object p2, p0, Ls1/a/a/a/v0/j/o;->b:Ls1/a/a/a/v0/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/b;

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/j/o;->a:Ls1/a/a/a/v0/j/k;

    iget-object v1, p0, Ls1/a/a/a/v0/j/o;->b:Ls1/a/a/a/v0/b/b;

    invoke-virtual {v0, v1, p1}, Ls1/a/a/a/v0/j/k;->b(Ls1/a/a/a/v0/b/b;Ls1/a/a/a/v0/b/b;)V

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
