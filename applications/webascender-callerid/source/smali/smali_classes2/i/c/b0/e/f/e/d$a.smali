.class final Li/c/b0/e/f/e/d$a;
.super Li/c/b0/g/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/c/b0/e/f/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/c/b0/e/f/e/d$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/g/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field volatile g:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Li/c/b0/g/b;-><init>()V

    .line 2
    invoke-static {p1}, Li/c/b0/e/k/m;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Li/c/b0/e/f/e/d$a;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()Li/c/b0/e/f/e/d$a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/e/f/e/d$a<",
            "TT;>.a;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/c/b0/e/f/e/d$a$a;

    invoke-direct {v0, p0}, Li/c/b0/e/f/e/d$a$a;-><init>(Li/c/b0/e/f/e/d$a;)V

    return-object v0
.end method

.method public onComplete()V
    .locals 1

    .line 1
    invoke-static {}, Li/c/b0/e/k/m;->complete()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Li/c/b0/e/f/e/d$a;->g:Ljava/lang/Object;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p1}, Li/c/b0/e/k/m;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Li/c/b0/e/f/e/d$a;->g:Ljava/lang/Object;

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Li/c/b0/e/k/m;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Li/c/b0/e/f/e/d$a;->g:Ljava/lang/Object;

    return-void
.end method
