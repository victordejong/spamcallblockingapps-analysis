.class public Le/a/g5/t$e;
.super Ln3/w/b/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/g5/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/w/b/a<",
        "Ljava/util/List<",
        "Le/a/b0/p/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:J

.field public b:Le/a/b0/p/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLe/a/b0/p/d;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln3/w/b/a;-><init>(Landroid/content/Context;)V

    .line 2
    iput-wide p2, p0, Le/a/g5/t$e;->a:J

    .line 3
    iput-object p4, p0, Le/a/g5/t$e;->b:Le/a/b0/p/d;

    return-void
.end method


# virtual methods
.method public loadInBackground()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/g5/t$e;->b:Le/a/b0/p/d;

    iget-wide v1, p0, Le/a/g5/t$e;->a:J

    invoke-interface {v0, v1, v2}, Le/a/b0/p/d;->a(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onReset()V
    .locals 0

    .line 1
    invoke-super {p0}, Ln3/w/b/b;->onReset()V

    .line 2
    invoke-virtual {p0}, Ln3/w/b/b;->cancelLoad()Z

    return-void
.end method

.method public onStartLoading()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln3/w/b/b;->forceLoad()V

    return-void
.end method

.method public onStopLoading()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ln3/w/b/b;->cancelLoad()Z

    return-void
.end method
