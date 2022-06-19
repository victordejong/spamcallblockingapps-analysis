.class public final Le/a/d/x/r/k$e;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/x/r/k;->k(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.manager.rtm.RtmChannelImpl"
    f = "RtmChannel.kt"
    l = {
        0x1a7,
        0x4c,
        0x4a,
        0x4b
    }
    m = "join"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/d/x/r/k;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/d/x/r/k;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/x/r/k$e;->f:Le/a/d/x/r/k;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/d/x/r/k$e;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/d/x/r/k$e;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/d/x/r/k$e;->e:I

    iget-object p1, p0, Le/a/d/x/r/k$e;->f:Le/a/d/x/r/k;

    invoke-virtual {p1, p0}, Le/a/d/x/r/k;->k(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
