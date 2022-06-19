.class public final Le/m/a/c/p1/c0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/p1/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field public final a:Le/m/a/c/p1/c0$f;


# direct methods
.method public constructor <init>(Le/m/a/c/p1/c0$f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/p1/c0$g;->a:Le/m/a/c/p1/c0$f;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Le/m/a/c/p1/c0$g;->a:Le/m/a/c/p1/c0$f;

    check-cast v0, Le/m/a/c/l1/s;

    .line 2
    iget-object v1, v0, Le/m/a/c/l1/s;->s:[Le/m/a/c/l1/v;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    const/4 v6, 0x1

    .line 3
    invoke-virtual {v5, v6}, Le/m/a/c/l1/v;->p(Z)V

    .line 4
    iget-object v6, v5, Le/m/a/c/l1/v;->f:Le/m/a/c/f1/c;

    if-eqz v6, :cond_0

    .line 5
    invoke-interface {v6}, Le/m/a/c/f1/c;->release()V

    .line 6
    iput-object v4, v5, Le/m/a/c/l1/v;->f:Le/m/a/c/f1/c;

    .line 7
    iput-object v4, v5, Le/m/a/c/l1/v;->e:Lcom/google/android/exoplayer2/Format;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, v0, Le/m/a/c/l1/s;->k:Le/m/a/c/l1/s$b;

    .line 9
    iget-object v1, v0, Le/m/a/c/l1/s$b;->b:Le/m/a/c/g1/h;

    if-eqz v1, :cond_2

    .line 10
    invoke-interface {v1}, Le/m/a/c/g1/h;->release()V

    .line 11
    iput-object v4, v0, Le/m/a/c/l1/s$b;->b:Le/m/a/c/g1/h;

    :cond_2
    return-void
.end method
