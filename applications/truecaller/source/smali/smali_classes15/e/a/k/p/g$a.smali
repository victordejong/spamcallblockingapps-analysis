.class public final Le/a/k/p/g$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/p/g;->Ij(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.upload.VideoUploadServicePresenter"
    f = "VideoUploadServicePresenter.kt"
    l = {
        0x34,
        0x44,
        0x44
    }
    m = "uploadVideo"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/k/p/g;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/k/p/g;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/p/g$a;->f:Le/a/k/p/g;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/k/p/g$a;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/k/p/g$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/k/p/g$a;->e:I

    iget-object p1, p0, Le/a/k/p/g$a;->f:Le/a/k/p/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p0}, Le/a/k/p/g;->Ij(Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
