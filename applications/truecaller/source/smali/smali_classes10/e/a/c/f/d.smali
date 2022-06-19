.class public final Le/a/c/f/d;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.binders.DomainSchemaBinderKt"
    f = "DomainSchemaBinder.kt"
    l = {
        0x1e,
        0x20,
        0x25
    }
    m = "toUpdateOrDomainSchema"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ls1/w/d;)V
    .locals 0

    invoke-direct {p0, p1}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/c/f/d;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/c/f/d;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/c/f/d;->e:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p0}, Le/a/m0/a1$k;->G1(Lcom/truecaller/insights/models/pdo/ExtendedPdo;Le/a/c/w/o0/g;Lcom/truecaller/insights/models/smartcards/ActionStateEntity;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
