.class public final Le/a/n/p$g;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/p;->o(Ljava/lang/String;ZLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.backup.BackupManagerImplV2"
    f = "BackupManagerImplV2.kt"
    l = {
        0x9f,
        0xa2,
        0xb0,
        0xb2,
        0xb3,
        0xb6,
        0xb6,
        0xba
    }
    m = "restoreDatabase"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/n/p;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Z


# direct methods
.method public constructor <init>(Le/a/n/p;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/n/p$g;->f:Le/a/n/p;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Le/a/n/p$g;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/n/p$g;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/n/p$g;->e:I

    iget-object p1, p0, Le/a/n/p$g;->f:Le/a/n/p;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v0, p0}, Le/a/n/p;->o(Ljava/lang/String;ZLs1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
