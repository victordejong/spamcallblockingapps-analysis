.class public final Le/a/c/a0/k$a$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a0/k$a;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.source.BankDataSourceImpl$$special$$inlined$map$3$2"
    f = "BankDataSource.kt"
    l = {
        0x88,
        0x89
    }
    m = "emit"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public f:Ljava/lang/Object;

.field public final synthetic g:Le/a/c/a0/k$a;


# direct methods
.method public constructor <init>(Le/a/c/a0/k$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a0/k$a$a;->g:Le/a/c/a0/k$a;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/c/a0/k$a$a;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/c/a0/k$a$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/c/a0/k$a$a;->e:I

    iget-object p1, p0, Le/a/c/a0/k$a$a;->g:Le/a/c/a0/k$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Le/a/c/a0/k$a;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
