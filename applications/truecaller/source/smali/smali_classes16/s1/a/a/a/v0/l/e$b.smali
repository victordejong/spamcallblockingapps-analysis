.class public Ls1/a/a/a/v0/l/e$b;
.super Ls1/a/a/a/v0/l/e$j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/l/e;->a(Ls1/z/b/a;Ljava/lang/Object;)Ls1/a/a/a/v0/l/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/l/e$j<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/l/e;Ls1/a/a/a/v0/l/e;Ls1/z/b/a;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p4, p0, Ls1/a/a/a/v0/l/e$b;->d:Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Ls1/a/a/a/v0/l/e$j;-><init>(Ls1/a/a/a/v0/l/e;Ls1/z/b/a;)V

    return-void
.end method


# virtual methods
.method public c(Z)Ls1/a/a/a/v0/l/e$o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ls1/a/a/a/v0/l/e$o<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Ls1/a/a/a/v0/l/e$b;->d:Ljava/lang/Object;

    .line 2
    new-instance v0, Ls1/a/a/a/v0/l/e$o;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ls1/a/a/a/v0/l/e$o;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method
