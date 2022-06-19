.class public final Le/a/k/a/k/z/g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/m/a/c/l1/t;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;

.field public final synthetic c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/k/z/g;->b:Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;

    iput-object p2, p0, Le/a/k/a/k/z/g;->c:Landroid/net/Uri;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Le/a/k/a/k/z/g;->b:Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;

    new-instance v12, Le/m/a/c/p1/n;

    iget-object v3, v0, Le/a/k/a/k/z/g;->c:Landroid/net/Uri;

    const-wide/16 v6, 0x0

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v2, v12

    move-wide v4, v6

    .line 2
    invoke-direct/range {v2 .. v11}, Le/m/a/c/p1/n;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .line 3
    invoke-virtual {v1, v12}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;->b(Le/m/a/c/p1/n;)J

    .line 4
    new-instance v15, Le/a/k/a/k/z/f;

    invoke-direct {v15, v0}, Le/a/k/a/k/z/f;-><init>(Le/a/k/a/k/z/g;)V

    .line 5
    new-instance v16, Le/m/a/c/g1/f;

    invoke-direct/range {v16 .. v16}, Le/m/a/c/g1/f;-><init>()V

    .line 6
    sget-object v17, Le/m/a/c/f1/e;->a:Le/m/a/c/f1/e;

    .line 7
    new-instance v18, Le/m/a/c/p1/u;

    invoke-direct/range {v18 .. v18}, Le/m/a/c/p1/u;-><init>()V

    const/high16 v20, 0x100000

    .line 8
    iget-object v14, v0, Le/a/k/a/k/z/g;->c:Landroid/net/Uri;

    .line 9
    new-instance v1, Le/m/a/c/l1/t;

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object v13, v1

    invoke-direct/range {v13 .. v21}, Le/m/a/c/l1/t;-><init>(Landroid/net/Uri;Le/m/a/c/p1/l$a;Le/m/a/c/g1/j;Le/m/a/c/f1/e;Le/m/a/c/p1/b0;Ljava/lang/String;ILjava/lang/Object;)V

    return-object v1
.end method
