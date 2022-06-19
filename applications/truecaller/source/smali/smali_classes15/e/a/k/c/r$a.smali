.class public final Le/a/k/c/r$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/c/r;-><init>(Ls1/w/f;Landroid/content/Context;Le/a/k/c/s1;Le/a/k/b/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/m/a/c/p1/h0/v;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/k/c/r;


# direct methods
.method public constructor <init>(Le/a/k/c/r;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/r$a;->b:Le/a/k/c/r;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/k/c/r$a;->b:Le/a/k/c/r;

    .line 2
    iget-object v0, v0, Le/a/k/c/r;->g:Le/a/k/c/s1;

    .line 3
    check-cast v0, Le/a/k/c/a;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Ljava/io/File;

    iget-object v0, v0, Le/a/k/c/a;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    const-string v2, "VideoCallerId/VideoCache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    new-instance v0, Le/m/a/c/p1/h0/v;

    .line 7
    new-instance v2, Le/m/a/c/p1/h0/t;

    const-wide/32 v3, 0x3200000

    invoke-direct {v2, v3, v4}, Le/m/a/c/p1/h0/t;-><init>(J)V

    .line 8
    iget-object v3, p0, Le/a/k/c/r$a;->b:Le/a/k/c/r;

    .line 9
    iget-object v3, v3, Le/a/k/c/r;->a:Ls1/g;

    invoke-interface {v3}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/c/d1/c;

    .line 10
    invoke-direct {v0, v1, v2, v3}, Le/m/a/c/p1/h0/v;-><init>(Ljava/io/File;Le/m/a/c/p1/h0/h;Le/m/a/c/d1/b;)V

    return-object v0
.end method
