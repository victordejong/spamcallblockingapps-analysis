.class public final Le/a/c/g/y/i$c;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/g/y/i;->p(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.categorizer.datasource.InsightsCategorizerRepositoryImpl"
    f = "InsightsCategorizerRepositoryImpl.kt"
    l = {
        0x52,
        0xc9,
        0x61
    }
    m = "updateCategorizerOverNetwork"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/c/g/y/i;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:J


# direct methods
.method public constructor <init>(Le/a/c/g/y/i;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/g/y/i$c;->f:Le/a/c/g/y/i;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/c/g/y/i$c;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/c/g/y/i$c;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/c/g/y/i$c;->e:I

    iget-object p1, p0, Le/a/c/g/y/i$c;->f:Le/a/c/g/y/i;

    invoke-virtual {p1, p0}, Le/a/c/g/y/i;->p(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
