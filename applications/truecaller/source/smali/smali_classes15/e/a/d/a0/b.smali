.class public abstract Le/a/d/a0/b;
.super Le/a/d/c0/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Le/a/d/a0/a;",
        ">",
        "Le/a/d/c0/r<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Le/a/d/c0/r$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/d/c0/r<",
            "TT;>.a;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/d/a0/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "initialState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/d/c0/r;-><init>(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Le/a/d/a0/b$a;

    invoke-direct {p1, p0}, Le/a/d/a0/b$a;-><init>(Le/a/d/a0/b;)V

    iput-object p1, p0, Le/a/d/a0/b;->d:Le/a/d/c0/r$a;

    return-void
.end method


# virtual methods
.method public h()Le/a/d/c0/r$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/d/c0/r<",
            "TT;>.a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/a0/b;->d:Le/a/d/c0/r$a;

    return-object v0
.end method
