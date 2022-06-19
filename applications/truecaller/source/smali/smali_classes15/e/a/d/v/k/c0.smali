.class public final Le/a/d/v/k/c0;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.groupcall.action.InviteToGroupCallKt"
    f = "InviteToGroupCall.kt"
    l = {
        0xe6
    }
    m = "updateState"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ls1/w/d;)V
    .locals 0

    invoke-direct {p0, p1}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/d/v/k/c0;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/d/v/k/c0;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/d/v/k/c0;->e:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Le/a/p5/s0/g;->V1(Le/a/d/c0/r;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
