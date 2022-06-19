.class public final Le/a/a/c1/f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/messaging/data/types/BinaryEntity;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/c1/h;

.field public final synthetic c:J


# direct methods
.method public constructor <init>(Le/a/a/c1/h;J)V
    .locals 0

    iput-object p1, p0, Le/a/a/c1/f;->b:Le/a/a/c1/h;

    iput-wide p2, p0, Le/a/a/c1/f;->c:J

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lcom/truecaller/messaging/data/types/BinaryEntity;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Lcom/truecaller/messaging/data/types/VideoEntity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/a/c1/f;->b:Le/a/a/c1/h;

    .line 5
    iget-object v0, v0, Le/a/a/c1/h;->c:Le/a/o5/u0;

    .line 6
    check-cast p1, Lcom/truecaller/messaging/data/types/VideoEntity;

    .line 7
    iget p1, p1, Lcom/truecaller/messaging/data/types/VideoEntity;->x:I

    .line 8
    invoke-interface {v0, p1}, Le/a/o5/u0;->b(I)J

    move-result-wide v3

    .line 9
    iget-wide v5, p0, Le/a/a/c1/f;->c:J

    cmp-long p1, v3, v5

    if-lez p1, :cond_1

    goto :goto_0

    .line 10
    :cond_0
    instance-of v0, p1, Lcom/truecaller/messaging/data/types/GifEntity;

    if-eqz v0, :cond_1

    .line 11
    iget-wide v3, p1, Lcom/truecaller/messaging/data/types/BinaryEntity;->k:J

    iget-wide v5, p0, Le/a/a/c1/f;->c:J

    cmp-long p1, v3, v5

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 12
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
