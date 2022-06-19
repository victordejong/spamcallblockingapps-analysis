.class public final Le/a/n/o;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/backup/BackupResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/n/p;

.field public final synthetic c:Ljava/io/File;


# direct methods
.method public constructor <init>(Le/a/n/p;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Le/a/n/o;->b:Le/a/n/p;

    iput-object p2, p0, Le/a/n/o;->c:Ljava/io/File;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/n/o;->b:Le/a/n/p;

    iget-object v1, p0, Le/a/n/o;->c:Ljava/io/File;

    .line 2
    invoke-virtual {v0, v1}, Le/a/n/p;->p(Ljava/io/File;)Lcom/truecaller/backup/BackupResult;

    move-result-object v0

    return-object v0
.end method
