.class final Li/c/z/e/b/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/z/e/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/a/c;"
    }
.end annotation


# instance fields
.field final f:Lo/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/a/b<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final g:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field h:Z


# direct methods
.method constructor <init>(Ljava/lang/Object;Lo/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/a/b<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Li/c/z/e/b/b$g;->g:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Li/c/z/e/b/b$g;->f:Lo/a/b;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public request(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 1
    iget-boolean p1, p0, Li/c/z/e/b/b$g;->h:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Li/c/z/e/b/b$g;->h:Z

    .line 3
    iget-object p1, p0, Li/c/z/e/b/b$g;->f:Lo/a/b;

    .line 4
    iget-object p2, p0, Li/c/z/e/b/b$g;->g:Ljava/lang/Object;

    invoke-interface {p1, p2}, Lo/a/b;->onNext(Ljava/lang/Object;)V

    .line 5
    invoke-interface {p1}, Lo/a/b;->onComplete()V

    :cond_0
    return-void
.end method
