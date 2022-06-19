.class public final Le/a/a3/b$d;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a3/b;->a(Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.blocking.BlockManagerImpl"
    f = "BlockManagerImpl.kt"
    l = {
        0x16
    }
    m = "findFilterActionForNumber"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/a3/b;


# direct methods
.method public constructor <init>(Le/a/a3/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a3/b$d;->f:Le/a/a3/b;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Le/a/a3/b$d;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/a3/b$d;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/a3/b$d;->e:I

    iget-object p1, p0, Le/a/a3/b$d;->f:Le/a/a3/b;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v0, v1, p0}, Le/a/a3/b;->a(Ljava/lang/String;Ljava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
