.class public final Le/a/c/p/c$b;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/p/c;->a(Ljava/util/List;Le/a/c/i/g/c;ZLs1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.infocards.InfoCardRepositoryImpl"
    f = "InfoCardRepository.kt"
    l = {
        0x3f,
        0xf0
    }
    m = "getInfoCards"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/c/p/c;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/c/p/c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/p/c$b;->f:Le/a/c/p/c;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Le/a/c/p/c$b;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/c/p/c$b;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/c/p/c$b;->e:I

    iget-object p1, p0, Le/a/c/p/c$b;->f:Le/a/c/p/c;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v0, v1, p0}, Le/a/c/p/c;->a(Ljava/util/List;Le/a/c/i/g/c;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
