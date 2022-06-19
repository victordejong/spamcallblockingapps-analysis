.class public final Le/a/c/g/y/p$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/g/y/p;->f(Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ls1/w/k/a/c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.categorizer.datasource.MultiClassMetadataRepositoryImpl"
    f = "MultiClassMetadataRepository.kt"
    l = {
        0x70
    }
    m = "ensureSeed"
.end annotation


# instance fields
.field public d:Ljava/lang/Object;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/c/g/y/p;

.field public g:I


# direct methods
.method public constructor <init>(Le/a/c/g/y/p;Ls1/w/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/g/y/p;",
            "Ls1/w/d<",
            "-",
            "Le/a/c/g/y/p$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Le/a/c/g/y/p$a;->f:Le/a/c/g/y/p;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/c/g/y/p$a;->e:Ljava/lang/Object;

    iget p1, p0, Le/a/c/g/y/p$a;->g:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/c/g/y/p$a;->g:I

    iget-object p1, p0, Le/a/c/g/y/p$a;->f:Le/a/c/g/y/p;

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0, p0}, Le/a/c/g/y/p;->f(Ls1/z/b/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
