.class public final Le/a/a/o/o$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/o/o;->Ij(JJZLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.storagemanager.StorageManagerPresenter"
    f = "StorageManagerPresenter.kt"
    l = {
        0x6d
    }
    m = "showTruecallerMedia"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/a/o/o;

.field public g:Ljava/lang/Object;

.field public h:J

.field public i:Z


# direct methods
.method public constructor <init>(Le/a/a/o/o;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a/o/o$a;->f:Le/a/a/o/o;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Le/a/a/o/o$a;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/a/o/o$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/a/o/o$a;->e:I

    iget-object v0, p0, Le/a/a/o/o$a;->f:Le/a/a/o/o;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Le/a/a/o/o;->Ij(JJZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
