.class public final Le/a/f/y/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;


# instance fields
.field public final a:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/f/y/o;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Le/a/u2/a/a;->Hj()Lq3/a/p1;

    move-result-object v0

    .line 3
    new-instance v1, Lq3/a/s1;

    invoke-direct {v1, v0}, Lq3/a/s1;-><init>(Lq3/a/p1;)V

    .line 4
    iget-object p1, p1, Le/a/f/y/o;->D:Ls1/w/f;

    .line 5
    invoke-static {v1, p1}, Ls1/w/f$a$a;->d(Ls1/w/f$a;Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    .line 6
    iput-object p1, p0, Le/a/f/y/r;->a:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/y/r;->a:Ls1/w/f;

    return-object v0
.end method
