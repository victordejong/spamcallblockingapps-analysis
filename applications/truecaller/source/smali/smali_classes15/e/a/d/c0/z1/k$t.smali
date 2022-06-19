.class public final Le/a/d/c0/z1/k$t;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/z1/k;->D(ILs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/d/c0/z1/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/c0/z1/k;

.field public final synthetic c:I

.field public final synthetic d:Ls1/w/d;


# direct methods
.method public constructor <init>(Le/a/d/c0/z1/k;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/z1/k$t;->b:Le/a/d/c0/z1/k;

    iput p2, p0, Le/a/d/c0/z1/k$t;->c:I

    iput-object p3, p0, Le/a/d/c0/z1/k$t;->d:Ls1/w/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/c0/z1/k$t;->b:Le/a/d/c0/z1/k;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Le/a/d/c0/z1/k$t;->b:Le/a/d/c0/z1/k;

    .line 2
    iget-object v1, v1, Le/a/d/c0/z1/k;->l:Ljava/util/Map;

    .line 3
    iget v2, p0, Le/a/d/c0/z1/k$t;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/c0/z1/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
