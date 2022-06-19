.class public final Le/a/k/n/g/b;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.db.outgoingvideo.OutgoingVideoIdDao$DefaultImpls"
    f = "OutgoingVideoIdDao.kt"
    l = {
        0x46,
        0x47
    }
    m = "addSingleVideo"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/k/n/g/c;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/k/n/g/c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/n/g/b;->f:Le/a/k/n/g/c;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/k/n/g/b;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/k/n/g/b;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/k/n/g/b;->e:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Le/a/p5/s0/g;->g(Le/a/k/n/g/c;Le/a/k/n/g/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
