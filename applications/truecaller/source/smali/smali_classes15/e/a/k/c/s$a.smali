.class public final Le/a/k/c/s$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/c/s;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/k/c/s;

.field public final synthetic c:Le/a/k/c/s$b;


# direct methods
.method public constructor <init>(Le/a/k/c/s;Le/a/k/c/s$b;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/s$a;->b:Le/a/k/c/s;

    iput-object p2, p0, Le/a/k/c/s$a;->c:Le/a/k/c/s$b;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k/c/s$a;->b:Le/a/k/c/s;

    iget-object v0, v0, Le/a/k/c/s;->g:Lcom/google/android/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Le/a/k/c/s$a;->c:Le/a/k/c/s$b;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/SimpleExoPlayer;->removeVideoListener(Le/m/a/c/r1/r;)V

    .line 2
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
