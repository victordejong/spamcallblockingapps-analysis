.class public final Le/a/b/a/a/b/c/b;
.super Landroidx/lifecycle/LiveData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Lcom/truecaller/profile/data/dto/businessV2/BusinessProfile;",
        ">;"
    }
.end annotation


# instance fields
.field public final l:Lq3/a/y;

.field public final m:Lq3/a/i0;

.field public final n:Le/a/b/a/a/b/c/b$a;

.field public final o:Le/a/m4/c/i/a/b;

.field public final p:Lq3/a/g0;


# direct methods
.method public constructor <init>(Le/a/m4/c/i/a/b;Lq3/a/g0;)V
    .locals 7

    const-string v0, "bizProfileLocalFileManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dispatcher"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Le/a/b/a/a/b/c/b;->o:Le/a/m4/c/i/a/b;

    iput-object p2, p0, Le/a/b/a/a/b/c/b;->p:Lq3/a/g0;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object v1

    iput-object v1, p0, Le/a/b/a/a/b/c/b;->l:Lq3/a/y;

    .line 3
    invoke-virtual {p2, v1}, Ls1/w/a;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p2

    invoke-static {p2}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object v1

    iput-object v1, p0, Le/a/b/a/a/b/c/b;->m:Lq3/a/i0;

    .line 4
    new-instance p2, Le/a/b/a/a/b/c/b$a;

    invoke-interface {p1}, Le/a/m4/c/i/a/b;->b()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Le/a/b/a/a/b/c/b$a;-><init>(Le/a/b/a/a/b/c/b;Ljava/lang/String;)V

    iput-object p2, p0, Le/a/b/a/a/b/c/b;->n:Le/a/b/a/a/b/c/b$a;

    .line 5
    new-instance v4, Le/a/b/a/a/b/c/c;

    invoke-direct {v4, p0, v0}, Le/a/b/a/a/b/c/c;-><init>(Le/a/b/a/a/b/c/b;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method


# virtual methods
.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/b/a/a/b/c/b;->n:Le/a/b/a/a/b/c/b$a;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method public i()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/b/a/a/b/c/b;->n:Le/a/b/a/a/b/c/b$a;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 2
    iget-object v0, p0, Le/a/b/a/a/b/c/b;->l:Lq3/a/y;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->Y(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method
