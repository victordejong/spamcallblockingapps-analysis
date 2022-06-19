.class public final Le/a/c/a/c/f/n;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/a/c/f/o;

.field public final synthetic c:I

.field public final synthetic d:Le/a/c/r/d/c;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/c/a/c/f/o;ILe/a/c/r/d/c;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/c/f/n;->b:Le/a/c/a/c/f/o;

    iput p2, p0, Le/a/c/a/c/f/n;->c:I

    iput-object p3, p0, Le/a/c/a/c/f/n;->d:Le/a/c/r/d/c;

    iput-object p4, p0, Le/a/c/a/c/f/n;->e:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/a/c/f/n;->b:Le/a/c/a/c/f/o;

    .line 2
    iget-object v0, v0, Le/a/c/a/c/f/o;->b:Le/a/c/c0/o;

    .line 3
    iget v1, p0, Le/a/c/a/c/f/n;->c:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 4
    sget-object v1, Lcom/truecaller/insights/utils/BannerState;->DISMISSED_ONCE:Lcom/truecaller/insights/utils/BannerState;

    invoke-interface {v0, v1}, Le/a/c/c0/o;->s(Lcom/truecaller/insights/utils/BannerState;)V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/truecaller/insights/utils/BannerState;->DISMISSED:Lcom/truecaller/insights/utils/BannerState;

    invoke-interface {v0, v1}, Le/a/c/c0/o;->s(Lcom/truecaller/insights/utils/BannerState;)V

    .line 6
    :goto_0
    iget v1, p0, Le/a/c/a/c/f/n;->c:I

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Le/a/c/c0/o;->g0(I)V

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Le/a/c/c0/o;->o(J)V

    .line 8
    iget-object v0, p0, Le/a/c/a/c/f/n;->d:Le/a/c/r/d/c;

    iget-object v1, p0, Le/a/c/a/c/f/n;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Le/a/c/r/d/c;->b(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Le/a/c/a/c/f/n;->b:Le/a/c/a/c/f/o;

    .line 10
    iget-object v0, v0, Le/a/c/a/c/f/o;->d:Le/a/c/e/c;

    .line 11
    iget-object v1, p0, Le/a/c/a/c/f/n;->d:Le/a/c/r/d/c;

    invoke-virtual {v1}, Le/a/c/r/d/c;->a()Le/a/c/r/d/b;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/c/e/c;->a(Le/a/c/r/d/b;)V

    .line 12
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
