.class public final Le/a/c/b0/f$b;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/b0/f;->b(Ljava/lang/String;IJLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.updates.UpdatesRepositoryImpl"
    f = "UpdatesRepository.kt"
    l = {
        0xa3
    }
    m = "getAllUpdatesInCategory"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/c/b0/f;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/c/b0/f;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/b0/f$b;->f:Le/a/c/b0/f;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Le/a/c/b0/f$b;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/c/b0/f$b;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/c/b0/f$b;->e:I

    iget-object v0, p0, Le/a/c/b0/f$b;->f:Le/a/c/b0/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Le/a/c/b0/f;->b(Ljava/lang/String;IJLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
