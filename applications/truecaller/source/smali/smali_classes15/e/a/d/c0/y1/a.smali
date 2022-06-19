.class public final Le/a/d/c0/y1/a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.util.availability.VoipAvailabilityUtil$DefaultImpls"
    f = "VoipAvailabilityUtil.kt"
    l = {
        0x36
    }
    m = "isNumberVoipCapable"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/d/c0/y1/b;


# direct methods
.method public constructor <init>(Le/a/d/c0/y1/b;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/y1/a;->f:Le/a/d/c0/y1/b;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Le/a/d/c0/y1/a;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/d/c0/y1/a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/d/c0/y1/a;->e:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p0}, Le/a/p5/s0/g;->v0(Le/a/d/c0/y1/b;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
