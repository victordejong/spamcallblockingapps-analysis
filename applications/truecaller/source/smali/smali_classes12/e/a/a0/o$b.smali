.class public final Le/a/a0/o$b;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a0/o;->c(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.spamcategories.SpamCategoryFetcherImpl"
    f = "SpamCategoryFetcher.kt"
    l = {
        0x1a
    }
    m = "getAllByContact"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/a0/o;


# direct methods
.method public constructor <init>(Le/a/a0/o;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/a0/o$b;->f:Le/a/a0/o;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/a0/o$b;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/a0/o$b;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/a0/o$b;->e:I

    iget-object p1, p0, Le/a/a0/o$b;->f:Le/a/a0/o;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Le/a/a0/o;->c(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
